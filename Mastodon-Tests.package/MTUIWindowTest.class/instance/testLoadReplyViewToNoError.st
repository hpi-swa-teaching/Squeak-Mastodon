views
testLoadReplyViewToNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadReplyViewTo: MTDataProvider firstToot] raise: Error