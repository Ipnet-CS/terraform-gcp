## Delivery Team 

### Terraform Training Delivery Team

Create a terraform.tfvars with your credentials and default region.

**Example**:


## Getting Started

 * terraform init
 * terraform plan -var="project=seu-projeto-id" -var="credentials_file=path/para/seu/arquivo/credenciais.json"
 * terraform apply -var="project=seu-projeto-id" -var="credentials_file=path/para/seu/arquivo/credenciais.json"

 ### Dependencies

* Terraform.
* tfenv
* Account GCP autorizada para uso e um projeto criado
* Ative a API do Compute Engine e obtenha um arquivo de credenciais JSON para autenticação.

### Executing program

* terraform apply < file.tf >

## Help

Delivery Team 

## Authors

Contributors names and contact info

rogerio.carvalho@ipnet.cloud

## Version History

* 0.1
     Various bug fixes and optimizations
    * See [commit change]() or See [release history]()
* 0.1
    * Initial Releas

## License

Free

## Acknowledgments

Inspiration, code snippets, etc.
* [Terraform](https://www.terraform.io/)
* [Creating Modules](https://www.terraform.io/docs/modules/index.html)
* [tfenv](https://github.com/tfutils/tfenv)
* [HashCorp](https://developer.hashicorp.com/terraform/language/settings/backends/s3)
* [Modules](https://developer.hashicorp.com/terraform/language/modules/syntax)
