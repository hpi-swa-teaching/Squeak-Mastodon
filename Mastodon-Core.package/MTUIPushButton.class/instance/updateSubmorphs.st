updating
updateSubmorphs

	self submorphs ifNotEmpty: [self removeAllMorphs].
		
	self icon ifNotNil: [:i | 
		self enabled
				ifTrue: [self addMorphBack: i asMorph]
				ifFalse: [self addMorphBack: i asGrayScale2 asMorph]].
	self text ifNotNil: [:t | 
		self enabled
				ifTrue: [self addMorphBack: t asHtmlText asMorph lock]
				ifFalse: [self addMorphBack: ('<font color="#444444">', t asString, '</font>') asHtmlText asMorph lock]].