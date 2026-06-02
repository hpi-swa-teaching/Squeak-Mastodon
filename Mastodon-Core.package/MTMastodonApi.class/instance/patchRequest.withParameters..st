helpers-requesting
patchRequest: url withParameters: parameters
	| response |
	response := webClient httpPatch: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do: [:each | self authorizeRequest: each].
	^ self contentFromResponse: response