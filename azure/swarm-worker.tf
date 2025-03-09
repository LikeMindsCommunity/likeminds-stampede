# Create kubernetes deployment for swarm worker
resource "kubernetes_deployment" "swarm-worker-load" {
  count = var.enable_swarm ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.swarm_worker_app_name
    namespace = var.namespace_name
    labels = {
      app = var.swarm_worker_app_name
    }
  }

  spec {
    replicas = var.swarm_worker_pods

    selector {
      match_labels = {
        app = var.swarm_worker_app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.swarm_worker_app_name
        }
      }

      spec {
        image_pull_secrets {
          name = local.image_pull_secrets_name
        }
        container {
          image = var.swarm_worker_app_docker_image
          name  = var.swarm_worker_app_name

          resources {
            limits = {
              cpu    = var.swarm_worker_cpu
              memory = var.swarm_worker_memory
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

# Create kubernetes service for swarm worker
resource "kubernetes_service" "swarm-worker-load" {
  count = var.enable_swarm ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace]

  metadata {
    name      = var.swarm_worker_app_name
    namespace = var.namespace_name
  }

  spec {
    selector = {
      app = var.swarm_worker_app_name
    }
    port {
      name        = local.http_port_service
      port        = local.http_port_8080
      target_port = local.http_port_8080
    }
    type = local.type_cluster_ip
  }
}
