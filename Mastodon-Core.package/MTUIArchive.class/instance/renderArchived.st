as yet unclassified
renderArchived

	| mentionMorphs |
	mentionMorphs := OrderedCollection new.
	
	archivedToots do: [:archived |
		archived status ifNotNil: [ | tootMorph |
			tootMorph := MTUIToot for: archived status.
			tootMorph render.
			
			self addMorphBack: tootMorph]]