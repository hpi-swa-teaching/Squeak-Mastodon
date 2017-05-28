as yet unclassified
openLink: aString
	| hostOS |
	hostOS := Smalltalk platformName.
 	(hostOS = 'Mac OS')
 		ifTrue: [STMacShell new openLinkInBrowser: aString]
 		ifFalse: [ExternalWebBrowser new open: aString asUrl].