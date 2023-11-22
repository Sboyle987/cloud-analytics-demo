import csv
import random
import string


# Function to generate random data for GCP instances
def generate_instance_data():
    machine_types = [
        "n1-standard-1",
        "n1-standard-2",
        "n1-standard-4",
        "n1-standard-8",
        "e2-standard-2",
        "e2-standard-4",
        "e2-standard-8",
    ]
    regions = [
        "us-central1",
        "us-west1",
        "us-east1",
        "europe-west1",
        "europe-west2",
        "asia-east1",
        "asia-southeast1",
    ]
    zones = [
        "us-central1-a",
        "us-west1-b",
        "us-east1-c",
        "europe-west1-b",
        "europe-west2-c",
        "asia-east1-b",
        "asia-southeast1-a",
    ]
    os_types = ["ubuntu-1804", "centos-7", "windows-2019"]

    return {
        "Instance Name": f"instance-{random.randint(1, 1000)}",
        "Machine Type": random.choice(machine_types),
        "Region": random.choice(regions),
        "Zone": random.choice(zones),
        "OS Type": random.choice(os_types),
        "CPUs": random.randint(1, 8),
        "Memory (GB)": 2 ** random.randint(1, 6),
        "Disk Size (GB)": random.randint(20, 100),
        "Status": random.choice(["RUNNING", "STOPPED", "TERMINATED"]),
        "Team": f"team-{''.join(random.choice(string.ascii_uppercase))}",
    }


# Generate data for 1000 instances
data = [generate_instance_data() for _ in range(1000)]

# Define CSV file header
header = [
    "Instance Name",
    "Machine Type",
    "Region",
    "Zone",
    "OS Type",
    "CPUs",
    "Memory (GB)",
    "Disk Size (GB)",
    "Status",
    "Team",
]

# Write data to CSV file
with open("gcp_instance_data.csv", "w", newline="") as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=header)

    # Write header
    writer.writeheader()

    # Write data
    writer.writerows(data)

print("CSV file 'gcp_instance_data.csv' has been generated.")
