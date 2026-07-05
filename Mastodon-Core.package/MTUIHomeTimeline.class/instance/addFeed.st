actions
addFeed

	| query result feed saveResult |
	query := UIManager default request: 'Search feeds or paste a Bluesky feed link' initialAnswer: ''.
	query ifNil: [^ self].
	query := query withBlanksTrimmed.
	query isEmpty ifTrue: [^ self].
	feed := nil.
	((query beginsWith: 'at://') or: [query includesSubstring: 'bsky.app/profile/'])
		ifTrue: [result := self socialProvider feedFromUrlOrUri: query]
		ifFalse: [
			result := self socialProvider searchFeeds: query.
			result isSuccess ifTrue: [
				result value isEmpty ifTrue: [^ self inform: 'No feeds found'].
				feed := self chooseFeedFrom: result value title: 'Add Feed'.
				(self isValidFeed: feed) ifFalse: [^ self]]].
	result isError ifTrue: [^ self inform: result error].
	feed ifNil: [feed := result value].
	saveResult := self socialProvider saveFeed: feed.
	saveResult isError ifTrue: [^ self inform: saveResult error].
	self rememberFeed: feed