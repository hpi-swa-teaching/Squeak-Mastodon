generated
defaultUrls

	| urls |
	urls := Dictionary new.
	urls at: 'url' put: self defaultShortUrl.
	urls at: 'expanded_url' put: self defaultExpandedUrl.
	urls at: 'display_url' put: self defaultDisplayUrl.
	
	^ urls