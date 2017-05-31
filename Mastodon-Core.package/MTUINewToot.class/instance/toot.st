as yet unclassified
toot
	| text |
	self mastodonApi isAuthenticated 
	ifFalse: [self inform: 'Please login first.'. 
			^ false].
	
	text := tootTextArea contents asString.
	mastodonApi toot: text.
	tootTextArea contents: ''.