Class {
	#name : #GTECoderReadlineAddons,
	#superclass : #GtCoderAddOns,
	#category : #'GTExtensions-Coder-Readline-Coder Addons'
}

{ #category : #initalization }
GTECoderReadlineAddons >> initialize [
	super initialize.

	self
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
