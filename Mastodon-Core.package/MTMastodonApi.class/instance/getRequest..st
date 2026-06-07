helpers-requesting
getRequest: aUrl

    ^ self contentFromResponse:
        (self webClient
            httpGet: aUrl
            do: [:request | self authorizeRequest: request])