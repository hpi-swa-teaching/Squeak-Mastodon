initialization
open
	"creates a new instance and opens it."
	MTEmojiSupport ensureEmojiFont.
	self instance: self new.
	self instance openWindow