resource "oci_core_instance" "VMInstance1" {
  provider            = "oci.iad"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1],"name")}"
  compartment_id      = "${oci_identity_compartment.Terraform.id}"
  display_name        = "VMInstance1"
  image               = "${var.InstanceImageOCID[var.region]}"
  shape               = "${var.InstanceShape}"

  create_vnic_details {
    subnet_id        = "${oci_core_subnet.Subnet_10_100_1.id}"
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "VMInstance1"
  }

  metadata {
    ssh_authorized_keys = "${var.ssh_public_key}"

    #user_data           = "${base64encode(file(var.BootStrapFile))}"
  }

  timeouts {
    create = "60m"
  }
}

/*
resource "oci_core_volume" "Block50G" {
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1],"name")}"
  compartment_id = "${var.compartment_ocid}"
  display_name = "TFBlock0"
  size_in_gbs = "${var.DBSize}"
}

resource "oci_core_volume_attachment" "TFBlock0Attach" {
    attachment_type = "iscsi"
    compartment_id = "${var.compartment_ocid}"
    instance_id = "${oci_core_instance.TFInstance.id}"
    volume_id = "${oci_core_volume.TFBlock0.id}"
}
*/

