as yet unclassified
linkUrls: aString 
	| result test|
	test :=  'https?\://([a-zA-Z0-9_-]+)\.[a-zA-Z0-9]+(/[a-zA-Z0-9_-]*)?'.
	result := aString.
	aString
		regex: 'https?\://([a-zA-Z0-9_-]+)(\.[a-zA-Z0-9]*)+(/[a-zA-Z0-9_-]*)*'
		matchesDo: [:link | result := result copyReplaceAll: link with: '<i>' , link, '</i>'].
	^ result