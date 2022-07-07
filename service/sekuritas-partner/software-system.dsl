sekuritasPartner = softwareSystem "Sekuritas Partner" "This service to handle feature to thrid party" "Service" {
    description "Lorem ipsum color si amet"
    !docs docs

    properties {
        eipo "EIPO"
        accessToken "Access Token"
    }
    eipo = container "EIPO"  "Lorem ipsum color si amet" "grpc, redis, mysql" "Feature" {
        
    }
    partnerConnect = container "Partner Connect"  "Lorem ipsum color si amet" "grpc, redis, mysql" "Feature" {

    }

    getAccessUrl = container "Get Access Url" "this feature will give response to client that will redirect to social frontend" "redis, mysql, social service, trading registration service" "Feature" {

    }
    verifyToken = container "Verify Token" "Lorem ipsum color si amet" "grpc, redis, mysql" "Feature" {

    }
    getTncByToken = container "Get Tnc By Token" "Lorem ipsum color si amet" "grpc, redis, mysql" "Feature" {

    }
    getRegistrationStatus = container "Get Registration Status" "Lorem ipsum color si amet" "grpc, redis, mysql" "Feature" {

    }
    mysql = container "Mysql" "Stores partner data, users, linkage, etc." "MySQL Database" "Database MySQL" {
        
    }
    redis = container "Redis" "Stores partner data, users, linkage, etc." "Redis Database" "Database Redis" {
        
    }
    gcpPubSub = container "GCP Pub/Sub" "all topic that necessary of sekuritas partner" "GCP PubSub" "Google Cloud Platform - Cloud PubSub" {
        
    }
    
    notificationSubscriber = container "Notification Subscriber" "get notification from other service" "gcp pub/sub" "Listener" {
        
    }
}
