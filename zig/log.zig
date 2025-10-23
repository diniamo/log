const std = @import("std");

pub const note_color = "\x1B[2m";
pub const warn_color = "\x1B[33m";
pub const error_color = "\x1B[31m";
pub const fatal_color = "\x1B[31;1m";

const reset = "\x1B[0m";

pub fn log(comptime color: []const u8, comptime format: []const u8, args: anytype) void {
    std.debug.print(color ++ format ++ reset ++ "\n", args);
}

pub fn note(comptime format: []const u8, args: anytype) void {
    log(note_color, format, args);
}
pub fn warn(comptime format: []const u8, args: anytype) void {
    log(warn_color, format, args);
}
pub fn err(comptime format: []const u8, args: anytype) void {
    log(error_color, format, args);
}
pub fn fatal(comptime format: []const u8, args: anytype) noreturn {
    log(fatal_color, format, args);
    std.process.exit(1);
}
