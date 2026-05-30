as yet unclassified
testValidator

	| morph string |
	morph := MTTextLineMorph new.
	morph validator: [:s | s size <= 3].
	string := ''.
	self assert: (morph validate: string).
	1 to: 3 do: [:i |
		string := string, i.
		self assert: (morph validate: string)].
	self deny: (morph validate: string, 'b')