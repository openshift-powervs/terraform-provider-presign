package main

import (
	"github.com/hashicorp/terraform-plugin-sdk/plugin"

	"github.com/openshift/installer/pkg/terraform/exec/plugins/ibms3presign"
)

func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: ibms3presign.Provider,
	})
}
