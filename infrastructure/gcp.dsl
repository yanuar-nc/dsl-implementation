deploymentEnvironment "Google Cloud Platform" {
    deploymentNode "Server 1" {
        containerInstance tradingRegistration.firestore
    }
}

deploymentEnvironment "On Premise" {
    deploymentNode "Server 1" {
        containerInstance sekuritasPartner.mysql
        containerInstance sekuritasPartner.redis
    }
}