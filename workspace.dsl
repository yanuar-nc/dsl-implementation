workspace "Anxiety Corp" "All process enterprise with device and technology inside" {

    !identifiers hierarchical
    
    model {
        user = person "Anxiety Corp User"


        device = softwareSystem "Devices" {
            description "Devices that can be provide from us"
            webapp = container "Web Application" "Lorem ipsum color si amet" "Chrome, Firefox, Safari" "DeviceWebBrowser" {
                user -> this "uses"
            }
            ios = container "iOS" "Lorem ipsum color si amet" "iOS v15.0.^, 14.0.^" "DeviceMobile" {
                user -> this "uses"
            }
            android = container "Android" "Lorem ipsum color si amet" "Phi, Oreo" "DeviceMobile" {
                user -> this "uses"
            }
            
        }

        feature = softwareSystem "Features" {

            registration = container "Registration User" {
                // device.webapp -> this "uses web application" "http request, jwt, json"
            }
            eipo = container "EIPO" {
                // device.ios -> this "uses" "http request, jwt, json"
                // device.android -> this "uses" "http request, jwt, json"
            }
            bankAmmend = container "Bank Ammend" {

            }
            partnerConnect = container "Partner Connect" {
                
            }
            watchlist = container "Watchlist" {
                // device.webapp -> this "uses" "http request, jwt, json"
            }

        }

        nrmapigw = softwareSystem "NRM Api Gateways" "KrakenD" {
            description "Api gateways for client request to non transaction services"
            device.webapp -> this "http request" "jwt, json"
            device.ios -> this "uses" "http request, jwt, json"
            device.android -> this "uses" "http request, jwt, json"
            
        }

        trmapigw = softwareSystem "TRM Api Gateways" "Kong" {
            description "Api gateways for client request to transaction services"
            device.webapp -> this "http request" "jwt, json"
            device.ios -> this "uses" "http request, jwt, json"
            device.android -> this "uses" "http request, jwt, json"
        }

        nrmapigw -> feature.registration "http request"
        nrmapigw -> feature.eipo "http request"
        nrmapigw -> feature.bankAmmend "http request"
        nrmapigw -> feature.partnerConnect "http request"

        trmapigw -> feature.watchlist "request: /v2/trading/eipo"


        // call all software system
        !include service/trading-registration/software-system.dsl
        !include service/trading-account/software-system.dsl
        !include service/sekuritas-partner/software-system.dsl
    
        // call all relationship
        !include service/trading-registration/relationship.dsl
        !include service/trading-account/relationship.dsl
        !include service/sekuritas-partner/relationship.dsl

        // deployment environment
        !include infrastructure/gcp.dsl

    }

    views {
        // systemlandscape "SystemLandscape" {
        //     include *
        //     autoLayout
        // }

        styles {
            element "Service" {
                shape Box
            }

            element "Database MySQL" {
                shape Cylinder
                background #ffffff
                color #2e2e2d
                stroke #d9d7d2
                height 400
                icon https://i.postimg.cc/rsWTXkGr/png-clipart-mysql-mysql.png
            }

            element "Database Redis" {
                shape Cylinder
                background #ffffff
                color #2e2e2d
                stroke #d9d7d2
                height 400
                icon https://i.postimg.cc/vBNhY87Y/kisspng-redis-distributed-cache-database-caching-redis-logo-svg-vector-amp-png-transparent-vect-5b64.jpg
            }

            element "Feature" {
                shape Ellipse
            }

            element "DeviceWebBrowser" {
                shape WebBrowser
            }

            element "DeviceMobile" {
                shape MobileDevicePortrait
            }

            element "Google Cloud Platform - Cloud Firestore" {
                shape Cylinder
                background #ffffff
                height 400
            }

            element "Google Cloud Platform - Cloud PubSub" {
                background #ffffff
            }

            element "Listener" {
                shape RoundedBox
            }
        }

        theme default
        themes default https://static.structurizr.com/themes/google-cloud-platform-v1.5/theme.json
    }

}