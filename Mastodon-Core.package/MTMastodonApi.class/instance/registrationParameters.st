constants
registrationParameters

	^ Dictionary new
		at: 'client_name' put: 'SqueakMastodon';
		at: 'redirect_uris' put: 'urn:ietf:wg:oauth:2.0:oob';
		at: 'scopes' put: self scope;
		yourself