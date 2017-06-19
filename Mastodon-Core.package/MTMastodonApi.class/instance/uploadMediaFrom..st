accessing
uploadMediaFrom: aForm 
	| url response parameters boundary file pngStream |
	url := self baseURL , '/api/v1/media/'.
	boundary := WebUtils multipartBoundary.
	pngStream := (ReadWriteStream
				on: (ByteArray new: 1024)) binary; yourself.
	PNGReadWriter putForm: aForm onStream: pngStream.
	file := (MIMELocalFileDocument
				contentType: 'text/plain'
				content: ''
				url: 'file://bild.png')
				contentStream: pngStream.

	parameters := Dictionary newFromPairs: {'file'. aForm}.
	response := webClient
				httpPost: url
				content: (self encodeMultipartForm: file boundary: boundary)
				type: 'multipart/form-data; boundary=' , boundary
				do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	self halt.
	response isSuccess
		ifTrue: [^ response]
