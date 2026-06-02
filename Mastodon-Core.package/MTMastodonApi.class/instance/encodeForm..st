helpers
encodeForm: aForm

	| pngStream |
	pngStream := (ReadWriteStream on: (ByteArray new: 1024))
		binary;
		yourself.
	PNGReadWriter putForm: aForm onStream: pngStream.
	^ (MIMELocalFileDocument contentType: 'text/plain' content: '') contentStream: pngStream