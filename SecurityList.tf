resource "oci_core_security_list" "SecList_10_100_1" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "SecList_10.100.1"

  // allow outbound tcp traffic on all ports
  ingress_security_rules {
    source   = "0.0.0.0/0"
    protocol = "6"
  }

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }
}

resource "oci_core_security_list" "SecList_10_100_2" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "SecList_10.100.2"

  // allow outbound tcp traffic on all ports
  ingress_security_rules {
    source   = "0.0.0.0/0"
    protocol = "6"
  }

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }
}

resource "oci_core_security_list" "SecList_10_100_3" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "SecList_10.100.3"

  // allow outbound tcp traffic on all ports
  ingress_security_rules {
    source   = "0.0.0.0/0"
    protocol = "6"
  }

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }
}
