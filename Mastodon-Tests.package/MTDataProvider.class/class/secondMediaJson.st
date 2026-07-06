json-media
secondMediaJson

	^ JsonObject new
		at: 'id' put: self secondMediaID;
		at: 'type' put: 'image';
		at: 'url'
			put: 'https://mastodon.de/system/media_attachments/files/116/900/000/000/000/002/original/dog.png';
		at: 'preview_url'
			put: 'https://mastodon.de/system/media_attachments/files/116/900/000/000/000/002/small/dog.png';
		at: 'remote_url' put: nil;
		at: 'description' put: 'Ein Hund';
		yourself