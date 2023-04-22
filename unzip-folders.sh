#!/bin/bash

# Set the path to the directory containing the zip files
ZIP_DIR="C:/Users/benrp/Downloads/1. cato-the-younger"

# Loop through all zip files in the directory and extract them
for zip_file in "$ZIP_DIR"/*.zip; do
  # Extract the filename without the .zip extension
  folder_name="${zip_file%.zip}"
  # Create the folder if it doesn't already exist
  mkdir -p "$folder_name"
  # Extract the contents of the zip file into the new folder
  unzip -q "$zip_file" -d "$folder_name"
done
