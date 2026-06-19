as yet unclassified
testTootUrls
	| Model |
	
	Model :=  MTToot new.
	
	Model urls: false.
		
	self assert: (Model urls)  equals: (false). 