tests
avatarUrlFromJson: accountJsonString

	| jsonObject |
	jsonObject := (Json new stream: (ReadStream on: accountJsonString)) readAny.
	^ jsonObject at: 'avatar'