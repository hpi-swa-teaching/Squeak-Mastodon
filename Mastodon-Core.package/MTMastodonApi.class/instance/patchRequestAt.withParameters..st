requesting
patchRequestAt: aPath withParameters: aCollection

	| response |
	response := self webClient
		httpPatch: (self urlForPath: aPath)
		content: (WebUtils encodeUrlEncodedForm: (Dictionary newFromPairs: aCollection))
		type: 'application/x-www-form-urlencoded'
		do: [:each | self authorizeRequest: each].
	^ self contentFromResponse: response