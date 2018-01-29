resource "oci_identity_user" "user1" {
  provider    = "oci.phx"
  name        = "user1"
  description = "A user managed with Terraform"
}

resource "oci_identity_ui_password" "tf_password" {
  provider = "oci.phx"
  user_id  = "${oci_identity_user.user1.id}"
}

resource "oci_identity_user" "user2" {
  provider    = "oci.phx"
  name        = "user2"
  description = "A user managed with Terraform"
}

resource "oci_identity_ui_password" "user2_password" {
  provider = "oci.phx"
  user_id  = "${oci_identity_user.user2.id}"
}

resource "oci_identity_user" "user3" {
  provider    = "oci.phx"
  name        = "user3"
  description = "A user managed with Terraform"
}

resource "oci_identity_ui_password" "user3_password" {
  provider = "oci.phx"
  user_id  = "${oci_identity_user.user3.id}"
}

#output "UserUIPassword" {
#  sensitive = false
# value = ["${oci_identity_ui_password.tf_password.password}"]
#}

