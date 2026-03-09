# AWS S3 Storage Structure

Amazon S3 is used for storing raw documents and processed data.

## Bucket

nexoraa-practice-bucket

## Folder Structure

raw/
structured/
evidence/

### raw/

Stores uploaded documents.

Example:

raw/tenant_A/

### structured/

Stores parsed structured outputs from Glue jobs.

Example:

structured/tenant_A/

### evidence/

Stores validation artifacts generated during processing.
