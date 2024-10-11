# Glamorous Toolkit Extension - Readline Keybindings in Coders

Provides a subclass of `GtCoderAddOns` that enables keybindings similar to GNU Readline.


## Caveats

**YMMV**

I'm primarily a lisper, but I've just started to take a liking to Glamorous Toolkit. I have no Smalltalk or Pharo experience to speak of.
This project is being used to learn about the concepts of "Molding" the environment and reproducing customizations. 

Naming conventions, patterns, and concepts I'm using in this project have come from exploring within GT itself and reading source code.
It's highly likely that in it's current form, it violates principals of Smalltalk that I have yet to learn. Sorry!
# Usage

## Enable

```st
GTECoderReadlineExtensionInstaller refactorEnableKeybindingsInTextualCoder.
```
## Disable

```st
GTECoderReadlineExtensionInstaller refactorDisableKeybindingsInTextualCoder.
```

## Check Status
```st
GTECoderReadlineExtensionInstaller readlineEnabledInTextualCoder. 
```

## Installation

```st
Metacello new
	repository: 'github://ProphetOfAtnu/GTExtensions-Coder-Readline:master/src';
	baseline: 'GTExtensionsCoderReadline';
	load
```

## Load Lepiter

After installing with Metacello, you will be able to execute

```
#BaselineOfGTExtensionsCoderReadline asClass loadLepiter
```
