resource "aws_glue_job" "Glue_buck_st" {
  name     = "glue_buck_st1"
  role_arn = var.glue_role_arn
  glue_version = "4.0"

  command {
    script_location = "s3://glue-cj-src13-s3/scripts/tranfromation.py"
    python_version  = "3"
  }

  default_arguments = {
    "--TempDir" = "s3://my-temp-bucket-cj17/temp-dir/"
  }

  worker_type = "Standard"
  number_of_workers = 2
}

/*
resource "aws_glue_workflow" "example" {
  name        = "example"
  description = "An example workflow"
  default_run_properties = {
    key1 = "value1"
  }
}

resource "aws_glue_trigger" "example" {
  name     = "example"
  workflow_name = aws_glue_workflow.example.name
  type     = "ON_DEMAND"

  actions {
    job_name = aws_glue_job.example.name
  }
}
*/
