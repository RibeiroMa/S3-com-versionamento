resource "aws_s3_bucket" "armazenar-state" {
  bucket = "matheus.bucket.versionamento"
}

resource "aws_s3_bucket_versioning" "versionamento" {
  bucket = aws_s3_bucket.armazenar-state.id
  versioning_configuration {
    status = "Enabled"
  }
}