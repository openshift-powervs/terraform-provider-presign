## How to run

### Prerequisite
Make sure to have the plugin placed in the proper [directory](https://www.terraform.io/docs/cli/config/config-file.html#implied-local-mirror-directories).

### Steps
```shell
# set the API IBM API key:
$ export IC_API_KEY="ibmcloud_api_key"
$ terraform init
$ terraform plan
$ terraform apply -auto-approve
```