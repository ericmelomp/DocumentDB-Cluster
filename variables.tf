variable "document_db" {
  description = "Defining the types of arguments in the map of object"
  type = map(object({

    cluster_identifier  = string
    engine_version      = string
    master_password     = string
    master_username     = string
    skip_final_snapshot = bool
  }))
}