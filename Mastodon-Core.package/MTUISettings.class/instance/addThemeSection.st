render
addThemeSection

	| themeButton |
	self addMorphBack: (TextMorph new contents: '<b>Change Colour Theme</b>' asHtmlText).
	
	themeButton := MTUIPushButton new.
	themeButton text: 'Change Theme'.
	self connect: themeButton signal: #clicked: toSelector: #themeSelection.
	self addMorphBack: themeButton