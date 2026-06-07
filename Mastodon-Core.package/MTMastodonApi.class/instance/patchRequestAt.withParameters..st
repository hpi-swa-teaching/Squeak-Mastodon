helpers-requesting
patchRequestAt: aURL withParameters: aCollection

	| response |
	response := self webClient
		httpPatch: aURL
		content: (WebUtils encodeUrlEncodedForm: (Dictionary newFromPairs: aCollection))
		type: 'application/x-www-form-urlencoded'
		do: [:each | self authorizeRequest: each].
	^ self contentFromResponse: response