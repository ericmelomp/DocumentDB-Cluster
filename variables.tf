variable "document_db" {
  description = "Defining the types of arguments in the map of object"
  type = map(object({

    cluster_identifier = string
    engine_version     = string
    master_password    = string
    master_username    = string
    skip_final_snapshot = bool
  }))
#You can create the tf.vars file instead of using "default" for the values
  default = {
    "document_db_test" = {
      cluster_identifier = "docdb-cluster-demo"
      engine_version     = "4.0"
      master_password    = "?"
      master_username    = "?"
      skip_final_snapshot = true
    }
  }
}