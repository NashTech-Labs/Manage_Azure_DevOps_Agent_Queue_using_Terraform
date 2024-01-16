# Description
Here, In this template, we will manage an agent queue within Azure DevOps equivalent to adding an Organization pool to a project using the Terraform module.

---

### Pre-Requisite
* Azure Account
* Pre Login into your Azure Account

---
### Steps
* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.

```
Commands :
-  terraform init
-  terraform plan
-  terraform apply
```
* You can create your own `terraform.auto.tfvars` file to define the values of the variables like `vi terraform.auto.tfvars`
  E.g:-
  `variable_name = value`
---

## Configuration

The following table lists the configurable parameters for the module with their default values.

| Parameters                         | Description                                        | Default | Type   | Required |
|------------------------------------|----------------------------------------------------|---------|--------|----------|
| adotoken_VV                        | Personal Access Token                              |         | string | Yes      |  
| organization_service_url_VV        | Organisation Service URL                           |         | string | Yes      |  
| project_name_VV                    | Name of Project                                    |         | string | Yes      |
| agent_pool_name_VV                 | Name of Agent Pool                                 |         | string | Yes      |
---
