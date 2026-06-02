Account
defaultAccountJSON

	^ '{',
		(self jsonField: 'id' value: self defaultId), ',',
		(self jsonField: 'username' value: self defaultUsername), ',',
		(self jsonField: 'acct' value: self defaultFederatedUsername), ',',
		(self jsonField: 'display_name' value: self defaultDisplayName), ',',
		(self jsonField: 'created_at' value: self defaultCreatedAt), ',',
		(self jsonField: 'followers_count' value: self defaultFollowersCount), ',',
		(self jsonField: 'following_count' value: self defaultFollowingCount), ',',
		(self jsonField: 'statuses_count' value: self defaultStatusesCount), ',',
		(self jsonField: 'note' value: self defaultNote), ',',
		(self jsonField: 'url' value: self defaultPublicURL), ',',
		(self jsonField: 'avatar' value: self defaultAvatarURL), ',',
		(self jsonField: 'header' value: self defaultHeaderURL), 
	'}'