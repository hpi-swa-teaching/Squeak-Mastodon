render
refreshMenuButtons

	| shouldShow doesShow activeId |
	shouldShow := self mastodonApi isKindOf: MTBlueSkyApi.
	doesShow := menuMorph buttons anySatisfy: [:button | button id = #likedPostsButton].
	shouldShow = doesShow ifTrue: [^ self].
	activeId := (menuMorph buttons detect: [:button | button active] ifNone: [nil]) ifNotNil: [:button | button id].
	menuMorph clearButtons.
	self addMenuButtons.
	menuMorph drawButtons.
	activeId ifNotNil: [menuMorph activeButton: activeId]