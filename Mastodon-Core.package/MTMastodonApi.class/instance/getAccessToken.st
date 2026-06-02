authentification
getAccessToken

	| url parameters json response |
	url := self urlForPath: '/oauth/token'.
	parameters := self newAccessDictionary.
	response := self postRequest: url withParameters: parameters.
	json := self deserialize: response.
	self token: (json at: 'access_token').

