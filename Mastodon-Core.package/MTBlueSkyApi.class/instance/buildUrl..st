helpers
buildUrl: aString
	| base |
	base := self baseURL.
	(base isNil or: [base isEmpty]) ifTrue: [base := 'https://bsky.social'].
	(base endsWith: '/') ifTrue: [base := base allButLast].
	^ base, aString