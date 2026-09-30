module "mta_sts" {
  source                    = "github.com/ThorstenSauter/mta-sts-cloudflare-azure-static-web-app?ref=3.0.0"
  domain                    = "eineweltladen-villingen.de"
  azure_location            = var.location
  azure_resource_group_name = "rg-mta-sts-eineweltladen-villingen-de-prod-001"
  azure_static_web_app_name = "stapp-mta-sts-ewl-villingen-de-prod-01"
  azure_tags                = var.tags
  mta_sts_mode              = "enforce"
  mx_hosts = [
    "mx00.ionos.de",
    "mx01.ionos.de"
  ]
  rua = [
    "mailto:tls-report@eineweltladen-villingen.de"
  ]
}
