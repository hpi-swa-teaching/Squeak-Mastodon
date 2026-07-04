accessing-morphs
mediaPreview

	^ mediaPreview ifNil: [
		mediaPreview := self getMediaPreview.
		self updateMediaPreview.
		^ mediaPreview]