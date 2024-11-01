resource "yandex_storage_bucket" "diploma-bucket-sp2" {
    bucket = "diploma-bucket-sp2"
    force_destroy = true
    access_key = yandex_iam_service_account_static_access_key.service-diploma.access_key
    secret_key = yandex_iam_service_account_static_access_key.service-diploma.secret_key    
    anonymous_access_flags {
      read = true
      list = true
    }
}
