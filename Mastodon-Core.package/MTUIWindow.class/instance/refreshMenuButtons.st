render
refreshMenuButtons

	| shouldShow doesShow activeId |
	shouldShow := self socialProvider showsLikedPosts.
	doesShow := self menuMorph buttons anySatisfy: [:button | button id = #likedPostsButton].
	shouldShow = doesShow ifTrue: [^ self].
	activeId := (self menuMorph buttons detect: [:button | button active] ifNone: [nil]) ifNotNil: [:button | button id].
	self menuMorph clearButtons.
	self addMenuButtons.
	self menuMorph drawButtons.
	activeId ifNotNil: [self menuMorph activeButton: activeId]