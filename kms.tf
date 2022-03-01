module "kms" {
    providers = {
      aws = aws.src
    }

    source = "./module_kms"

    alias = "alias/ec2key"
    description = "EC2 instance encrypt key"
    deletion_window_in_days = 10

}