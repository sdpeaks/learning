package main

// import similar to go, but need import keyword every line
import "core:fmt"

main :: proc() {
	// use of module and procedure
	fmt.println("HI!")


	// DYNAMIC ARRAYS
	dyn_arr: [dynamic]int // <--- don't allocate,
	// a dynamic array is internally is a struct: data, len, cap, allocator
	// all the fields to zero-value

	append(&dyn_arr, 1, 2, 3, 4) // when append: allocator use context.allocator
	fmt.println(dyn_arr) // [1, 2, 3, 4]

	ordered_remove(&dyn_arr, 0)
	fmt.println(dyn_arr) // [2, 3, 4]

	unordered_remove(&dyn_arr, 0)
	fmt.println(dyn_arr) // [4, 3] <--- last to removed index
}
