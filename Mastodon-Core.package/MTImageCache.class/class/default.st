as yet unclassified
default
"Answers a default (singleton) of the class. If not exisiting a new one gets created."
	default ifNil: [default := self new].
       ^ default