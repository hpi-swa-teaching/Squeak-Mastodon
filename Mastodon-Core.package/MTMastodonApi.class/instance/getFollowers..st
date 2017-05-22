endpoints
getFollowers: aUserID
	"returns all users who follow this UserID"
	| url response json |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/followers'.
	response := webClient httpGet: url
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.