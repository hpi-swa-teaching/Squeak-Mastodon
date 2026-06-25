icon
reply

	| replyIcon |
	replyIcon := (GitAssetLoader for: 'Squeak-Mastodon' basePath: 'assets') loadForm: 'reply.png'.
	^ (replyIcon mapColor: Color black to: Color veryLightGray) scaledToSize: 22 @ 22
