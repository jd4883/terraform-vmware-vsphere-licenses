resource vsphere_license license {
  for_each    = var.licenses
  license_key = tostring(each.value)
  labels      = {
	VpxClientLicenseLabel = tostring(replace(each.key, "_", " "))
	Workflow              = tostring(replace(each.key, "_", " "))
  }
}

variable licenses {type = map(string)}

output licenses {value = vsphere_license.license}


