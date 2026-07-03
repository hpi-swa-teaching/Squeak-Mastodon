render-buttons
testGetAuthorizationLinkButtonClickCallsGetAuthorizationLink

    | view button |
    view := MTUILoginClassTest new.
    button := view getAuthorizationLinkButton.

    button doClick.

    self assert: view authorizationLinkCalled