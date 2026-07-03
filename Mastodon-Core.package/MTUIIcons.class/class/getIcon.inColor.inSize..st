accessing
getIcon: anIcon inColor: aColor inSize: aSize

	| icon color |
	color := Color perform: aColor asSymbol.
	
	icon := ((GitAssetLoader for: 'Squeak-Mastodon' basePath: 'assets/icons') loadForm: anIcon, '.png') copy.
	^ ((icon mapColor: Color black to: color) mapColor: Color white to: Color transparent) scaledToSize: aSize