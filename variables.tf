variable "document_db" {
  type = map(object({

    cluster_identifier = string
    engine_version     = string
    master_password    = string
    master_username    = string
    skip_final_snapshot = bool
  }))

  default = {
    "document_db_test" = {
      cluster_identifier = "doc-db-test"
      engine_version     = "4.0"
      master_password    = "Pa55w.rd"
      master_username    = "root"
      skip_final_snapshot = true
    }
  }
}