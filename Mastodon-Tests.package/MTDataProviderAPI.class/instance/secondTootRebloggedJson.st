responses-toots
secondTootRebloggedJson

	| json application |
	application := JsonObject new
		at: 'name' put: 'SqueakMastodon';
		at: 'website' put: nil;
		yourself.
	
	json := JsonObject new
		at: 'account' put: self firstAccountJson;
		at: 'application' put: application;
		at: 'bookmarked' put: false;
		at: 'content' put: '';
		at: 'created_at' put: '2026-06-30T11:20:00.000Z';
		at: 'favourited' put: false;
		at: 'id' put: self secondTootRebloggedID;
		at: 'muted' put: false;
		at: 'reblog' put: self secondTootJson;
		at: 'reblogged' put: true;
		at: 'uri'
			put: 'https://mastodon.de/users/', self firstAccount username, '/statuses/116810000000000011';
		at: 'url' put: 'https://mastodon.de/@', self firstAccount username, '/116810000000000011';
		at: 'visibility' put: 'public';
		at: 'media_attachments' put: {};
		yourself.
	
	^ json