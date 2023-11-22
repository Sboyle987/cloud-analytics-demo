# Docker Image Publishing to Google Cloud Platform (GCP)

This guide provides step-by-step instructions on publishing a Docker image locally and pushing it to Google Artifact Registry (GCR) in Google Cloud Platform.

## Prerequisites

- Docker installed on your local machine. [Install Docker](https://docs.docker.com/get-docker/)
- Google Cloud SDK (gcloud) installed. [Install Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- Create a Google Artifact Registry instance in GCP (There is sample code in the "terraform/cloud_run_jobs.tf" file)

## Getting Started

1. **Build the Docker Image Locally:**
```
docker build -t your-image-name:your-tag .
```

Replace your-image-name and your-tag with your desired image name and tag.

2. **Run the Docker Image Locally (Optional):**
```
docker run -p 8080:80 your-image-name:your-tag
```
This step is optional and allows you to verify that the locally built image works as expected.

3. **Authenticate Docker with Google Cloud in the region of your choice:**

```
gcloud auth configure-docker us-west1-docker.pkg.dev
```
This command configures Docker to authenticate with GCP.

4. **Tag the Docker Image for GCR:**

```
docker tag SOURCE-IMAGE LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE:TAG
```

Replace SOURCE-IMAGE with your local image name, LOCATION, PROJECT-ID, IMAGE, and TAG with your region, GCP project ID, repository name, image name, and tag.

4. **Push the Docker Image to GCR:**

```
docker push LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE
```

This command uploads the Docker image to Google Artifact Registry.

Go to the Google Cloud console to view the image.

4. **Run the gcloud command to view the image's tags and automatically-generated digest:**

```
gcloud artifacts docker images list \
LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE [--include-tags]
```

The following example output shows truncated image digests, but the command always returns the full image digest.


 IMAGE                                                 DIGEST         CREATE_TIME          UPDATE_TIME
  us-west1-docker.pkg.dev/my-project/my-repo/my-image  sha256:85f...  2019-04-10T15:08:45  2019-04-10T15:08:45
  us-west1-docker.pkg.dev/my-project/my-repo/my-image  sha256:238...  2019-04-10T17:23:53  2019-04-10T17:23:53
  us-west1-docker.pkg.dev/my-project/my-repo/my-image  sha256:85f...  2019-04-10T15:08:46  2019-04-10T15:08:46

