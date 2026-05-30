const std = @import("std");
const Io = std.Io;

const spacedout = @import("spacedout");

pub fn main() !void {
    // Prints to stderr, unbuffered, ignoring potential errors.
    std.debug.print("hello from inside the main function of the app!\n", .{});
}

