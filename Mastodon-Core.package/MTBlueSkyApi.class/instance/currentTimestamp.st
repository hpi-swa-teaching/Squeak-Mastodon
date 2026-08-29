helpers
currentTimestamp

	^ DateAndTime now asUTC asString copyReplaceAll: '+00:00' with: 'Z'