.PHONY: infrastructure

infrastructure:
	cd infrastructure; terraform init; terraform apply -var-file="secrets.tfvars"

destroy-infrastructure:
	cd infrastructure; terraform init; terraform destroy -var-file="secrets.tfvars"
