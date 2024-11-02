Class {
	#name : #GTEPharoSnippetCoderReadlineExample,
	#superclass : #GtPharoSnippetCoder,
	#category : #'GTExtensions-Coder-Readline-Examples'
}

{ #category : #addons }
GTEPharoSnippetCoderReadlineExample >> initializeShortcuts: addOns [
	super initializeShortcuts: addOns.

	addOns
		addShortcuts: {GTEReadlineShortcuts readlineForwardChar.
				GTEReadlineShortcuts readlinePreviousChar.
				GTEReadlineShortcuts readlineForwardLine.
				GTEReadlineShortcuts readlinePreviousLine.
				GTEReadlineShortcuts readlineForwardWord.
				GTEReadlineShortcuts readlinePreviousWord.
				GTEReadlineShortcuts readlineBeginningOfLine.
				GTEReadlineShortcuts readlineEndOfLine.
				GTEReadlineShortcuts readlineDeleteCharAfter}
]
