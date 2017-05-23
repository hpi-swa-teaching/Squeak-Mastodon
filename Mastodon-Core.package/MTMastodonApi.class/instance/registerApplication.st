authentification
registerApplication
	"retrieves and saves ClientID and Client Secret"
	
	| url parameters json |
	url := self baseURL, '/api/v1/apps'.
	parameters := Dictionary newFromPairs: {'client_name'. 'SqueakMastodon'. 'redirect_uris'. 'urn:ietf:wg:oauth:2.0:oob'. 'scopes'. self class scope}.
	json := self postRequest: url params: parameters.
	self clientID: (json at: 'client_id').
	self clientSecret: (json at: 'client_secret').