helpers-requesting
contentFromResponse: aResponse

	aResponse isSuccess ifFalse: [^ self error: aResponse content].
	^ aResponse content