# Create kubernetes deployment for kettle
resource "kubernetes_deployment" "kettle-deployment" {
  count = var.enable_kettle ? 1 : 0
  depends_on = [data.kubernetes_namespace.namespace]
  metadata {
    name      = var.kettle_app_name
    namespace = var.namespace_name
    labels = {
      app = var.kettle_app_name
    }
  }
  spec {
    replicas = var.kettle_pods
    selector {
      match_labels = {
        app = var.kettle_app_name
      }
    }
    template {
      metadata {
        labels = {
          app = var.kettle_app_name
        }
      }
      spec {
        image_pull_secrets {
            name = local.image_pull_secrets_name
        }
        container {
          image = var.kettle_app_docker_image
          name  = var.kettle_app_name
          resources {
            limits = {
              cpu    = var.kettle_cpu
              memory = var.kettle_memory
            }
          }
        }
      }
    }
  }
}

# Create kubernetes service for kettle
resource "kubernetes_service" "kettle-service" {
  count = var.enable_kettle ? 1 : 0
  depends_on = [data.kubernetes_namespace.namespace]
  metadata {
    name      = var.kettle_app_name
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = var.kettle_app_name
    }
    port {
      name        = local.http_port_service
      port        = local.http_port_8080
      target_port = local.http_port_8080
    }
    port {
      name        = local.http_port_service
      port        = local.http_port_8083
      target_port = local.http_port_8083
    }
    type = local.type_cluster_ip
  }
}

# Create kubernetes ingress for kettle
resource "kubernetes_ingress_v1" "kettle-ingress" {
  count = var.enable_kettle ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace,]
  
  metadata {
    name = var.kettle_app_name
    namespace = var.namespace_name

    annotations = {
        "kubernetes.io/ingress.allow-http": "true"
        # "nginx.ingress.kubernetes.io/ssl-redirect" = "false"
    }
  }

  spec {
    ingress_class_name = local.ingress_class_name
    rule {
      host = local.kettle_load_host
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.kettle_app_name
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

# Create kubernetes ingress for kettle-ws
resource "kubernetes_ingress_v1" "kettle-ws-ingress" {
  count = var.enable_kettle ? 1 : 0

  depends_on = [data.kubernetes_namespace.namespace,]
  
  metadata {
    name = var.kettle_app_name
    namespace = var.namespace_name

    annotations = {
        "kubernetes.io/ingress.allow-http": "true"
        # "nginx.ingress.kubernetes.io/ssl-redirect" = "false"
    }
  }

  spec {
    ingress_class_name = local.ingress_class_name
    rule {
      host = local.kettle_ws_load_host
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.kettle_app_name
              port {
                number = local.http_port_8083
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
