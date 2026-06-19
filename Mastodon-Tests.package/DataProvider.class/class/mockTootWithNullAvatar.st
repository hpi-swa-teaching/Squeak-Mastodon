fixtures
mockTootWithNullAvatar

	^ '{
		"id": 45,
		"created_at": "2026-05-18T12:00:00.000Z",
		"content": "<p>Post ohne Avatar</p>",
		"reblog": null,
		"account": {
			"id": 99,
			"username": "noavatar",
			"acct": "noavatar",
			"display_name": "Test no avatar",
			"locked": false,
			"created_at": "2026-01-01T12:00:00.000Z",
			"followers_count": 1,
			"following_count": 2,
			"statuses_count": 3,
			"note": "",
			"url": "https://example.invalid/@remote",
			"avatar": null,
			"avatar_static": null,
			"header": null,
			"header_static": null
		},
		"favourited": false,
		"reblogged": false,
		"reblogs_count": 0,
		"favouritesCount": 0,
		"url": "https://example.invalid/status/45",
		"media_attachments": []
	}'