# =====================================================================
# START - UPDATE THIS SECTION WITH OWN PARAMETERS

# provider
api_fingerprint = "30:19:XXX:ba:ee"

api_private_key_path = "~/.oci/4-4-2023-rsa-key.pem"

home_region = "frankfurt" # Use short form e.g. ashburn from location column https://docs.oracle.com/en-us/iaas/Content/General/Concepts/regions.htm

tenancy_id = "ocid1.tenancy.oc1..aaaaaaaabh2afXXXoyvq"

user_id = "ocid1.user.oc1..aaaaaaaavgrv6XXX23aq"

compartment_id = "ocid1.compartment.oc1..aaaaaaaabgsvXXXvnuq"

# ssh
ssh_private_key_path = "~/.ssh/id_rsa"
ssh_public_key_path  = "~/.ssh/id_rsa.pub"

# END - UPDATE THIS SECTION WITH OWN PARAMETERS
# =====================================================================

# clusters
## For regions, # Use short form e.g. ashburn from location column https://docs.oracle.com/en-us/iaas/Content/General/Concepts/regions.htm
## VCN, Pods and services clusters must not overlap with each other and with those of other clusters.
clusters = {
  c1 = { region = "amsterdam", vcn = "10.1.0.0/16", pods = "10.201.0.0/16", services = "10.101.0.0/16", enabled = true }
  c2 = { region = "sanjose", vcn = "10.2.0.0/16", pods = "10.202.0.0/16", services = "10.102.0.0/16", enabled = true }
  c3 = { region = "dubai", vcn = "10.3.0.0/16", pods = "10.203.0.0/16", services = "10.103.0.0/16", enabled = true }
}

kubernetes_version = "v1.28.2"

cluster_type = "basic"

oke_control_plane = "private"

nodepools = {
  np1 = {
    shape            = "VM.Standard.E4.Flex",
    ocpus            = 2,
    memory           = 64,
    size             = 2,
    boot_volume_size = 150,
  }
}
