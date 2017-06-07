endpoints
getFollowing: aUserID
	"returns all users this UserID follows"
	| url response |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/following'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoCollectionOf: MTAccount).