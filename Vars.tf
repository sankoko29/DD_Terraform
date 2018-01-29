variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "private_key_password" {}
variable "region" {}
variable "ssh_public_key" {}

provider "oci" {
  alias                = "phx"
  tenancy_ocid         = "${var.tenancy_ocid}"
  user_ocid            = "${var.user_ocid}"
  fingerprint          = "${var.fingerprint}"
  private_key_path     = "${var.private_key_path}"
  private_key_password = "${var.private_key_password}"
  ssh_public_key       = "${var.ssh_public_key}"
  region               = "us-phoenix-1"
  disable_auto_retries = "true"
}

provider "oci" {
  alias                = "iad"
  tenancy_ocid         = "${var.tenancy_ocid}"
  user_ocid            = "${var.user_ocid}"
  fingerprint          = "${var.fingerprint}"
  private_key_path     = "${var.private_key_path}"
  private_key_password = "${var.private_key_password}"
  ssh_public_key       = "${var.ssh_public_key}"
  region               = "us-ashburn-1"
  disable_auto_retries = "true"
}

variable "vcn1-iad" {
  default = "10.100.0.0/16"
}

variable "vcn2-iad" {
  default = "10.101.0.0/16"
}

variable "vcn3-iad" {
  default = "10.102.0.0/16"
}

variable "compartment_ocid" {
  default = "Terraform"
}

variable "AD" {
  default = "1"
}

variable "InstanceShape" {
  default = "VM.Standard1.8"
}

variable "InstanceImageOCID" {
  type = "map"

  default = {
    // Oracle-provided image "Oracle-Linux-7.4-2017.12.18-0"
    // See https://docs.us-phoenix-1.oraclecloud.com/Content/Resources/Assets/OracleProvidedImageOCIDs.pdf
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaasc56hnpnx7swoyd2fw5gyvbn3kcdmqc2guiiuvnztl2erth62xnq"

    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaaxrqeombwty6jyqgk3fraczdd63bv66xgfsqka4ktr7c57awr3p5a"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaayxmzu6n5hsntq4wlffpb4h6qh6z3uskpbm5v3v4egqlqvwicfbyq"
  }
}
