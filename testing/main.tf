/*locals {
    mytotal = length(["a", "b", "c"])

}

resource "azurerm_resource_group" "rg1" {
    name        = "my.${local.mytotal}"

    location    = "uksouth"

}
*/

resource "azurerm_resource_group" "rg" {
    count = 0
    location = "uksouth"
    name = "rg${count.index}"

}