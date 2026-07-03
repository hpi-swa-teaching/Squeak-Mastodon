accessing
headerAt: aHeader

	^ self headers at: aHeader ifAbsent: [nil]