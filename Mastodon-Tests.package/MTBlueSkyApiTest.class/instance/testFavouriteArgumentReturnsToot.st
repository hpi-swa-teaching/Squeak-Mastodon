accessing
testFavouriteArgumentReturnsToot

	| toot |
	toot := MTToot new.
	self assert: (MTBlueSkyApi new favouriteArgumentForToot: toot id: 'abc') == toot