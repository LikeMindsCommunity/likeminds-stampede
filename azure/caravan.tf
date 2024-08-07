# Create kubernetes deployment for caravan
resource "kubernetes_deployment" "caravan-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.caravan_app_name
    namespace = var.namespace_name
    labels = {
      app = var.caravan_app_name
    }
  }

  spec {
    replicas = var.caravan_pods

    selector {
      match_labels = {
        app = var.caravan_app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.caravan_app_name
        }
      }

      spec {
        image_pull_secrets {
            name = local.image_pull_secrets_name
        }
        container {
          image = var.caravan_app_docker_image
          name  = var.caravan_app_name

          resources {
            limits = {
              cpu    = var.caravan_cpu
              memory = var.caravan_memory
            }
          }
        }
      }
    }
  }
}

# Create kubernetes service for caravan
resource "kubernetes_service" "caravan-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.caravan_app_name
    namespace = var.namespace_name
  }

  spec {
    selector = {
      app = var.caravan_app_name
    }
    port {
      name        = local.http_port_service
      port        = local.http_port_8081
      target_port = local.http_port_8081
    }
    type = local.type_cluster_ip
  }
}

# Create kubernetes ingress for caravan
resource "kubernetes_ingress_v1" "caravan-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = var.caravan_app_name
    namespace = var.namespace_name
    annotations = {
        "kubernetes.io/ingress.allow-http": "true"
    }
  }

  spec {
    ingress_class_name = local.ingress_class_name
    rule {
      host = local.caravan_load_host
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.caravan_app_name
              port {
                number = local.http_port_8081
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