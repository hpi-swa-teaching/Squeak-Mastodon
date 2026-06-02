endpoints
getProfileFor: aHandle
    | url response json |
    url := self buildUrl: '/xrpc/app.bsky.actor.getProfile?actor=', aHandle.
    response := self getRequest: url.
    response ifNil: [^ MTResult error: 'BlueSky profile request failed'].
    [
        json := self deserialize: response.
        ^ MTResult value: (self accountFromAuthor: json)
    ] on: Error do: [:ex |
        ^ MTResult error: 'BlueSky profile processing failed'
    ].