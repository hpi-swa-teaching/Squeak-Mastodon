endpoints
uploadMediaFrom: aForm

	| url response boundary file |
	url := self urlForPath: '/api/v1/media/'.
	boundary := WebUtils multipartBoundary.
	file := self encodeForm: aForm.
	
	response := webClient
		httpPost: url
		content: (self encodeMultipartForm: file boundary: boundary)
		type: 'multipart/form-data; boundary=', boundary
		do: [:each | self authorizeRequest: each].
	^ self contentFromResponse: response