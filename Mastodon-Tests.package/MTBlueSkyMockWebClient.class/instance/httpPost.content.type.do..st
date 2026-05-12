requests
httpPost: aUrl content: aContent type: aType do: aBlock
	aBlock value: self.
	^ self httpPost: aUrl content: aContent type: aType