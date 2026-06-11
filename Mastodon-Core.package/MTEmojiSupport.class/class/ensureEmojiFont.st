initialization
ensureEmojiFont

	| bytes |
	(TextConstants includesKey: #NotoEmoji) ifTrue: [^ self].
	bytes := (GitAssetLoader for: 'Squeak-Mastodon' basePath: 'assets') loadByteArray: 'NotoEmoji-Regular.ttf'.
	bytes ifNil: [^ self].
	[TTCFont installFromFontDescriptions: (TTFontReader readFrom: bytes readStream)] on: Error do: [^ self]