initialize
from: aJsonObject
	^ (self new)
		id: (aJsonObject at: 'id');
		following: (aJsonObject at: 'following');
		followedBy: (aJsonObject at: 'followed_by');
		blocking: (aJsonObject at: 'blocking');
		muting: (aJsonObject at: 'muting');
		requested: (aJsonObject at: 'requested');
		domainBlocking: (aJsonObject at: 'domainBlocking');
		yourself.