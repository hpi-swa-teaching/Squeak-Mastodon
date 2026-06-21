render
getHeaderMorph

	| container |
	container := self getHeaderContainer.
	self mastodonApi hasToken ifTrue: [container addMorphBack: self getCloseButton].
	^ container