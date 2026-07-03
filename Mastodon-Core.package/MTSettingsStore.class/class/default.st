*mastodon-core
default
	"Answers a default (singleton) of the class. If not existing a new one gets created."

	default ifNil: [default := self new].
	default at: #provider ifAbsentPut: [#mastodon].
	^ default