integrations
removeIntegration: anIntegrationName
	self integrations remove: anIntegrationName ifAbsent: [ nil ]