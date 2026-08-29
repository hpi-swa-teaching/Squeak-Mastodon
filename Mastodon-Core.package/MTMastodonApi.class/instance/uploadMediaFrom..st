endpoints
uploadMediaFrom: aForm

	| url response boundary file |
	url := self buildUrl: '/api/v1/media/'.
	boundary := WebUtils multipartBoundary.
	file := self encodeForm: aForm.
	
	response := self retryNetworkRequest: [
		self webClient
			httpPost: url
			content: (self encodeMultipartForm: file boundary: boundary)
			type: 'multipart/form-data; boundary=', boundary
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response ifNil: [^ nil].
	response isSuccess ifTrue: [^ response content]