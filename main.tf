resource "google_cloud_run_service" "frontend_service" {
  name     = "${var.envrioment}-frontend-service"
  location = "europe-west2"

  template {
    spec {
      containers {
        image = "europe-west2-docker.pkg.dev/acme-corp-371520/acme/frontend:${var.docker_tag}"
        ports {
            container_port =  80
        }
      }
    }

    metadata {
      annotations = {
        "autoscaling.knative.dev/maxScale"      = "100"
        "autoscaling.knative.dev/minScale"      = var.min_scale
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.frontend_service.location
  project     = google_cloud_run_service.frontend_service.project
  service     = google_cloud_run_service.frontend_service.name
  policy_data = data.google_iam_policy.noauth.policy_data
}