# Cloud Analytics Demo

This repository contains scripts and configurations for a cloud analytics demo. Follow the steps below to set up the environment using Terraform, publish a Docker image, and configure additional resources.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- [Docker](https://docs.docker.com/get-docker/) installed.
- Google Cloud SDK (gcloud) installed. [Install Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

## Getting Started

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/Sboyle987/cloud-analytics-demo.git
    cd cloud-analytics-demo
    ```

2. **Set up Google Cloud Credentials:**

    Set up your Google Cloud credentials by running:

    ```bash
    gcloud auth application-default login
    ```

3. **Run Terraform to Create Resources:**

    ```bash
    cd terraform
    terraform init
    terraform plan -var-file=vars.tfvars
    terraform apply -var-file=vars.tfvars
    ```

    Follow the prompts to apply the Terraform configuration. This step creates the initial set of resources.

4. **Build and Publish Docker Image:**

    ```bash
    cd cloud_run_job
    docker build -t your-image-name:your-tag .
    cloud-run-job:latest .
    gcloud auth configure-docker us-west1-docker.pkg.dev
    docker tag SOURCE-IMAGE LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE:TAG
    docker push LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE
    ```

    Replace `YOUR_PROJECT_ID` with your actual Google Cloud project ID.

5. **Update Terraform Configuration:**

    Uncomment the `google_cloud_run_v2_job` and `google_cloud_scheduler_job` resource blocks in the `cloud_run_jobs.tf` file


6. **Run Terraform Again:**

    ```bash
    terraform plan -var-file=vars.tfvars
    terraform apply -var-file=vars.tfvars
    ```

    Follow the prompts to apply the updated Terraform configuration. This step creates additional resources.

## Additional Information

- Customize the Terraform configurations based on your specific requirements.
- For more information on Terraform, refer to the [official documentation](https://www.terraform.io/docs/index.html).

Contributors
Seth Boyle
...
Feel free to contribute by submitting issues or pull requests.