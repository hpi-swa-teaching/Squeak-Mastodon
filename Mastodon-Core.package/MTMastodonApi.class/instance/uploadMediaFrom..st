accessing
uploadMediaFrom: aForm "the image path should be converted to a form"
	| url response boundary file |
	url := self buildUrl: '/api/v1/media/'.
	boundary := WebUtils multipartBoundary. "content type multipart needs an unique boundary to seperate the parts"
	file := self encodeForm: aForm.

	response := webClient
				httpPost: url
				content: (self encodeMultipartForm: file boundary: boundary)
				type: 'multipart/form-data; boundary=' , boundary
				do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess
		ifTrue: [^ response content].
