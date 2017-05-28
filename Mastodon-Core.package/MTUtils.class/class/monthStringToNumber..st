as yet unclassified
monthStringToNumber: aString 
	"Parses following string format: 'Jun'"
	aString = 'Jan'
		ifTrue: [^ 1].
	aString = 'Feb'
		ifTrue: [^ 2].
	aString = 'Mar'
		ifTrue: [^ 3].
	aString = 'Apr'
		ifTrue: [^ 4].
	aString = 'May'
		ifTrue: [^ 5].
	aString = 'Jun'
		ifTrue: [^ 6].
	aString = 'Jul'
		ifTrue: [^ 7].
	aString = 'Aug'
		ifTrue: [^ 8].
	aString = 'Sep'
		ifTrue: [^ 9].
	aString = 'Oct'
		ifTrue: [^ 10].
	aString = 'Nov'
		ifTrue: [^ 11].
	aString = 'Dec'
		ifTrue: [^ 12]
