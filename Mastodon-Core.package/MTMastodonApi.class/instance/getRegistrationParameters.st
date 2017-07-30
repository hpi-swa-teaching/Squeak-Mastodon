authentification
getRegistrationParameters
	^ Dictionary newFromPairs: {
		'client_name'. 'SqueakMastodon'.
		'redirect_uris'. 'urn:ietf:wg:oauth:2.0:oob'.
		'scopes'. self class scope}.