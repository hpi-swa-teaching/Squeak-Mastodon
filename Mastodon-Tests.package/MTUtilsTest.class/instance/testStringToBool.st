tests
testStringToBool

	self assert: (MTUtils stringToBool: true) equals: true.
	self assert: (MTUtils stringToBool: false) equals: false.
	self assert: (MTUtils stringToBool: nil) equals: false