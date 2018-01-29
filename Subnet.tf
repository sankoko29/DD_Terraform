resource "oci_core_dhcp_options" "Dhcp1" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
  vcn_id         = "${oci_core_virtual_network.vcn1.id}"
  display_name   = "DhcpOption1"

  options {
    type               = "DomainNameServer"
    server_type        = "CustomDnsServer"
    custom_dns_servers = ["8.8.4.4", "8.8.8.8"]
  }
}

resource "oci_core_subnet" "Subnet_10_100_1" {
  provider            = "oci.iad"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  cidr_block          = "10.100.1.0/24"
  display_name        = "Subnet_10.100.1.0"
  compartment_id      = "${oci_identity_compartment.Terraform.id}"
  vcn_id              = "${oci_core_virtual_network.vcn1.id}"
  security_list_ids   = ["${oci_core_security_list.SecList_10_100_1.id}"]
  route_table_id      = "${oci_core_route_table.RouteTable_10_100_1.id}"
  dhcp_options_id     = "${oci_core_dhcp_options.Dhcp1.id}"
}

resource "oci_core_subnet" "Subnet_10_100_2" {
  provider            = "oci.iad"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  cidr_block          = "10.100.2.0/24"
  display_name        = "Subnet_10.100.2.0"
  compartment_id      = "${oci_identity_compartment.Terraform.id}"
  vcn_id              = "${oci_core_virtual_network.vcn1.id}"
  security_list_ids   = ["${oci_core_security_list.SecList_10_100_2.id}"]
  route_table_id      = "${oci_core_route_table.RouteTable_10_100_2.id}"
  dhcp_options_id     = "${oci_core_dhcp_options.Dhcp1.id}"
}

resource "oci_core_subnet" "Subnet_10_100_3" {
  provider            = "oci.iad"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  cidr_block          = "10.100.3.0/24"
  display_name        = "Subnet_10.100.3.0"
  compartment_id      = "${oci_identity_compartment.Terraform.id}"
  vcn_id              = "${oci_core_virtual_network.vcn1.id}"
  security_list_ids   = ["${oci_core_security_list.SecList_10_100_3.id}"]
  route_table_id      = "${oci_core_route_table.RouteTable_10_100_3.id}"
  dhcp_options_id     = "${oci_core_dhcp_options.Dhcp1.id}"
}

data "oci_identity_availability_domains" "ADs" {
  provider       = "oci.iad"
  compartment_id = "${oci_identity_compartment.Terraform.id}"
}
