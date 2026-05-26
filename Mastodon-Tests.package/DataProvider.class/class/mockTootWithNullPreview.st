as yet unclassified
mockTootWithNullPreview

	^ '{
		"id": 44,
		"created_at": "2026-05-18T12:00:00.000Z",
		"content": "<p>Bild ohne Preview</p>",
		"reblog": null,
		"account": ', self mockAccount, ',
		"favourited": false,
		"reblogged": false,
		"reblogs_count": 0,
		"favouritesCount": 0,
		"url": "https://example.invalid/status/44",
		"media_attachments": [
			{
				"id": 2,
				"type": "image",
				"url": "https://example.invalid/media/44.png",
				"preview_url": null
			}
		]
	}'