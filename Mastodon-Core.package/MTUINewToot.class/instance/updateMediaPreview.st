updating
updateMediaPreview
	
	self mediaPreview removeAllMorphs.
	
	self media do: [:image |
		self mediaPreview addMorphBack: (image scaledToSize: self defaultMediaPreviewSize) asMorph]