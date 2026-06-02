helpers
authorizeRequest: aRequest

    self token ifNotNil: [
        aRequest
            addHeader: 'Authorization'
            value: 'Bearer ', self token]