as yet unclassified
testSwitchToSelectedSession

    	| api |

    	api := MTMastodonApi new.
  	api
       	username: 'Alice';
        	baseURL: 'https://mastodon.social';
        	token: 'abc'.

   	view storeCurrentSession: api.

   	view switchToSelectedSession.

   	self
        assert: (MTSettingsStore default at: #provider)
        equals: 'mastodon'.

    	self
        assert: (MTSettingsStore default at: #baseURL)
        equals: 'https://mastodon.social'.

    	self
        assert: (MTSettingsStore default at: #token)
        equals: 'abc'.

	self 
	   assert: MTProviderFactory mastodonInstance
	   equals: api.