accessing
tootLengthLabel

	^ tootLengthLabel ifNil: [tootLengthLabel := self getTootLengthLabel]