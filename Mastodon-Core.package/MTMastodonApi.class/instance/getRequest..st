helpers-requesting
getRequest: aUrl

    ^ self contentFromResponse:
        (webClient
            httpGet: aUrl
            do: [:request | self authorizeRequest: request])