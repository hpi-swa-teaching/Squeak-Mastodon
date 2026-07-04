generated
defaultAccount

	| account |
	account := Dictionary new.
	account at: 'id' put: self defaultAccountId.
	account at: 'username' put: self defaultUsername.
	account at: 'acct' put: self defaultFederatedUsername.
	account at: 'display_name' put: self defaultDisplayName.
	account at: 'created_at' put: self defaultAccountCreatedAt.
	account at: 'followers_count' put: self defaultFollowersCount.
	account at: 'following_count' put: self defaultFollowingCount.
	account at: 'statuses_count' put: self defaultStatusesCount.
	account at: 'note' put: self defaultNote.
	account at: 'url' put: self defaultAccountUrl.
	"account at: 'locked' put: false."
	"account at: 'avatar_static' put: self defaultAvatarUrl."
	"account at: 'header_static' put: self defaultHeaderUrl."
	account at: 'avatar' put: self defaultAvatarUrl.
	account at: 'header' put: self defaultHeaderUrl.
	
	^ account