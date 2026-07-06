accessing-buttons
followButton

	^ followButton ifNil: [followButton := self getFollowButton]