actions
openAuthorizationLink
	"Open the last generated authorization link in the system browser."
	(lastAuthorizationLink isNil or: [lastAuthorizationLink isEmpty])
		ifTrue: [
			resultTextLabel contents: '<i>No authorization link available. Click "Login / Get Link" first.</i>' asHtmlText.
			^ false]
	MTUtils openLink: lastAuthorizationLink.
	^ true
