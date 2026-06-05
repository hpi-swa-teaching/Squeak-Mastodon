generated
defaultHashtag

	| hashtag |
	hashtag := Dictionary new.
	
	hashtag at: 'id' put: self defaultTagId.
	hashtag at: 'name' put: self defaultTagName.
	hashtag at: 'url' put: self defaultTagUrl.
	
	^ hashtag