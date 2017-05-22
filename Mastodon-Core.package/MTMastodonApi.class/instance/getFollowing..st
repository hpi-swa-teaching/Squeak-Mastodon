endpoints
getFollowing: aUserID
	"returns all users this UserID follows"
	| url response json |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/following'.
	response := webClient httpGet: url
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.