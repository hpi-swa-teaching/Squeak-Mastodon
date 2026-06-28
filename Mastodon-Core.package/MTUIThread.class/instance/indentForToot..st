render
indentForToot: aToot

	depths ifNil: [^ 0].
	^ ((depths at: aToot id ifAbsent: [0]) min: 10) * 50