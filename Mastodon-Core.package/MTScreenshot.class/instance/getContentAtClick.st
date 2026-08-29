mouse-action
getContentAtClick

	| point |
	point := self class cameraCursor showWhile: [Sensor waitButton].
	^ self getContentAtPoint: point