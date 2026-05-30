baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		spec baseline: 'Widgets' with: [spec repository: 'github://hpi-swa/widgets/repository'].
		spec
			package: 'Mastodon-Core' with: [spec requires: #('Widgets')];
			package: 'Mastodon-Tests' with: [spec requires: #('default')];
			yourself.
		spec
			group: 'default' with: #('Mastodon-Core');
			group: 'tests' with: #('Mastodon-Tests');
			yourself]