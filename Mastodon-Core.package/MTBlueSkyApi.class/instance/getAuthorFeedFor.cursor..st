helpers
getAuthorFeedFor: anAccountID cursor: aCursor
	| url response json feed toots |
	url := self buildUrl: '/xrpc/app.bsky.feed.getAuthorFeed?limit=30&actor=', anAccountID.
	aCursor ifNotNil: [url := url, '&cursor=', aCursor].
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky author feed request failed'].
	json := self deserialize: response.
	feed := json at: 'feed' ifAbsent: [#()].
	toots := feed collect: [:item | self tootFromFeedItem: item].
	^ MTResult value: toots