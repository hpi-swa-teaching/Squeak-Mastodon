as yet unclassified
testPattern

	| morph |
	morph := MTTextLineMorph new.
	morph pattern: '^\d*$'.
	self assert: (morph match: '').
	self assert: (morph match: '123').
	self deny: (morph match: '123a')