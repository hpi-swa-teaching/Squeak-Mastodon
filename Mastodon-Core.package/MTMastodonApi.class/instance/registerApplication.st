authentification
registerApplication
	
	| json |
	json := self getRegistrationCredentials.
	self clientID: (json at: 'client_id');
		clientSecret: (json at: 'client_secret').