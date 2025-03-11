/* terraform {
backend "s3" {
	bucket = "nshdemo"
	key = "service-catalog-ec2/terraform.tfstate"
	region = "us-east-1"
	encrypt = true
	dynamodb_table = "terraform-lock-table"
	}
}
*/
