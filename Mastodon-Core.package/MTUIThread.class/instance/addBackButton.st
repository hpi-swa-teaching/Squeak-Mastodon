render
addBackButton

	| backButton |
	backButton := MTUIPushButton new.
	backButton text: 'Back to feed'.
	self connect: backButton signal: #clicked: toSelector: #goBack.
	self addMorphFront: backButton