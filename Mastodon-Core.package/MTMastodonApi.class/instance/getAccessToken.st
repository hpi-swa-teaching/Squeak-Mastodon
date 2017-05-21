authentification
getAccessToken
	"retrieves and saves Bearer Token"

	| url parameters response json |
	url := self baseURL, '/oauth/token'.
	parameters := Dictionary newFromPairs: {'password'. self password. 'username'. self username. 'scope'. self class scope. 'client_id'. self clientID. 'client_secret'. self clientSecret. 'grant_type'. 'password' }.
	response := webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'.
	json := self deserialize: (response content).
	self token: (json at: 'access_token').

