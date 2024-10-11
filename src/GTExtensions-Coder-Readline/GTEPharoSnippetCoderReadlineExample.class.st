Class {
	#name : #GTEPharoSnippetCoderReadlineExample,
	#superclass : #GtPharoSnippetCoder,
	#category : #'GTExtensions-Coder-Readline-Examples'
}

{ #category : #'as yet unclassified' }
GTEPharoSnippetCoderReadlineExample >> initializeReadlineKeybindingsFor: theAst into: coderAddOns [
<gtAstCoderAddOns: 100>
coderAddOns
	addAddOns: GTECoderReadlineAddons new.

]
