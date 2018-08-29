terraform {
  backend "atlas" {
    name = "kikitux/toto5"
  }
}

resource "random_integer" "toto5" {
  min   = 1
  max   = 35
  count = 5
}

output "toto5" {
  value = ["${random_integer.toto5.*.result}"]
}
