package log

import "core:fmt"
import "core:terminal"
import "core:terminal/ansi"
import "core:os"

log :: proc($color: string, args: ..any) {
	if terminal.color_enabled {
		fmt.fprint(os.stderr, ansi.CSI + color + ansi.SGR)
		fmt.fprint(os.stderr, ..args)
		fmt.fprintf(os.stderr, ansi.CSI + ansi.RESET + ansi.SGR + "\n")
	} else {
		fmt.fprintln(os.stderr, ..args)
	}
}
logf :: proc($color: string, format: string, args: ..any) {
	if terminal.color_enabled {
		fmt.fprint(os.stderr, ansi.CSI + color + ansi.SGR)
		fmt.fprintf(os.stderr, format, ..args)
		fmt.fprintf(os.stderr, ansi.CSI + ansi.RESET + ansi.SGR + "\n")
	} else {
		fmt.fprintfln(os.stderr, format, ..args)
	}
}

note :: proc(args: ..any) {
	log(note_color, ..args)
}
notef :: proc(format: string, args: ..any) {
	logf(note_color, format, ..args)
}

warn :: proc(args: ..any) {
	log(warn_color, ..args)
}
warnf :: proc(format: string, args: ..any) {
	logf(warn_color, format, ..args)
}

error :: proc(args: ..any) {
	log(error_color, ..args)
}
errorf :: proc(format: string, args: ..any) {
	logf(error_color, format, ..args)
}

fatal :: proc(args: ..any) {
	log(fatal_color, ..args)
	os.exit(1)
}
fatalf :: proc(format: string, args: ..any) {
	logf(fatal_color, format, ..args)
	os.exit(1)
}
