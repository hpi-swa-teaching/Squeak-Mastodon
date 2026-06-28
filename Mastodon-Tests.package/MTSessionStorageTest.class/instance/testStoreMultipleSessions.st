as yet unclassified
testStoreMultipleSessions

    | api1 api2 sessions |

    api1 := MTMastodonApi new.
    api2 := MTMastodonApi new.

    view storeCurrentSession: api1.
    view storeCurrentSession: api2.

    sessions := MTSettingsStore default at: #sessions.

    self assert: sessions size equals: 2.
    self assert: sessions first == api1.
    self assert: sessions second == api2.