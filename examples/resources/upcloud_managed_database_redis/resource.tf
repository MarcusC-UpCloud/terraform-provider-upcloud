# Minimal config
resource "upcloud_managed_database_redis" "example_1" {
  name  = "redis-1"
  title = "redis-1-example-2"
  plan  = "1x1xCPU-2GB"
  zone  = "fi-hel2"
}

# Service with custom properties
resource "upcloud_managed_database_redis" "example_2" {
  name  = "redis-2"
  title = "redis-2-example-2"
  plan  = "1x1xCPU-2GB"
  zone  = "fi-hel1"
  properties {
    public_access = false
  }
}
