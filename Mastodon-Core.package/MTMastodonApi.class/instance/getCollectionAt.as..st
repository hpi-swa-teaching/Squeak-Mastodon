helpers-requesting
getCollectionAt: aPath as: aClass

	^ MTResult value: (self deserialize: (self getRequest: (self urlForPath: aPath)) intoCollectionOf: aClass)