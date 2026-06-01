accessing
profileButton
    profileButton ifNil: [profileButton := MTUIProfileButton new].
    ^ profileButton