as yet unclassified
linkUrls: aString
	| result |
	result := aString.
	aString regex: 'https?\://([a-zA-Z0-9_-]+)\.[a-zA-Z0-9]+(/[a-zA-Z0-9_-]*)?' matchesDo: [ :link | result := result copyReplaceAll: link with: '<a href="', link, '">', link, '</a>' ].
 	aString regex: '@[a-zA-Z0-9_-]+' matchesDo: [ :userName| result := result copyReplaceAll: userName with: '<a href="smallTweetUser:', userName allButFirst, '">', userName, '</a>' ].
	aString regex: '#[a-zA-Z0-9_-]+' matchesDo: [ :hashtagName| result := result copyReplaceAll: hashtagName with: '<a href="https://twitter.com/hashtag/', hashtagName allButFirst, '">', hashtagName, '</a>' ].
	^ result.