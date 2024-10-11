Extension { #name : #GtTextualCoder }

{ #category : #'*GTExtensions-Coder-Readline' }
GtTextualCoder >> initializeReadlineKeybindingsFor: theAst into: coderAddOns [
<gtAstCoderAddOns: 100>
coderAddOns
	addAddOns: GTECoderAddons new.
]
