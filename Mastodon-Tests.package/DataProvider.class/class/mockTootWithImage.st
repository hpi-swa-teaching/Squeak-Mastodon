as yet unclassified
mockTootWithImage

	^ '{
		"id": 42,
		"created_at": "2026-05-18T12:00:00.000Z",
		"content": "<p>Bildpost</p>",
		"reblog": null,
		"account": ', self mockAccount, ',
		"favourited": false,
		"reblogged": false,
		"reblogs_count": 0,
		"favouritesCount": 0,
		"url": "https://example.invalid/status/42",
		"media_attachments": [
			{
				"id": 1,
				"type": "image",
				"url": "https://example.invalid/media/42.png",
				"preview_url": "https://example.invalid/media/42-preview.png"
			}
		]
	}'