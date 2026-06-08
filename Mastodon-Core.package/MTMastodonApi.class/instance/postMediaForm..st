requesting
postMediaForm: aForm

	| url boundary file |
	url := self urlForPath: '/api/v1/media/'.
	boundary := WebUtils multipartBoundary.
	file := self encodeForm: aForm.	
	
	^ self webClient
		httpPost: url
		content: (self encodeMultipartForm: file boundary: boundary)
		type: 'multipart/form-data; boundary=', boundary
		do: [:each | self authorizeRequest: each]