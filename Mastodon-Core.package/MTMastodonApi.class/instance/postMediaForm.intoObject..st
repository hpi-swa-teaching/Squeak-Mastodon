requesting
postMediaForm: aForm intoObject: aClass

  	self deserialize: (self postMediaForm: aForm tries: self numberOfTries) intoObjectOf: aClass