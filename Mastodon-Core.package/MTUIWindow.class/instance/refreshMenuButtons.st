render
refreshMenuButtons

	| shouldShow doesShow activeId |
	shouldShow := self mastodonApi type = #BlueSky.
	doesShow := (self menuMorph buttons detect: [:button | button id = #likedPostsButton] ifNone: [nil]) notNil.
	shouldShow = doesShow ifTrue: [^ self].
	activeId := (self menuMorph buttons detect: [:button | button active == true] ifNone: [nil]) ifNotNil: [:button | button id].
	self menuMorph clearButtons.
	self addMenuButtons.
	self menuMorph drawButtons.
	activeId ifNotNil: [self menuMorph activeButton: activeId]