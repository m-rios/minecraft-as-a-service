.PHONY: all production staging destroy 

all: production 

production:
	terraform init; terraform apply -var-file="secrets.tfvars" -var-file="production.tfvars"

staging:
	terraform init; terraform apply -var-file="secrets.tfvars" -var-file="staging.tfvars"

destroy:
	terraform init; terraform destroy -var-file="secrets.tfvars" -var-file="production.tfvars"
