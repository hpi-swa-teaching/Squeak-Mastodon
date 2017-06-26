authentification
getAccessToken
	"retrieves and saves Bearer Token"

	| url parameters json response |
	url := self buildUrl: '/oauth/token'.
	parameters := Dictionary newFromPairs: {'password'. self password. 
	'username'. self username. 
	'scope'. self class scope. 
	'client_id'. self clientID. 
	'client_secret'. self clientSecret. 
	'grant_type'. 'password' }.
	response := self postRequest: url withParameters: parameters.
	json := self deserialize: response content.
	self token: (json at: 'access_token').

