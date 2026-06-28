accessing
followButton

	| followButton |
	^ followButton ifNil: [followButton := self getFollowButton]