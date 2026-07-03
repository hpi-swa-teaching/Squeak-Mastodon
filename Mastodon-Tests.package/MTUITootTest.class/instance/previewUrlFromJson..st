tests
previewUrlFromJson: tootJsonString

	| jsonObject mediaArray |
	jsonObject := (Json new stream: (ReadStream on: tootJsonString)) readAny.
	mediaArray := jsonObject at: 'media_attachments'.
	^ mediaArray first at: 'preview_url'