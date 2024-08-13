# Purpose: Define the variables that will be used in the Terraform configuration.
variable "resource_group_name" {
  description = "The name of the resource group containing the AKS cluster."
  type        = string
  default     = "likeminds-load-resource-group"
}

variable "aks_cluster_name" {
  description   = "The name of the AKS cluster."
  type          = string
  default       = "likeminds-load-k8s-cluster"
}

variable "resource_location" {
  description = "value of the resource group location."
  type        = string
  default     = "centralindia"
}

variable "namespace_name" {
  description = "The name of the Kubernetes namespace."
  type        = string
  default     = "likeminds-load"
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "likeminds-load-virtual-network-central-india"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "likeminds-load-app-subnet"
}


## Kettle Variables
variable "enable_kettle" {
  description = "If to enable the Kettle app."
  type        = bool
  default     = false
}

variable "kettle_app_name" {
  description = "The name of the Kettle app."
  type        = string
  default     = "kettle-load"
}

variable "kettle_app_docker_image" {
  description = "The Docker image for the Kettle app."
  type        = string
  default     = "likemindsloadregistry.azurecr.io/likeminds-authentication/kettle"
}

variable "kettle_cpu" {
  description = "The CPU limit for the Kettle app."
  type        = string
  default     = "0.5"
}

variable "kettle_memory" {
  description = "The memory limit for the Kettle app."
  type        = string
  default     = "1Gi"
}

variable "kettle_pods" {
  description = "The number of pods for the Kettle app."
  type        = number
  default     = 1
}

## Caravan Variables
variable "enable_caravan" {
  description = "if to enable caravan app"
  type       = bool
  default    = false
}

variable "caravan_app_name" {
  description = "The name of the caravan app"
  type        = string
  default     = "caravan-load"
}

variable "caravan_app_docker_image" {
  description = "The docker image of caravan app"
  type = string
  default = "likemindsloadregistry.azurecr.io/togther/caravan"
}

variable "caravan_cpu" {
  description = "caravan cpu"
  type        = string
  default     = "0.5"
}

variable "caravan_memory" {
  description = "caravan memory"
  type        = string
  default     = "1Gi"
}

variable "caravan_pods" {
  description = "caravan pods count"
  type        = number
  default     = 1
}

## Caravan Celery Variables
variable "caravan_celery_app_name" {
  description = "Name of the caravan celery app"
  type = string
  default = "caravan-celery-load"
}

variable "caravan_celery_app_docker_image" {
  description = "The docker image of caravan celery app"
  type = string
  default = "likemindsloadregistry.azurecr.io/togther/caravan-celery"
}

variable "caravan_celery_cpu" {
  description = "caravan celery cpu"
  type = string
  default = "0.5"
}

variable "caravan_celery_memory" {
  description = "caravan celery memory"
  type = string
  default = "1Gi"
}

variable "caravan_celery_pods" {
  description = "caravan celery pods count"
  type = number
  default = 1
}

variable "caravan_celery_broker_url" {
  description = "caravan celery broker url"
  type = string
  default = "amqp://caravan-load-user:caravan-load-user-password@caravan-rabbitmq-load:5672/caravan-load-vhost"
}

## Caravan RabbitMQ Variables
variable "caravan_rabbitmq_app_name" {
  description = "The name of the caravan rabbitmq app"
  type = string
  default = "caravan-rabbitmq-load"
}

variable "caravan_rabbitmq_app_docker_image" {
  description = "caravan rabbitmq app docker image"
  type = string
  default = "likemindsloadregistry.azurecr.io/togther/caravan-rabbitmq"
}

variable "caravan_rabbitmq_username" {
  description = "caravan rabbitmq username"
  type = string
  default = "caravan-load-user"
}

variable "caravan_rabbitmq_password" {
  description = "caravan rabbitmq password"
  type = string
  default = "caravan-load-user-password"
}

## Swarm Variables
variable "enable_swarm" {
  description = "If to enable the Swarm app."
  type        = bool
  default     = false
}

variable "swarm_app_name" {
  description = "The name of the Swarm app."
  type        = string
  default     = "swarm-load"
}

variable "swarm_app_docker_image" {
  description = "The Docker image for the Swarm app."
  type        = string
  default     = "likemindsloadregistry.azurecr.io/likeminds-swarm/swarm"
}

variable "swarm_cpu" {
  description = "The CPU limit for the Swarm app."
  type        = string
  default     = "0.5"
}

variable "swarm_memory" {
  description = "The memory limit for the Swarm app."
  type        = string
  default     = "1Gi"
}

variable "swarm_pods" {
  description = "The number of pods for the Swarm app."
  type        = number
  default     = 1
}


variable "swarm_worker_app_name" {
  description = "The name of the Swarm worker app."
  type        = string
  default     = "swarm-worker-load"
}

variable "swarm_worker_app_docker_image" {
  description = "The Docker image for the Swarm worker app."
  type        = string
  default     = "likemindsloadregistry.azurecr.io/likeminds-swarm/swarm"
}

variable "swarm_worker_cpu" {
  description = "The CPU limit for the Swarm worker app."
  type        = string
  default     = "0.5"
}

variable "swarm_worker_memory" {
  description = "The memory limit for the Swarm worker app."
  type        = string
  default     = "1Gi"
}

variable "swarm_worker_pods" {
  description = "The number of pods for the Swarm worker app."
  type        = number
  default     = 1
}

## Skulk Variables
variable "enable_skulk" {
  description = "if to enable skulk app"
  type       = bool
  default    = false
}

variable "skulk_app_name" {
  description = "The name of the skulk app"
  type        = string
  default     = "skulk-load"
}

variable "skulk_app_docker_image" {
  description = "The docker image of skulk app"
  type = string
  default = "likemindsloadregistry.azurecr.io/likeminds-subscription/skulk"
}

variable "skulk_cpu" {
  description = "skulk cpu"
  type        = string
  default     = "0.5"
}

variable "skulk_memory" {
  description = "skulk memory"
  type        = string
  default     = "1Gi"
}

variable "skulk_pods" {
  description = "skulk pods count"
  type        = number
  default     = 1
}
