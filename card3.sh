curl -X POST -H "Content-Type: application/json" \
$WEBHOOK_URL \
 -d '{
  "cards": [
    {
      "header": {
        "title": "Stage failed"
      },
      "sections": [
        {
          "widgets": [
            {
              "keyValue": {
                "topLabel": "Stage",
                "content": "somepipeline/1/stage/10",
                "onClick": {
                    "openLink": {
                        "url": "https://duckduckgo.com"
                    }
                }
              }
            },
            {
              "keyValue": {
                "topLabel": "Job Name",
                "content": "defaultJob",
                "button": {
                  "textButton": {
                    "text": "View Console Logs",
                    "onClick": {
                      "openLink": {
                        "url": "http://site.com"
                      }
                    }
                  }
                }
              }
            },
            {
              "keyValue": {
                "topLabel": "Job Name",
                "content": "anotherOne",
                "button": {
                  "textButton": {
                    "text": "View Console Logs",
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
        },
        {
          "widgets": [
            {
              "buttons": [
                {
                  "textButton": {
                    "text": "Open Stage",
                    "onClick": {
                      "openLink": {
                        "url": "https://github.com/karuppiah7890/helm"
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