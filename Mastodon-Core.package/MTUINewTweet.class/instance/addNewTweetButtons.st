as yet unclassified
addNewTweetButtons
	| sendButton |
	
	sendButton := UiPushButton new.
	sendButton text: 'Tweet'.
	self
		connect: sendButton
 		signal: #clicked:
 		toSelector: #tweet.
	
	self addMorphBack: sendButton.