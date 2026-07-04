actions
toot

	| text parameters |
	self mastodonApi hasToken ifFalse: [^ false].
	
	text := self tootTextArea contents asString.
	
	text size > self maximumCharacterLength ifTrue: [
		self inform: 'Not more than ', self maximumCharacterLength asString, ' characters allowed.'.
		^ false].
	
	parameters := {
		'status' -> text.
		'visibility' -> self visibilitySetting.
		'quote_approval_policy' -> self quotePolicySetting} asOrderedCollection.
		
	self inReplyToId ifNotNil: [parameters add: 'in_reply_to_id' -> self inReplyToId].
	
	self media
		ifEmpty: [self mastodonApi tootWithParameters: parameters]
		ifNotEmpty: [self tootWithImageAndParameters: parameters].
	
	self
		updateContent: '';
		removeMedia;
		showFeedback