requesting
postRequest: aPath withParameters: aDictionary

	| response |
	response := self webClient
		httpPost: (self urlForPath: aPath)
		content: (WebUtils encodeUrlEncodedForm: aDictionary) asArray
		type: 'application/x-www-form-urlencoded'
		do: [:each | self authorizeRequest: each].
	^ self contentFromResponse: response
