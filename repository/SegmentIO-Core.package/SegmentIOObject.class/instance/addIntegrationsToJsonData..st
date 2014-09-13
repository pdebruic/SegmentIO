json-data
addIntegrationsToJsonData: aDictionary
	self hasSpecificIntegrations
		ifTrue: [ aDictionary at: 'integrations' put: integrations ]