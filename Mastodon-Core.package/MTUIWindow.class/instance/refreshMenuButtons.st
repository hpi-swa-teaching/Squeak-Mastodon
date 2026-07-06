render
refreshMenuButtons

	| shouldShow doesShow activeId |
	shouldShow := self mastodonApi type = #BlueSky.
	doesShow := self menuMorph buttons anySatisfy: [:button | button id = #likedPostsButton].
	shouldShow = doesShow ifTrue: [^ self].
	activeId := self menuMorph buttons
		detect: [:button | button active]
		ifFound: [:button | button id]
		ifNone: [nil].
	self menuMorph clearButtons.
	self addMenuButtons.
	self menuMorph drawButtons.
	activeId ifNotNil: [self menuMorph activeButton: activeId]