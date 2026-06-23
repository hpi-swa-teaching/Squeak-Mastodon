render
addBackButton

	| backButton |
	backButton := MTUIPushButton new.
	backButton setBalloonText: 'Go back to last tab'.
	backButton text: 'Back'.
	self connect: backButton signal: #clicked: toSelector: #goBack.
	self addMorphFront: backButton