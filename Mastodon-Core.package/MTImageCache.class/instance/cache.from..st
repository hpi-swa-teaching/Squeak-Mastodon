image
cache: anImageForm from: anUrl
	(anImageForm isKindOf: Form) ifFalse: [^ self].
	self at: anUrl put: anImageForm.


