views
loadApropiateView

	self mastodonApi hasToken ifTrue: [self loadNewTootView] ifFalse: [self loadChooseAccountView]