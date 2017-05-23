endpoints
getFollowing: aUserID
	"returns all users this UserID follows"
	| url |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/following'.
	^ self getRequest: url.