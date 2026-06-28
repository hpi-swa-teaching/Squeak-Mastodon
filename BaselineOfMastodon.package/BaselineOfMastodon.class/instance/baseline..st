baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		spec
			baseline: 'Widgets' with: [spec repository: 'github://hpi-swa/widgets/repository'];
			baseline: 'GitS' with: [spec repository: 'github://hpi-swa/git-s:latest-release/src'];
			package: 'Mastodon-Core' with: [spec requires: #('Widgets' 'GitS')];
			package: 'Mastodon-Tests' with: [spec requires: #('default')];
			yourself;
			group: 'default' with: #('Mastodon-Core');
			group: 'tests' with: #('Mastodon-Tests');
			yourself]