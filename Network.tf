resource "oci_core_virtual_network" "vcn1" {
  provider       = "oci.iad"
  cidr_block     = "${var.vcn1-iad}"
  dns_label      = "vcn1"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  display_name   = "vcn1"
}

resource "oci_core_virtual_network" "vcn2" {
  provider       = "oci.iad"
  cidr_block     = "${var.vcn2-iad}"
  dns_label      = "vcn2"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  display_name   = "vcn2"
}

resource "oci_core_virtual_network" "vcn3" {
  provider       = "oci.iad"
  cidr_block     = "${var.vcn3-iad}"
  dns_label      = "vcn3"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  display_name   = "vcn3"
}

/*resource "oci_core_security_list" "SecList1" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn1-iad}"
  display_name   = "10.100.1_SecList"

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }
}

resource "oci_core_security_list" "SecList2" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn1-iad}"
  display_name   = "10.100.2_SecList"

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }
}

resource "oci_core_security_list" "SecList3" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn1-iad}"
  display_name   = "10.100.3_SecList"

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "6"
  }
}

/*resource "oci_core_subnet" "Subnet_10.100.1.0" {
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  cidr_block          = "10.100.1.0/24"
  display_name        = "Subnet_10.100.1.0"
  dns_label           = "Subnet_10.100.1.0"
  compartment_id      = "${var.compartment_ocid}"
  vcn_id              = "${var.oci_core_virtual_network.vcn1-iad.id}"
  security_list_ids   = "${var.oci_core_virtual_network.vcn1-iad.default_security_list_id}"
  compartment_id      = "${var.compartment_ocid}"
  vcn_id              = "${var.oci_core_virtual_network.vcn1-iad.id}"
  route_table_id      = "${var.oci_core_virtual_network.vcn1-iad.default_route_table_id}"
  dhcp_options_id     = "${var.oci_core_virtual_network.vcn1-iad.default_dhcp_options_id}"
}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = "${var.tenancy_ocid}"
}
*/

