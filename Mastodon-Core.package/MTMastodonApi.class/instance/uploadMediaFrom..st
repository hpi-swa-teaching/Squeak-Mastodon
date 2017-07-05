accessing
uploadMediaFrom: aForm "the image path should be converted to a form"
	| url response parameters boundary file pngStream |
	url := self buildUrl: '/api/v1/media/'.
	boundary := WebUtils multipartBoundary. "content type multipart needs an unique boundary to seperate the parts"
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
	response isSuccess
		ifTrue: [^ response content].
