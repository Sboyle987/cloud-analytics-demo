# Mock Data Generation for Google Cloud Platform (GCP) and Looker Studio

This folder contains scripts and resources for generating mock data to simulate analytics scenarios in Google Cloud Platform (GCP) and connecting it as a data source in Looker Studio. Follow the steps below to generate mock data, upload it to Google Sheets, and connect it to Looker Studio.

## Prerequisites

- Python installed on your local machine. [Install Python](https://www.python.org/downloads/)
- Google Cloud SDK (gcloud) installed. [Install Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- A Google Account with access to Google Sheets.
- Access to Looker Studio.

## Getting Started

1. **Clone the Repository:**

```
git clone https://github.com/Sboyle987/cloud-analytics-demo.git
cd cloud-analytics-demo/demo_data
```

2. **Generate Mock Data:**

```
python3 generate_mock_data.py
```

This script generates mock data and stores it in the output directory. Adjust the script parameters or configurations as needed.

3. **Upload Mock Data to Google Sheets:**

Manually upload the generated CSV file (output/mock_data.csv) to Google Sheets.

4. **Connect Google Sheets as a Data Source in Looker Studio:**

Open Looker Studio and navigate to the "Admin" section.
Under "Connections," click "New Connection" and select "Google Sheets."
Follow the prompts to authenticate and connect your Google Sheets account.
Specify the sheet and configure data connection settings.

5. **Explore Data in Looker Studio:**

Once connected, explore and analyze the mock data in Looker Studio.
Create dashboards, visualizations, and perform ad-hoc analyses.

Additional Information
Review the generate_mock_data.py script for customization options and data generation configurations.
Modify the script or mock data schema to suit your specific analytics use case.
Ensure you have the necessary permissions to upload data to Google Sheets and connect Looker Studio to Google Sheets.