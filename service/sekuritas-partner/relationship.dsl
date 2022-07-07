feature.partnerConnect -> sekuritasPartner.partnerConnect "gRPC"
feature.eipo -> sekuritasPartner.eipo "gRPC"

// features
sekuritasPartner.getAccessUrl -> tradingRegistration.registrationPartnerCheckIdentity "rpc RegistrationPartnerCheckIdentity" "gRPC"
sekuritasPartner.getAccessUrl -> sekuritasPartner.mysql "get partner data by partner id"
sekuritasPartner.getAccessUrl -> sekuritasPartner.redis "store access token"
sekuritasPartner.verifyToken -> sekuritasPartner.redis "get token"
sekuritasPartner.getTncByToken -> sekuritasPartner.redis "get token"
sekuritasPartner.getRegistrationStatus -> tradingRegistration.registrationPartnerCheckIdentity "rpc RegistrationPartnerCheckIdentity" "gRPC"
sekuritasPartner.partnerConnect -> sekuritasPartner.mysql "get partner data by partner id"
sekuritasPartner.partnerConnect -> sekuritasPartner.gcpPubSub "publish partner data" "gcp pub/sub, publisher"
sekuritasPartner.notificationSubscriber -> sekuritasPartner.gcpPubSub "topic: user-notification" "listener"

