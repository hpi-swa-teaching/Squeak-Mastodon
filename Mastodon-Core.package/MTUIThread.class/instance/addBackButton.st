render
addBackButton

	| backButton |
	backButton := MTUIPushButton new.
	backButton setBalloonText: 'Go back to feed'.
	backButton text: 'Back to feed'.
	self connect: backButton signal: #clicked: toSelector: #goBack.
	self addMorphFront: backButton