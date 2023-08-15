variable "location" {
    description = "Váriavel para indicar o nome da região onde os recursos serão criados"
    type = string
    default = "Brazil South" #verificar

}

variable "account_tier" {
    description = "Camada da Conta de Armazenamento na Azure"
    type = string
    default = "Standard" #free
}

variable "account_replication_type" {
    description = "Tipo de replicacão de dados da Storage Account"
    type = string
    default = "LRS"
    sensitive = true
}

