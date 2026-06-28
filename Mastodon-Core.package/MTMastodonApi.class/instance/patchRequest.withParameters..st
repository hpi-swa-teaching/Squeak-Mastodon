requesting
patchRequest: aPath withParameters: aDictionary

	| response |
	response := self webClient
		httpPost: (self urlForPath: aPath)
		content: (WebUtils encodeUrlEncodedForm: aDictionary)
		type: 'application/x-www-form-urlencoded'
		do: [:each |
			each method: 'PATCH'.
			self authorizeRequest: each].
	^ self contentFromResponse: response