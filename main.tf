provider "aws" {
  region  = "us-east-1"
  version = "~> 3.0"
}

provider "aws" {
  alias = "west"
  region = "us-west-2"
  version = "~>3.0"
  
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "descomplicando-terraform-anaprimo"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}