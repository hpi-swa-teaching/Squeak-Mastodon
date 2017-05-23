authentification
getAccessToken
	"retrieves and saves Bearer Token"

	| url parameters json |
	url := self baseURL, '/oauth/token'.
	parameters := Dictionary newFromPairs: {'password'. self password. 'username'. self username. 'scope'. self class scope. 'client_id'. self clientID. 'client_secret'. self clientSecret. 'grant_type'. 'password' }.
	json := self postRequest: url params: parameters.
	self token: (json at: 'access_token').

