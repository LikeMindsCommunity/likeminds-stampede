# Purpose: This file is used to create the resources for the Kettle application.

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
            name = "acr-secret"
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

resource "kubernetes_service" "kettle-service" {
  count = var.enable_kettle ? 1 : 0
  depends_on = [data.kubernetes_namespace.namespace]
  metadata {
    name      = var.kettle_app_name
    namespace = var.namespace_name
    annotations = {
    #   "service.beta.kubernetes.io/azure-load-balancer-internal" = "true"
    }
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
    type = "ClusterIP"
  }
}

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
    ingress_class_name = "webapprouting.kubernetes.azure.com"
    rule {
    #   host = "kettle-loadtest.likeminds.community"
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
    # tls {
    #    secret_name = "app-deploy-load-secret"
    # }
  }
}