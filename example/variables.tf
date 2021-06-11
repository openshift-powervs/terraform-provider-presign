variable "resource_group_name" {
  description = "IBM Cloud Resource group name"
}

variable "cos_name" {
  description = "IBM COS name"
}

variable "bucket_name" {
  description = "IBM COS bucket name"
}

variable "bucket_storage_class" {
  description = "Bucket Storage Class"
}

variable "bucket_region" {
  description = "Region of the bucket"
}

variable "object_name" {
  description = "Object name to be used for generating the presigned URL"
}
