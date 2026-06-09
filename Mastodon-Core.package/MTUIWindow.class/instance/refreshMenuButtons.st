render
refreshMenuButtons
	| shouldShow doesShow activeId |
	shouldShow := self mastodonApi isKindOf: MTBlueSkyApi.
	doesShow := (menuMorph buttons detect: [:button | button id = #likedPostsButton] ifNone: [nil]) notNil.
	shouldShow = doesShow ifTrue: [^ self].
	activeId := (menuMorph buttons detect: [:button | button active == true] ifNone: [nil])
		ifNotNil: [:button | button id].
	menuMorph clearButtons.
	self addMenuButtons.
	menuMorph drawButtons.
	activeId ifNotNil: [menuMorph activeButton: activeId]