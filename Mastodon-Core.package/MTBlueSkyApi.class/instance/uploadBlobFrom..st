helpers
uploadBlobFrom: aForm

	| url pngStream response json |
	pngStream := (ReadWriteStream on: (ByteArray new: 1024))
		binary;
		yourself.
	PNGReadWriter putForm: aForm onStream: pngStream.
	url := self buildUrl: '/xrpc/com.atproto.repo.uploadBlob'.
	response := self retryNetworkRequest: [
		webClient
			httpPost: url
			content: pngStream contents
			type: 'image/png'
			do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]]].
	response ifNil: [^ nil].
	response isSuccess ifFalse: [^ nil].
	json := self deserialize: response content.
	^ json at: 'blob' ifAbsent: [nil]