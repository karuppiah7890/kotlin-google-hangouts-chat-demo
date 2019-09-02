curl -X POST -H "Content-Type: application/json" $WEBHOOK_URL -d '{
    "cards": [
        {
            "sections": [
                {
                    "widgets": [
                        {
                            "keyValue": {
                                "topLabel": "Order No.",
                                "content": "12345",
                                "contentMultiline": "false",
                                "bottomLabel": "Delayed",
                                "onClick": {
                                     "openLink": {
                                        "url": "https://example.com/"
                                     }
                                 },
                                "icon": "TRAIN",
                                "button": {
                                    "textButton": {
                                       "text": "VISIT WEBSITE",
                                       "onClick": {
                                           "openLink": {
                                                "url": "http://site.com"
                                            }
                                        }
                                      }
                                 }
                             }
                        }
                    ]
                }
            ]
        }
    ]
}'