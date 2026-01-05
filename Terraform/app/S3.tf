resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name  
}

resource "aws_s3_bucket_website_configuration" "static_website_config" {
  bucket = aws_s3_bucket.static_website.bucket.id


  index_document {
    suffix = "index.html"
  }  
}