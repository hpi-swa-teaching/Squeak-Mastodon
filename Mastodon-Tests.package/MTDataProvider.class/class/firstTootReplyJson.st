json-toots
firstTootReplyJson

	| json application approval mention |
	application := JsonObject new
		at: 'name' put: 'SqueakMastodon';
		at: 'website' put: nil;
		yourself.
	
	approval := JsonObject new
		at: 'automatic' put: #('public');
		at: 'current_user' put: 'automatic';
		at: 'manual' put: #();
		yourself.
	
	mention := JsonObject new
		at: 'id' put: self firstAccount id;
		at: 'username' put: self firstAccount username;
		at: 'acct' put: self firstAccount username;
		at: 'url' put: 'https://mastodon.de/@', self firstAccount username;
		yourself.
	
	json := JsonObject new
		at: 'account' put: self secondAccountJson;
		at: 'application' put: application;
		at: 'bookmarked' put: false;
		at: 'card' put: nil;
		at: 'content'
			put: '<p><span class="h-card" translate="no"><a href="https://mastodon.de/@', self firstAccount username, '" class="u-url mention">@<span>', self firstAccount username, '</span></a></span> Pixel Perfect ist kein Zustand, sondern ein Lebensstil.</p>';
		at: 'created_at' put: '2026-06-30T07:24:12.431Z';
		at: 'edited_at' put: nil;
		at: 'emojis' put: #();
		at: 'favourited' put: false;
		at: 'favourites_count' put: 1;
		at: 'filtered' put: #();
		at: 'id' put: '116810000000000004';
		at: 'in_reply_to_account_id' put: self firstAccount id;
		at: 'in_reply_to_id' put: self firstTootID;
		at: 'language' put: 'de';
		at: 'media_attachments' put: {};
		at: 'mentions' put: {mention};
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
		at: 'tags' put: #();
		at: 'uri'
			put: 'https://mastodon.de/users/', self secondAccount username, '/statuses/116810000000000004';
		at: 'url' put: 'https://mastodon.de/@', self secondAccount username, '/116810000000000004';
		at: 'visibility' put: 'public';
		yourself.
	
	^ json