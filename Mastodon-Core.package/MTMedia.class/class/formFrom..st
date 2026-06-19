formFrom: fetchUrl
	| doc |
	^ [
		doc := HTTPSocket httpGet: fetchUrl.
		doc binary; reset.
		ImageReadWriter formFromStream: doc
	] on: Error do: [ :e | nil ]