helper
hasEmojiFontAt: index in: aText

	^ (aText attributesAt: index) anySatisfy: [:attr | attr isKindOf: TextFontReference]