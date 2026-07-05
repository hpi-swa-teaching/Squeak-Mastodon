accessing
testProfileLinkClickWiring

	| morph |
	morph := MTUIProfileLinkMorph new.
	morph target: 42.
	morph actionSelector: #openProfileForToot:.
	morph arguments: #(1 2).
	
	self assert: morph target equals: 42.
	self assert: morph actionSelector equals: #openProfileForToot:.
	self assert: morph arguments equals: #(1 2)