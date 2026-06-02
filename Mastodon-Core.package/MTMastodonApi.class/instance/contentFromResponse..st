helpers
contentFromResponse: aResponse

	aResponse isSuccess ifFalse: [^ self error: aResponse content].
	^ aResponse content utf8ToSqueak