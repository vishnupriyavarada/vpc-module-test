resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.projectname}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}