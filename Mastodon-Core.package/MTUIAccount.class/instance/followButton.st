accessing
followButton

	^ followButton ifNil: [followButton := self getFollowButton]