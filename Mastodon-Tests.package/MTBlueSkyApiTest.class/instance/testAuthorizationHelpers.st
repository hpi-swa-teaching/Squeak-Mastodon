helpers
testAuthorizationHelpers

	| api |
	api := MTBlueSkyApi new.
	
	self assert: api displayName equals: 'BlueSky'.
	self assert: api clientID equals: 'bsky-dummy-client'.
	self assert: api clientSecret equals: 'bsky-dummy-secret'.
	self
		assert: (api authorizationLinkFor: 'https://bsky.social')
		equals: 'https://bsky.app/settings/app-passwords'.
	self assert: api registerApplication equals: api