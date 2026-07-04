json-toots
firstTootRebloggedJson

	| json application |
	application := JsonObject new
		at: 'name' put: 'SqueakMastodon';
		at: 'website' put: nil;
		yourself.
	
	json := JsonObject new
		at: 'account' put: self firstAccountJson;
		at: 'application' put: application;
		at: 'content' put: '';
		at: 'bookmarked' put: false;
		at: 'created_at' put: '2026-06-30T11:15:00.000Z';
		at: 'favourited' put: false;
		at: 'id' put: self firstTootRebloggedID;
		at: 'muted' put: false;
		at: 'reblog' put: self firstTootJson;
		at: 'reblogged' put: true;
		at: 'uri'
			put: 'https://mastodon.de/users/', self firstAccount username, '/statuses/116810000000000010';
		at: 'url' put: 'https://mastodon.de/@', self firstAccount username, '/116810000000000010';
		at: 'visibility' put: 'public';
		at: 'media_attachments' put: {};
		yourself.
	
	^ json