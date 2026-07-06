views-helpers
testLoadViewAsActivateNoError

	| window |
	window := MTUIWindow new.
	
	self
		shouldnt: [window loadView: MTUINewToot new as: #newTootView activate: #newTootButton]
		raise: Error