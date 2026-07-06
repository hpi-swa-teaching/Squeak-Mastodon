render
testRender

	| buttonMorph |
	buttonMorph := MTUIReplyButton new
		arguments: {self mastodonApi firstToot}.
	
	self shouldnt: [buttonMorph render] raise: Error