#!/bin/sh

PROJECT_NAME=sudonum-dejavu

poetry build
aws s3 cp dist/ s3://web-admin-file-store/python_packages/$PROJECT_NAME --recursive
