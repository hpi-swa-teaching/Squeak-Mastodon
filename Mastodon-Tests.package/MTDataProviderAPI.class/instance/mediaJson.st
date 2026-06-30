responses-medias
mediaJson

	^ JsonObject new
		at: 'id' put: '116900000000000001';
		at: 'type' put: 'image';
		at: 'url'
			put: 'https://mastodon.de/system/media_attachments/files/116/900/000/000/000/001/original/cat.png';
		at: 'preview_url'
			put: 'https://mastodon.de/system/media_attachments/files/116/900/000/000/000/001/small/cat.png';
		at: 'remote_url' put: nil;
		at: 'description' put: 'Eine Katze';
		yourself