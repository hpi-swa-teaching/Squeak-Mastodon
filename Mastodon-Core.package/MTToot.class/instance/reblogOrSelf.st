accessing
reblogOrSelf
	"The toot that likes/reposts act on: the original for a boost, otherwise self."

	^ self reblog ifNil: [self]