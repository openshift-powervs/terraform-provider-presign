data "ibm_resource_group" "cos_group" {
  name = var.resource_group_name
}

data "ibm_resource_instance" "cos_instance" {
  name              = var.cos_name
  resource_group_id = data.ibm_resource_group.cos_group.id
  service           = "cloud-object-storage"
}

resource "ibm_resource_key" "cos_service_cred" {
  name                 = "cos-service-cred"
  role                 = "Reader"
  resource_instance_id = data.ibm_resource_instance.cos_instance.id
  parameters           = { HMAC = true }
}

resource "presign" "myurl" {
  access_key_id = ibm_resource_key.cos_service_cred.credentials["cos_hmac_keys.access_key_id"]
  secret_access_key = ibm_resource_key.cos_service_cred.credentials["cos_hmac_keys.secret_access_key"]
  bucket_name = var.bucket_name
  key = var.object_name
  region_location = var.bucket_region
  storage_class = var.bucket_storage_class
}
