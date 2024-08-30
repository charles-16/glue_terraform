import boto3
import pandas as pd
import io

s3 = boto3.client('s3')

# Download the file from S3
bucket_name = 'glue-cj-src11-s3/'
input_file_key = 'raw/data.csv'
output_file_key = 'transformed/data.csv'

# Read the file from S3 into memory
csv_obj = s3.get_object(Bucket=bucket_name, Key=input_file_key)
body = csv_obj['Body'].read().decode('utf-8')

# Use pandas to read the CSV content into a DataFrame
df = pd.read_csv(io.StringIO(body))

# Replace 'null' in CONTACT column with '0'
df['CONTACT'].fillna('0', inplace=True)

# Convert all values in NAME column to uppercase
df['NAME'] = df['NAME'].str.upper()

# Convert the DataFrame back to CSV format
output_buffer = io.StringIO()
df.to_csv(output_buffer, index=False)

# Upload the transformed file back to S3
s3.put_object(Bucket=bucket_name, Key=output_file_key, Body=output_buffer.getvalue())
