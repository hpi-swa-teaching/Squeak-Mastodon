helpers-requesting
postRequest: aPath withParameters: aDictionary

	| response |
	response := webClient
		httpPost: aPath
		content: (WebUtils encodeUrlEncodedForm: aDictionary)
		type: 'application/x-www-form-urlencoded'
		do: [:each | self authorizeRequest: each].
	^ self contentFromResponse: response