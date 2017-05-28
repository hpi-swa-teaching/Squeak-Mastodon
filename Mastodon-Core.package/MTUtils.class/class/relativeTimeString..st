as yet unclassified
relativeTimeString: aTimeStamp 
	"converts a timestamp into a relative time like '2 hours ago'"
	| diff dayDiff |
	diff := TimeStamp now asUTC asSeconds - aTimeStamp asSeconds.
	dayDiff := (diff / 86400) floor.
	diff = 0
		ifTrue: [^ 'now'].
	diff > 0
		ifTrue: [dayDiff = 0
				ifTrue: [diff < 60
						ifTrue: [^ 'just now'].
					diff < 120
						ifTrue: [^ '1 minute ago'].
					diff < 3600
						ifTrue: [^ (diff / 60) floor asString , ' minutes ago'].
					diff < 7200
						ifTrue: [^ '1 hour ago'].
					diff < 86400
						ifTrue: [^ (diff / 3600) floor asString , ' hours ago']].
			dayDiff = 1
				ifTrue: [^ 'yesterday'].
			dayDiff < 7
				ifTrue: [^ dayDiff asString , ' days ago'].
			dayDiff < 31
				ifTrue: [^ (dayDiff / 7) ceiling asString , ' weeks ago'].
			dayDiff < 60
				ifTrue: [^ 'last month'].
			^ aTimeStamp asMonth asString]
