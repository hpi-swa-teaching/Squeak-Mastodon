endpoints
getFollowing: aUserID
	"returns all users this UserID follows"
	| url response |
	url := self buildUrl: '/api/v1/accounts/', aUserID ,'/following'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTAccount).