as yet unclassified
isPoint: aPoint withinBounds: aBound 
	
	^ aPoint x > aBound origin x
		and: [aPoint x < aBound corner x]
		and: aPoint y > aBound origin y
		and: [aPoint y < aBound corner y]