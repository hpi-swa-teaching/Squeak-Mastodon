regex
linkUrls: aString 
	| result|
	"test :=  'https?\://([a-zA-Z0-9_-]+)\.[a-zA-Z0-9]+(/[a-zA-Z0-9_-]*)?'."
	result := aString.
	aString
		regex: 'https?\://([a-zA-Z0-9_-]+)(\.[a-zA-Z0-9]*)+(/[a-zA-Z0-9_-]*)*'
		matchesDo: [:link | result := result copyReplaceAll: link with: '<i>' , link, '</i>'].
	aString
		regex: '@[a-zA-Z0-9_-]+'
		matchesDo: [:userName | result := result copyReplaceAll: userName with: '<a href="smallTweetUser:' , userName allButFirst , '">' , userName , '</a>'].
	^ result