variable "cluster_name" {
  
}

variable "cluster_version" {
  
}

variable "vpc_id" {
  
}

variable "subnet_ids" {
  
}

variable "node_groups" {
  description = "EKS node group configuration"
  type = map(object({
    instance_types = list(string)
    capacity_type = string
    scaling_config = object({
      desired_size = number
      max_size = number
      min_size = number
    })
  }))
}