responses-toots
thirdTootRebloggedJson

	| json application |
	application := JsonObject new
		at: 'name' put: 'SqueakMastodon';
		at: 'website' put: nil;
		yourself.
	
	json := JsonObject new
		at: 'account' put: self firstAccountJson;
		at: 'application' put: application;
		at: 'id' put: self thirdTootRebloggedID;
		at: 'created_at' put: '2026-06-30T11:15:00.000Z';
		at: 'reblog' put: self thirdTootJson;
		at: 'visibility' put: 'public';
		yourself.
	
	^ json