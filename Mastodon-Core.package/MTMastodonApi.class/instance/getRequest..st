requesting
getRequest: aPath
	
	^ self contentFromResponse: 
		(self webClient 
			httpGet: (self urlForPath: aPath) 
			do: [:request | self authorizeRequest: request])