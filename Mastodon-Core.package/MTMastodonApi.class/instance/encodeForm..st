helpers
encodeForm: aForm
	| file pngStream |
	pngStream := (ReadWriteStream
				on: (ByteArray new: 1024)) binary; yourself.
	PNGReadWriter putForm: aForm onStream: pngStream.
	file := (MIMELocalFileDocument
				contentType: 'text/plain'
				content: '') 
				contentStream: pngStream.
	^ file