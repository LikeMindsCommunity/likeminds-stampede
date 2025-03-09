# Create kubernetes deployment for swarm
resource "kubernetes_deployment" "swarm-load" {
  count = var.enable_swarm ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.swarm_app_name
    namespace = var.namespace_name
    labels = {
      app = var.swarm_app_name
    }
  }

  spec {
    replicas = var.swarm_pods

    selector {
      match_labels = {
        app = var.swarm_app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.swarm_app_name
        }
      }

      spec {
        image_pull_secrets {
          name = local.image_pull_secrets_name
        }
        container {
          image = var.swarm_app_docker_image
          name  = var.swarm_app_name

          resources {
            limits = {
              cpu    = var.swarm_cpu
              memory = var.swarm_memory
            }
          }
        }
        toleration {
          key = "CriticalAddonsOnly"
          operator = "Equal"
          value = "true"
          effect = "NoSchedule"
        }
      }
    }
  }
}

# Create kubernetes service for swarm
resource "kubernetes_service" "swarm-load" {
  count = var.enable_swarm ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.swarm_app_name
    namespace = var.namespace_name
  }

  spec {
    selector = {
      app = var.swarm_app_name
    }
    port {
      name        = local.http_port_service
      port        = local.http_port_8080
      target_port = local.http_port_8080
    }
    type = local.type_cluster_ip
  }
}

# Create kubernetes ingress for swarm
resource "kubernetes_ingress_v1" "swarm-load" {
  count = var.enable_swarm ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = var.swarm_app_name
    namespace = var.namespace_name
    annotations = {
      "kubernetes.io/ingress.allow-http": "true"
    }
  }

  spec {
    ingress_class_name = local.ingress_class_name
    rule {
      host = local.swarm_load_host
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.swarm_app_name
              port {
                number = local.http_port_8080
              }
            }
          }
        }
      }
    }

    tls {
      secret_name = local.load_domain_tls_secret_name
    }
  }
}
