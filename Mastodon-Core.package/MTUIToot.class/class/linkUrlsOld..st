as yet unclassified
linkUrlsOld: aString 
	| result test|
	test :=  'https?\://([a-zA-Z0-9_-]+)\.[a-zA-Z0-9]+(/[a-zA-Z0-9_-]*)?'.
	result := aString.
	aString
		regex: 'https?\://([a-zA-Z0-9_-]+)(\.[a-zA-Z0-9]*)+(/[a-zA-Z0-9_-]*)*'
		matchesDo: [:link | result := result copyReplaceAll: link with: '<i>' , link, '</i>'].
	Transcript show: result.
	aString
		regex: '@[a-zA-Z0-9_-]+'
		matchesDo: [:userName | test := result copyReplaceAll: userName with: '<a href="smallTweetUser:' , userName allButFirst , '">' , userName , '</a>'].
	aString
		regex: '#[a-zA-Z0-9_-]+'
		matchesDo: [:hashtagName | test := result copyReplaceAll: hashtagName with: '<a href="https://twitter.com/hashtag/' , hashtagName allButFirst , '">' , hashtagName , '</a>'].
	^ result