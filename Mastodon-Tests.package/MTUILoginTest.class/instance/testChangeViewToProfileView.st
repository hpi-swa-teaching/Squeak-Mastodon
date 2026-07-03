actions
testChangeViewToProfileView

	| loginView |
	loginView := MTUILogin new.
	
	self shouldnt: [loginView changeViewToProfileView] raise: Error.
	
	self assert: self window viewMorph class equals: MTUIProfile