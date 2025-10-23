package log

import (
	"fmt"
	"os"
)

func Note(message any) {
	NoteColor.Fprintln(os.Stderr, message)
}

func Notef(format string, a ...any) {
	NoteColor.Fprintf(os.Stderr, format, a...)
	fmt.Fprintln(os.Stderr)
}

func Success(message any) {
	SuccessColor.Fprintln(os.Stderr, message)
}

func Successf(format string, a ...any) {
	SuccessColor.Fprintf(os.Stderr, format, a...)
	fmt.Fprintln(os.Stderr)
}

func Warn(message any) {
	WarnColor.Fprintln(os.Stderr, message)
}

func Warnf(format string, a ...any) {
	WarnColor.Fprintf(os.Stderr, format, a...)
	fmt.Fprintln(os.Stderr)
}

func Error(message any) {
	ErrorColor.Fprintln(os.Stderr, message)
}

func Errorf(format string, a ...any) {
	ErrorColor.Fprintf(os.Stderr, format, a...)
	fmt.Fprintln(os.Stderr)
}

func Fatal(message any) {
	FatalColor.Fprintln(os.Stderr, message)
	os.Exit(1)
}

func Fatalf(format string, a ...any) {
	FatalColor.Fprintf(os.Stderr, format, a...)
	fmt.Fprintln(os.Stderr)
	os.Exit(1)
}
