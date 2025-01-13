const std = @import("std");
const testing = std.testing;

export fn add(a: i32, b: i32) i32 {
    return a + b;
}

export fn sub(a: i32, b: i32) i32 {
    return a - b;
}

export fn mul(a: i32, b: i32) i32 {
    return a * b;
}

export fn div(a: i32, b: i32) i32 {
    return @divExact(a, b);
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}

test "basic sub functionality" {
    try testing.expect(sub(7, 3) == 4);
}

test "basic mul functionality" {
    try testing.expect(mul(3, 7) == 21);
}

test "basic div functionality" {
    try testing.expect(try div(21, 7) == 3);
}
