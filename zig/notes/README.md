# ZIG

```cmd
zig version
0.13.0
```

## How to start?

### Build file

`build.zig` is where you define the build tasks to execute.

My file structure is:

```
.
├── build.zig
├── main.zig
└── src
    └── main.zig
```

Build file:

```zig
const std = @import("std");

pub fn build(b: *std.build) void {
    const exe = b.addExecutable(.{
        .name = "hello",
        .root_source_file = b.path("./src/main.zig"),
        .target = b.host,
    });

    b.installArtifact(exe);

    // TO RUN THE PROJECT with: Zig build run
    const run_exe = b.addRunArtifact(exec);

    const run_step = b.step("run", "Run the application");
    run_step.dependOn(&run_exe.step);
}
```

### Observations

```zig

// arrays in zig {}
var my_array: [3]u8 = [3]u8{1, 3, 4};
var my_array_inferred = [_]u8{1, 3, 4};

// strings are an array of u8
const greet = "Hola";
const greet = [_]u8{'H', 'o', 'l', 'a'}; // the same

// format string: u == utf char, s == utf string
std.debug.print("d={u} {s}{s}\n", .{ d, laugh, major_tom });

// Zig multi-strings
const lyrics =
    \\Ziggy played guitar
    \\Jamming good with Andrew Kelley
    \\And the Spiders from Mars
;

// if statements
const value = 1;
if (value == 1) { // only accepts boolean evaluation, don't coerce types to True or False
    // code
} else {
    // code
}



```
