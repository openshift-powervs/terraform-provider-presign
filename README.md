# terraform-provider-presign

### Build and copy in the local plugin folder

```shell
$ mkdir -p  ~/.terraform.d/plugins/$(go env GOOS)_$(go env GOARCH)
$ go build .;cp terraform-provider-presign ~/.terraform.d/plugins/$(go env GOOS)_$(go env GOARCH)/terraform-provider-presign_v0.0.1
```