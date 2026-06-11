helpers
buildUrl: aString
	| host |
	host := self baseURL ifNil: [''].
	host := host copyReplaceAll: 'https://' with: ''.
	host := host copyReplaceAll: 'http://' with: ''.
	(host endsWith: '/') ifTrue: [host := host allButLast].
	(host occurrencesOf: $.) > 1 ifTrue: [host := host copyAfter: $.].
	host isEmpty ifTrue: [host := 'bsky.social'].
	^ 'https://', host, aString