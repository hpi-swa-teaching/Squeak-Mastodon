initialization
testInitializeSetsWindowLabel

	| window |
	window := MTUIWindow new.
	
	self assert: window label equals: self mastodonApi displayName