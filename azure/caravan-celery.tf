# Create kubernetes secret for caravan-celery for broker url
resource "kubernetes_secret_v1" "caravan-celery-secret" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = local.caravan_celery_secret_name
    namespace = var.namespace_name
  }

  data = {
    CELERY_BROKER_URL = var.caravan_celery_broker_url
  }

}

# Create kubernetes deployment for caravan-celery
resource "kubernetes_deployment" "caravan-celery-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace, kubernetes_secret_v1.caravan-celery-secret]

  metadata {
    name = var.caravan_celery_app_name
    namespace = var.namespace_name
    labels = {
      app = var.caravan_celery_app_name
    }
  }

  spec {
    replicas = var.caravan_celery_pods

    selector {
      match_labels = {
        app = var.caravan_celery_app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.caravan_celery_app_name
        }
      }

      spec {
        image_pull_secrets {
          name = local.image_pull_secrets_name 
        }
        container {
          image = var.caravan_celery_app_docker_image
          name  = var.caravan_celery_app_name

          resources {
            limits = {
              cpu    = var.caravan_celery_cpu
              memory = var.caravan_celery_memory
            }
          }

          env {
            name = local.broker_url_env_name
            value_from {
              secret_key_ref {
                name = local.caravan_celery_secret_name
                key = local.broker_url_env_name
              }
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

# Create kubernetes service for caravan-celery
resource "kubernetes_service" "caravan-celery-load" {
  count = var.enable_caravan ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]
  
  metadata {
    name = var.caravan_celery_app_name
    namespace = var.namespace_name
  }

  spec {
    selector = {
      app = var.caravan_celery_app_name
    }
    port {
      name = local.http_port_service
      port        = local.http_port_5672
      target_port = local.http_port_5672
    }
    type = local.type_cluster_ip
  }
}
