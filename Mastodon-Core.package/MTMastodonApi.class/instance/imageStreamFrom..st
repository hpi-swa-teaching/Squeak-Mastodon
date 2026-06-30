helpers-requesting
imageStreamFrom: aURL

	| imageStream |
	imageStream := HTTPSocket httpGet: aURL.
	
	^ imageStream 
		binary;
		reset;
		yourself