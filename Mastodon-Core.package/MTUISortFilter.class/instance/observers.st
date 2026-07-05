accessing
observers
	observers = nil ifTrue: [self observers: OrderedCollection new].
	^ observers