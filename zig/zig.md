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
    const exe = b.addexecutable(.{
        .name = "hello",
        .root_source_file = b.path("./src/main.zig"),
        .target = b.host,
    });

    b.installartifact(exe);
}
```
