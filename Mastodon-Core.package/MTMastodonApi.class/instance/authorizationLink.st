helpers
authorizationLink

	^ self urlForPath: 
		'/oauth/authorize?response_type=code&client_id=', 
		self clientID, 
		'&redirect_uri=urn:ietf:wg:oauth:2.0:oob&scope=read+write+follow'