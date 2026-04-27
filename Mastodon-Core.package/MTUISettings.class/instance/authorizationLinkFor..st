helpers
authorizationLinkFor: aBaseURL
	^ aBaseURL, '/oauth/authorize?response_type=code&client_id=EgPNP8MWCtZEIhgRcoN9wfD2bRWkzEebc2rew-95uNs&redirect_uri=urn:ietf:wg:oauth:2.0:oob&scope=read+write+follow'