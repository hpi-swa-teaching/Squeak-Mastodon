time
testMonthStringToNumber

	self assert: (MTUtils monthStringToNumber: 'Jan') equals: 1.
	self assert: (MTUtils monthStringToNumber: 'Jun') equals: 6.
	self assert: (MTUtils monthStringToNumber: 'Dec') equals: 12