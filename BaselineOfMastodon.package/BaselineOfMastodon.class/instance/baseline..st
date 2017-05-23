baseline
baseline: spec
	<baseline>
	spec
		for: #common 
		do: [
			spec
				package: 'Mastodon-Core';
				package: 'Mastodon-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Mastodon-Core');
				group: 'tests' with: #('Mastodon-Tests')]