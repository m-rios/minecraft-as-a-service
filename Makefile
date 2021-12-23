.PHONY: infrastructure

infrastructure:
	cd infrastructure; terraform init; terraform apply -var-file="secrets.tfvars"
