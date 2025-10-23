package log

import "core:terminal/ansi"

note_color :: ansi.FAINT
warn_color :: ansi.FG_YELLOW
error_color :: ansi.FG_RED
fatal_color :: ansi.FG_RED + ";" + ansi.BOLD
