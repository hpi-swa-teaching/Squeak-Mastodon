render
testRenderNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window render] raise: Error