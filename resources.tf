resource "aws_docdb_cluster" "db_instance" {
  for_each = var.document_db

  cluster_identifier = each.value["cluster_identifier"]
  engine_version     = each.value["engine_version"]
  master_username    = each.value["master_username"]
  master_password    = each.value["master_password"]
  skip_final_snapshot = each.value["skip_final_snapshot"]
}