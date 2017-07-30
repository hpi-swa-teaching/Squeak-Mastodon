authentification
getAccessToken
	"retrieves and saves Bearer Token"

	| url parameters json response |
	url := self buildUrl: '/oauth/token'.
	parameters := self newAccessDictionary.
	response := self postRequest: url withParameters: parameters.
	json := self deserialize: response.
	self token: (json at: 'access_token').

