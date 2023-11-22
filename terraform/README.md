# Cloud Analytics Demo

This repository contains Terraform configurations to set up resources for a simple cloud analytics pipeline in GCP.
Follow the steps below to set up the environment.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- Access to a cloud provider account (e.g., Google Cloud Platform).


## Getting Started

1. **Clone the repository:**

```
git clone https://github.com/Sboyle987/cloud-analytics-demo.git
cd cloud-analytics-demo/terraform
```


2. **Set up Terraform variables:**

Fill in the vars.tfvars file and set the required variables:

```
project_id = "your-project-id"
region     = "your-region"
Replace "your-project-id" and "your-region" with your specific values.
```
3. **Initialize Terraform:**

```
terraform init
```

4. **Preview the Terraform execution plan:**

```
terraform plan -var-file=vars.tfvars
```

Review the plan to ensure it aligns with your expectations.

5. **Apply the Terraform configuration:**

```
terraform apply -var-file=vars.tfvars
```
Type yes when prompted to confirm the resource creation.

6. **Cleanup:**
To destroy the created resources and avoid unnecessary costs, run:

```
terraform destroy -var-file=vars.tfvars
```

Type yes when prompted to confirm the resource deletion.

Additional Information
Review the Terraform scripts in the terraform folder for details on the created resources.
Customize the Terraform configurations based on your specific requirements.
For more information on Terraform, refer to the official documentation.


Contributors
Seth Boyle
...
Feel free to contribute by submitting issues or pull requests.