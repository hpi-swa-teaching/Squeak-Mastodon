views
testLoadApropiateViewLoadsChooseAccountViewWhenNoTokenExists

	| window |
	window := MTUIWindow new.
	self mastodonApi token: ''.
	
	window loadApropiateView.
	
	self assert: window viewMorph class equals: MTUIProfile