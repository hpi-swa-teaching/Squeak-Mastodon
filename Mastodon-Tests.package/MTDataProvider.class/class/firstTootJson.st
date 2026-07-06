json-toots
firstTootJson

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
		at: 'account' put: self firstAccountJson;
		at: 'application' put: application;
		at: 'bookmarked' put: false;
		at: 'card' put: nil;
		at: 'content' put: '<p>Wer braucht schon Pixel Perfect? ... Ich. Leider. </p>';
		at: 'created_at' put: '2026-06-30T07:18:43.767Z';
		at: 'edited_at' put: nil;
		at: 'emojis' put: #();
		at: 'favourited' put: false;
		at: 'favourites_count' put: 0;
		at: 'filtered' put: #();
		at: 'id' put: self firstTootID;
		at: 'in_reply_to_account_id' put: nil;
		at: 'in_reply_to_id' put: nil;
		at: 'language' put: 'en';
		at: 'media_attachments' put: {self firstMediaJson};
		at: 'mentions' put: #();
		at: 'muted' put: false;
		at: 'pinned' put: false;
		at: 'poll' put: nil;
		at: 'quote' put: nil;
		at: 'quote_approval' put: approval;
		at: 'quotes_count' put: 0;
		at: 'reblog' put: nil;
		at: 'reblogged' put: false;
		at: 'reblogs_count' put: 0;
		at: 'replies_count' put: 0;
		at: 'sensitive' put: false;
		at: 'spoiler_text' put: '';
		at: 'tagged_collections' put: #();
		at: 'tags' put: {
			JsonObject new
				at: 'name' put: 'smalltalk';
				at: 'url' put: 'https://mastodon.de/tags/smalltalk';
				yourself.
			JsonObject new
				at: 'name' put: 'squeak';
				at: 'url' put: 'https://mastodon.de/tags/squeak';
				yourself};
		at: 'uri'
			put: 'https://mastodon.de/users/', self firstAccount username, '/statuses/116800000000000101';
		at: 'url' put: 'https://mastodon.de/@', self firstAccount username, '/116800000000000101';
		at: 'visibility' put: 'public';
		yourself.
	
	^ json