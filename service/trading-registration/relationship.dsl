feature.registration -> tradingRegistration.registrationUser "gRPC"
tradingRegistration.getForm -> tradingRegistration.firestore "get form by securities id"
tradingRegistration.registrationUser -> tradingRegistration.firestore "get user by securities id"
tradingRegistration.registrationPartnerCheckIdentity -> tradingRegistration.firestore "get trading user by securities id"
