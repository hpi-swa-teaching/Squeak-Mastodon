json-accounts
firstAccountJson

	^ JsonObject new
		at: 'acct' put: 'quirinquasselbaum';
		at: 'avatar'
			put: 'https://mastodon.de/system/accounts/avatars/116/800/000/000/000/001/original/a4f91c8b7e2d33aa.png';
		at: 'avatar_description' put: '';
		at: 'avatar_static'
			put: 'https://mastodon.de/system/accounts/avatars/116/800/000/000/000/001/original/a4f91c8b7e2d33aa.png';
		at: 'bot' put: false;
		at: 'created_at' put: '2026-01-08T09:42:00.000Z';
		at: 'discoverable' put: true;
		at: 'display_name' put: 'Quirin Quasselbaum';
		at: 'emojis' put: #();
		at: 'fields' put: #();
		at: 'followers_count' put: 28;
		at: 'following_count' put: 34;
		at: 'group' put: false;
		at: 'header'
			put: 'https://mastodon.de/system/accounts/headers/116/800/000/000/000/001/original/7b8e0d2c91fa44bb.png';
		at: 'header_description' put: '';
		at: 'header_static'
			put: 'https://mastodon.de/system/accounts/headers/116/800/000/000/000/001/original/7b8e0d2c91fa44bb.png';
		at: 'hide_collections' put: nil;
		at: 'id' put: self firstAccountID;
		at: 'indexable' put: true;
		at: 'last_status_at' put: '2026-06-30';
		at: 'locked' put: false;
		at: 'noindex' put: false;
		at: 'note'
			put: '<p>Ich teste alles mindestens zweimal - einmal absichtlich und einmal aus Versehen. Toots über Programmierung, Kaffee und gelegentliche Geistesblitze.</p>';
		at: 'roles' put: #();
		at: 'show_featured' put: true;
		at: 'show_media' put: true;
		at: 'show_media_replies' put: true;
		at: 'statuses_count' put: 183;
		at: 'uri' put: 'https://mastodon.de/users/quirinquasselbaum';
		at: 'url' put: 'https://mastodon.de/@quirinquasselbaum';
		at: 'username' put: 'quirinquasselbaum';
		yourself