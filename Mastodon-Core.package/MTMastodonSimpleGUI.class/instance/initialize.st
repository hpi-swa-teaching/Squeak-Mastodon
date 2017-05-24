as yet unclassified
initialize 
	| pw mail url api|
	url := UIManager default request: 'Enter your Mastodon Server (without https://)'. 
	url := 'https://', url.
	mail := UIManager default request: 'Enter your mail'. 
	pw := UIManager default request: 'Enter your password'. 
	api := MTMastodonApi with: url password: pw username: mail.
	self mastodonAPI: api.
	self register.
	self toot.