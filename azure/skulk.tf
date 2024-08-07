# Create kubernetes deployment for skulk
resource "kubernetes_deployment" "skulk-load" {
  count = var.enable_skulk ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.skulk_app_name
    namespace = var.namespace_name
    labels = {
      app = var.skulk_app_name
    }
  }

  spec {
    replicas = var.skulk_pods

    selector {
      match_labels = {
        app = var.skulk_app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.skulk_app_name
        }
      }

      spec {
        image_pull_secrets {
            name = local.image_pull_secrets_name
        }
        container {
          image = var.skulk_app_docker_image
          name  = var.skulk_app_name

          resources {
            limits = {
              cpu    = var.skulk_cpu
              memory = var.skulk_memory
            }
          }
        }
      }
    }
  }
}

# Create kubernetes service for skulk
resource "kubernetes_service" "skulk-load" {
  count = var.enable_skulk ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.skulk_app_name
    namespace = var.namespace_name
  }

  spec {
    selector = {
      app = var.skulk_app_name
    }
    port {
      name        = local.http_port_service
      port        = local.http_port_8080
      target_port = local.http_port_8080
    }
    type = local.type_cluster_ip
  }
}

# Create kubernetes ingress for skulk
resource "kubernetes_ingress_v1" "skulk-load" {
  count = var.enable_skulk ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = var.skulk_app_name
    namespace = var.namespace_name
    annotations = {
        "kubernetes.io/ingress.allow-http": "true"
    }
  }

  spec {
    ingress_class_name = local.ingress_class_name
    rule {
      host = local.skulk_load_host
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.skulk_app_name
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
