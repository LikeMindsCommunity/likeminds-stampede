# Create kubernetes secret for caravan-rabbitmq
resource "kubernetes_secret_v1" "rabbitmq-user-secret" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = local.rabbitmq_user_secret_name
    namespace = var.namespace_name
  }

  data = {
    username = var.caravan_rabbitmq_username
    password = var.caravan_rabbitmq_password
  }

}

# Create kubernetes deployment for caravan-rabbitmq
resource "kubernetes_deployment" "caravan-rabbitmq-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace, kubernetes_secret_v1.rabbitmq-user-secret]

  metadata {
    name = var.caravan_rabbitmq_app_name
    namespace = var.namespace_name
    labels = {
      app = var.caravan_rabbitmq_app_name
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = var.caravan_rabbitmq_app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.caravan_rabbitmq_app_name
        }
      }

      spec {
        image_pull_secrets {
          name = local.image_pull_secrets_name
        }
        container {
          image = var.caravan_rabbitmq_app_docker_image
          name  = var.caravan_rabbitmq_app_name
          port {
            container_port = local.http_port_5672
          }
          port {
            container_port = local.http_port_15672
          }
          env {
            name = local.rabbitmq_default_user_key
            value_from {
              secret_key_ref {
                name = local.rabbitmq_user_secret_name
                key = "username"
              }
            }
          }
          env {
            name = local.rabbitmq_default_password_key
            value_from {
              secret_key_ref {
                name = local.rabbitmq_user_secret_name
                key = "password"
              }
            }
          }
        }
      }
    }
  }
}

# Create kubernetes service for caravan-rabbitmq
resource "kubernetes_service" "caravan-rabbitmq-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name = var.caravan_rabbitmq_app_name
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = var.caravan_rabbitmq_app_name
    }
    port {
      name = local.http_port_service
      port        = local.http_port_15672
      target_port = local.http_port_15672
    }
    port {
      name = local.amqp_port_service
      port = local.http_port_5672
      target_port = local.http_port_5672
    }
    type = local.type_cluster_ip
  }
}

resource "kubernetes_ingress_v1" "caravan-rabbitmq-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = var.caravan_rabbitmq_app_name
    namespace = var.namespace_name
    annotations = {
      "kubernetes.io/ingress.allow-http": "true"
    }
  }

  spec {
    ingress_class_name = local.ingress_class_name
    rule {
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.caravan_rabbitmq_app_name
              port {
                number = local.http_port_15672
              }
            }
          }
        }
      }
    }
  }
}
