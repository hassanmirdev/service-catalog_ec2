# service-catalog_ec2

cd service-catalog_ec2/
ls
tar -czvf service_catalog_ec2_product.tar.gz --exclude="*.terraform*" --exclude="*.tfstate*" --exclud
e="*.backup" *

tar -czvf service-catalog_ec2.tar.gz .
ls
tar -tzvf service-catalog_ec2.tar.gz
ls
aws s3 cp service-catalog_ec2.tar.gz s3://terraform-backend-statefil/
