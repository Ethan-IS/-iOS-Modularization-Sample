refresh:
	tuist clean
	tuist install
	make sync

sync:
	make gen
	tuist generate -n
	open Modularization.xcworkspace

gen:
	needle generate App/Sources/NeedleGenerated.swift ./

