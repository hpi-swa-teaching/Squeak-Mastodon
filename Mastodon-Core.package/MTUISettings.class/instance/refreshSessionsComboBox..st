render
refreshSessionsComboBox: aSessionsList

    sessionsComboBox
        addItemListFrom: aSessionsList
        using: [:session :item | item text: session username].