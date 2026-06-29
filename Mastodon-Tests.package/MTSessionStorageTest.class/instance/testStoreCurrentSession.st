as yet unclassified
testStoreCurrentSession

    | api sessions |

    api := MTMastodonApi new.
    api username: 'Alice'.

    view storeCurrentSession: api.

    sessions := MTSettingsStore default at: #sessions.

    self assert: sessions size equals: 1.
    self assert: sessions first == api.