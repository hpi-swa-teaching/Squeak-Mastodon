updating
updateSubmorphs

	self submorphs ifNotEmpty: [self removeAllMorphs].
		
	self text ifNotNil: [:t | 
		self enabled
				ifTrue: [self addMorphBack: t asHtmlText asMorph lock]
				ifFalse: [self addMorphBack: ('<font color="#444444">', t asString, '</font>') asHtmlText asMorph lock]].