resource "google_project_organization_policy" "vm_externalIP_restriction" {
  project    = var.project_id
  constraint = "compute.vmExternalIpAccess"
  boolean_policy {
    enforced = false
  }
}

resource "google_project_organization_policy" "vm_location_restriction" {
  project    = var.project_id
  constraint = "compute.restrictCreationLocation"
  list_policy {
    allow {
      values = ["us-central1", "us-east1"]
    }
  }
}
