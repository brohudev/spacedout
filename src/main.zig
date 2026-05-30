//this is the canonical entry point. I am assuming this is responsible for:
// 1. init all the resources
// 2. start the main loop.
// 3. destroy all memory and resources at close, and handle all the high level errors and exceptions

const std = @import("std");
const spacedout = @import("spacedout");

pub fn main() !void {
    std.debug.print("Hello, {s}!\n", .{"World"});
}

