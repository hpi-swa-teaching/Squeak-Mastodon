render-buttons
testGetLoginButtonNoError

    | viewMorph |
    viewMorph := MTUILogin new.

    self shouldnt: [viewMorph getLoginButton] raise: Error.