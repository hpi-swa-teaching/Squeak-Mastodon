render
removeMedia

	self media removeAll.
	self mediaPreview removeAllMorphs.
	
	self tootTextArea contents size = 0 ifTrue: [self sendButton enabled: false]