accessing
changeInstanceTo: aCredential
	
	self flushCaches.
	^ instance :=  self for: aCredential