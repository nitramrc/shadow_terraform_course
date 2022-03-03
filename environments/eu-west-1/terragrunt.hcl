remote_state {
    backend = "s3"

    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }

    config = {
        bucket = "courses-terraform-terragrunt-states-bucket-1q2s3d4r5t"
        key = "eu-west-1/${path_relative_to_include()}/terraform.tfvars"
        region = "eu-west-1"
        encrypt = false
        dynamodb_table = "courses-lock-table"
        profile = "default"
    }
}