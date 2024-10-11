Class {
	#name : #GTECoderExtensionInstaller,
	#superclass : #Object,
	#category : #'GTExtensions-Coder-Readline-Setup'
}

{ #category : #'as yet unclassified' }
GTECoderExtensionInstaller class >> readlineEnabledInCoder: aCoder [
	^(aCoder methodDict at: (self readlineExtensionMethod) ifAbsent: nil)
		isNil
]

{ #category : #'as yet unclassified' }
GTECoderExtensionInstaller class >> readlineEnabledInTextualCoder [
	^self readlineEnabledInCoder: GtTextualCoder class.
]

{ #category : #'as yet unclassified' }
GTECoderExtensionInstaller class >> readlineExtensionMethod [
	^ #initializeReadlineKeybindingsFor:into:
]

{ #category : #'as yet unclassified' }
GTECoderExtensionInstaller class >> refactorDisableKeybindingsInTextualCoder [
	(RBRemoveMethodRefactoring
		removeMethods: {self readlineExtensionMethod}
		from: GtTextualCoder)
		transform;
		performChanges
]

{ #category : #'as yet unclassified' }
GTECoderExtensionInstaller class >> refactorEnableKeybindingsInTextualCoder [
	(RBAddMethodRefactoring
		addMethod: 'initializeReadlineKeybindingsFor: theAst into: coderAddOns
<gtAstCoderAddOns: 100>
coderAddOns
	addAddOns: GTECoderAddons new.'
		toClass: GtTextualCoder
		inProtocols: {'*GTExtensions-Coder-Readline'}) execute
]

{ #category : #'as yet unclassified' }
GTECoderExtensionInstaller >> readlineEnabledInTextualCoder [
]
