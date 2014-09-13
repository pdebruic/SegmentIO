instance-creation
name: aFullName email: anEmailAddressString id: anId
	^ self new
		userId: anId;
		name: aFullName;
		email: anEmailAddressString;
		yourself