Class {
	#name : #GTECoderReadlineExtensionInstaller,
	#superclass : #Object,
	#category : #'GTExtensions-Coder-Readline-Setup'
}

{ #category : #'api - accessing' }
GTECoderReadlineExtensionInstaller class >> readlineEnabledInCoder: aCoder [
	^(aCoder methodDict at: (self readlineExtensionMethod) ifAbsent: nil)
		isNotNil
]

{ #category : #'api - accessing' }
GTECoderReadlineExtensionInstaller class >> readlineEnabledInTextualCoder [
	^self readlineEnabledInCoder: GtTextualCoder.
]

{ #category : #'api - accessing' }
GTECoderReadlineExtensionInstaller class >> readlineExtensionMethod [
	^ #initializeReadlineKeybindingsFor:into:
]

{ #category : #'api - class updates' }
GTECoderReadlineExtensionInstaller class >> refactorDisableKeybindingsInTextualCoder [
	(RBRemoveMethodRefactoring
		removeMethods: {self readlineExtensionMethod}
		from: GtTextualCoder)
		transform;
		performChanges
]

{ #category : #'api - class updates' }
GTECoderReadlineExtensionInstaller class >> refactorEnableKeybindingsInTextualCoder [
	(RBAddMethodRefactoring
		addMethod: 'initializeReadlineKeybindingsFor: theAst into: coderAddOns
<gtAstCoderAddOns: 100>
coderAddOns
	addAddOns: GTECoderReadlineAddons new.'
		toClass: GtTextualCoder
		inProtocols: {'*GTExtensions-Coder-Readline'}) execute
]
