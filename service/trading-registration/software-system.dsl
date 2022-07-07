tradingRegistration = softwareSystem "Trading Registration" "This service to handle trading data account" "Service" {
    !docs docs

    registrationUser = container "Registration User" "insert data user trading to partner service" "Feature" {
    }
    getForm = container "GetForm" "" "Feature" {}
    registrationPartnerCheckIdentity = container "Registration Partner Check Identity" "rpc RegistrationPartnerCheckIdentity: to get identity to firstore" "Feature" {

    }
    firestore = container "Firestore" "Stores partner data, users, linkage, etc." "Firestore Database" "Google Cloud Platform - Cloud Firestore" {
        
    }
   
}