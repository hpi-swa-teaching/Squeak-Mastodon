generated
defaultTootPlain

	| toot |
	toot := Dictionary new.
	
	toot at: 'id' put: self defaultTootId.
	toot at: 'created_at' put: self defaultTootCreatedAt.
	toot at: 'content' put: self defaultContent.
	"toot at: 'reblog' put: null."
	toot at: 'favourited' put: self defaultFavourited.
	toot at: 'reblogged' put: self defaultReblogged.
	toot at: 'reblogs_count' put: self defaultReblogsCount.
	toot at: 'favouritesCount' put: self defaultFavouritesCount.
	toot at: 'url' put: self defaultTootUrl.
	toot at: 'media_attachments' put: {}.
	
	^ toot