Class {
	#name : #BaselineOfGTExtensionsCoderReadline,
	#superclass : #BaselineOf,
	#category : #BaselineOfGTExtensionsCoderReadline
}

{ #category : #loading }
BaselineOfGTExtensionsCoderReadline class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'GTExtensions-Coder-Readline' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGTExtensionsCoderReadline >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GTExtensions-Coder-Readline'
		]
]