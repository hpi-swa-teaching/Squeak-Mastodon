render
removeMedia

	self media removeAll.
	self mediaPreview removeAllMorphs.
	self media ifEmpty: [self tootTextArea contents size = 0 ifTrue: [self sendButton enabled: false]]