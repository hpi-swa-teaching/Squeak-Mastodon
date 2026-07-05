link parsing
testLinkUrlsWrapsLinksAndMentions

	| result |
	result := MTUIToot linkUrls: 'Check https://squeak.org and say hi to @flo'.
	
	self assert: (result includesSubstring: '<i>https://squeak.org</i>').
	self assert: (result includesSubstring: 'smallTweetUser:flo')