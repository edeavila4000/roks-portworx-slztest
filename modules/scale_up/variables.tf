##############################################################################
# Account Variables
##############################################################################
variable "ibmcloud_api_key" {
  description = "Get the ibmcloud api key from https://cloud.ibm.com/iam/apikeys"
  type        = string
  default     = "qrqIdrlSVIW0lbuUZmkpxjLUFrMdU0bl6hlu-JXzOjPv"
}

variable "cluster" {
  description = "Name of existing roks cluster"
  type        = string
  default     = "mycluster-us-east-1-bx2.4x16"
}

variable "worker_pool_name" {
  description = "The name of the worker pool."
  type        = string
  default     = "scale_up_pool"
}

variable "flavor" {
  description = "The flavor of the worker node."
  type        = string
  default     = "bx2.16x64"
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = "r014-e3632d01-005e-45eb-8833-426da0566493"
}

variable "worker_count" {
  description = "The number of worker nodes per zone in the worker pool."
  type        = number
  default     = 1
}

variable "entitlement" {
  description = "If you want to use the included OCP license entitlement with this OpenShift cluster, select the Apply my Cloud Pak OCP entitlement option. For all other cases you must choose the default Purchase additional licenses option."
  type        = string
}

variable "name" {
  description = "The name of the zone."
  type        = string
  default     = "us-east-1"
}

variable "subnet_id" {
  description = "The subnet that you want to use for your worker pool."
  type        = string
  default     = "0757-bd44838b-bc32-4d8d-9227-3ebbea65990e"
}

variable "resource_group" {
  description = "Resource group of existing cluster"
  type        = string
  default     = "slz-rg"
}


