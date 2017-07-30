initialization
from: aJsonObject
	^ (self new)
		accounts: ((aJsonObject at: 'accounts') collect: [:acc| MTAccount from: acc]);
		statuses: ((aJsonObject at: 'statuses') collect: [:toot| MTToot from: toot]);
		hashtags: (aJsonObject at: 'hashtags');
		yourself.