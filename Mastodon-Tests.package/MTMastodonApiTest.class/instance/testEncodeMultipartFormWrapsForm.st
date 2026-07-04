media endpoints
testEncodeMultipartFormWrapsForm

	| api file result |
	api := MTMastodonApi new.
	file := api encodeForm: DataProvider mockAvatarForm.

	result := api encodeMultipartForm: file boundary: 'a-boundary'.

	self assert: (result includesSubstring: 'a-boundary').
	self assert: (result includesSubstring: 'filename="file.png"')