accessing
headerAt: aHeader
	^ headers at: aHeader ifAbsent: [nil]
