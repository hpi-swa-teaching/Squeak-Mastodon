mouse-action
getContentAtClick
	| point |
	self class cameraCursor showWhile: [point := Sensor waitButton].
	^self getContentAtPoint: point
