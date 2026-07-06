json-toots
thirdTootJson

	| json application approval |
	application := JsonObject new
		at: 'name' put: 'SqueakMastodon';
		at: 'website' put: nil;
		yourself.
	
	approval := JsonObject new
		at: 'automatic' put: #('public');
		at: 'current_user' put: 'automatic';
		at: 'manual' put: #();
		yourself.
	
	json := JsonObject new
		at: 'account' put: self thirdAccountJson;
		at: 'application' put: application;
		at: 'bookmarked' put: false;
		at: 'card' put: nil;
		at: 'content'
			put: '<p>Manchmal ist der beste Debugger einfach eine Tasse Kaffee und fünf Minuten Abstand vom Bildschirm. ☕🐞</p>';
		at: 'created_at' put: '2026-06-29T18:41:17.503Z';
		at: 'edited_at' put: nil;
		at: 'emojis' put: #();
		at: 'favourited' put: false;
		at: 'favourites_count' put: 5;
		at: 'filtered' put: #();
		at: 'id' put: self thirdTootID;
		at: 'in_reply_to_account_id' put: nil;
		at: 'in_reply_to_id' put: nil;
		at: 'language' put: 'de';
		at: 'media_attachments' put: #();
		at: 'mentions' put: #();
		at: 'muted' put: false;
		at: 'pinned' put: false;
		at: 'poll' put: nil;
		at: 'quote' put: nil;
		at: 'quote_approval' put: approval;
		at: 'quotes_count' put: 0;
		at: 'reblog' put: nil;
		at: 'reblogged' put: false;
		at: 'reblogs_count' put: 2;
		at: 'replies_count' put: 1;
		at: 'sensitive' put: false;
		at: 'spoiler_text' put: '';
		at: 'tagged_collections' put: #();
		at: 'tags' put: #();
		at: 'uri'
			put: 'https://chaos.social/users/', self thirdAccount username, '/statuses/117110000000000003';
		at: 'url' put: 'https://chaos.social/@', self thirdAccount username, '/117110000000000003';
		at: 'visibility' put: 'public';
		yourself.
	
	^ json