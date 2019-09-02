curl -X POST -H "Content-Type: application/json" \
$WEBHOOK_URL \
 -d '{
  "cards": [
    {
      "header": {
        "title": "Pizza Bot Customer Support",
        "subtitle": "pizzabot@example.com",
        "imageUrl": "https://goo.gl/aeDtrS"
      },
      "sections": [
        {
          "widgets": [
              {
                "keyValue": {
                  "topLabel": "Order No.",
                  "content": "12345"
                  }
              },
              {
                "keyValue": {
                  "topLabel": "Status",
                  "content": "In Delivery"
                }
              }
          ]
        },
        {
          "header": "Location",
          "widgets": [
            {
              "image": {
                "imageUrl": "https://maps.googleapis.com/..."
              }
            }
          ]
        },
        {
          "widgets": [
              {
                  "buttons": [
                    {
                      "textButton": {
                        "text": "OPEN ORDER",
                        "onClick": {
                          "openLink": {
                            "url": "https://example.com/orders/..."
                          }
                        }
                      }
                    }
                  ]
              }
          ]
        }
      ]
    }
  ]
}'