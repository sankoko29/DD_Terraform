resource "oci_core_internet_gateway" "IG" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  display_name   = "InternetGateway1"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
}

resource "oci_core_route_table" "RouteTable_10_100_1" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "10.100.1_RouteTable"

  route_rules {
    cidr_block        = "0.0.0.0/0"
    network_entity_id = "${oci_core_internet_gateway.IG.id}"
  }
}

resource "oci_core_route_table" "RouteTable_10_100_2" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "10.100.2_RouteTable"

  route_rules {
    cidr_block        = "0.0.0.0/0"
    network_entity_id = "${oci_core_internet_gateway.IG.id}"
  }
}

resource "oci_core_route_table" "RouteTable_10_100_3" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "10.100.3_RouteTable"

  route_rules {
    cidr_block        = "0.0.0.0/0"
    network_entity_id = "${oci_core_internet_gateway.IG.id}"
  }
}
