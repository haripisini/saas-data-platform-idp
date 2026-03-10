def validate_document(doc):

    if not doc["document_name"]:
        return "Document name missing"

    if "@" not in doc["email"]:
        return "Invalid email"

    return "Valid"


sample = {
    "document_name": "invoice_2024",
    "email": "customer@test.com"
}

print(validate_document(sample))