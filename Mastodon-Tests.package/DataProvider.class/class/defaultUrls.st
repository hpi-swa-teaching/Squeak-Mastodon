generated
defaultUrls

	| urls |
	urls := Dictionary new.
	urls at: 'url' put: self defaultUrl.
	urls at: 'expanded_url' put: self defaultExpandedUrl.
	urls at: 'display_url' put: self defaultDisplayUrl.
	urls at: 'indices' put: self defaultIndices.
	
	^ urls