authentification
registerApplication
	"retrieves and saves ClientID and Client Secret"
	
	| url parameters json response |
	url := self buildUrl: '/api/v1/apps'.
	parameters := self getRegistrationParameters.
	response := self postRequest: url withParameters: parameters.
	json := self deserialize: response.
	self clientID: (json at: 'client_id');
		clientSecret: (json at: 'client_secret').