resource "oci_identity_compartment" "Terraform" {
  provider    = "oci.iad"
  name        = "Terraform"
  description = "Terraform Compartment"
}
