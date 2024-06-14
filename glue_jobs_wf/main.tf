resource "aws_glue_job" "Glue_buck_st" {
  name     = "glue_buck_st"
  role_arn = var.glue_role_arn
  glue_version = "4.0"

  command {
    script_location = "/scripts/s3_src_tgt_script.py"
    python_version  = "3"
  }

  default_arguments = {
    "--TempDir" = "s3://my-temp-bucket/temp-dir/"
  }
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