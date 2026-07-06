render
indentForToot: aToot

	self depths ifNil: [^ 0].
	^ ((self depths at: aToot id ifAbsent: [0]) min: 10) * 50