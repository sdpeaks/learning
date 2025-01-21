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

	defer delete(dyn_arr) // <--- free memory, use defer like Go
	// can use `clear(&dyn_arr)` too, clear sets len to 0

	append(&dyn_arr, 1, 2, 3, 4) // when append: allocator use context.allocator
	fmt.println(dyn_arr) // [1, 2, 3, 4]

	ordered_remove(&dyn_arr, 0)
	fmt.println(dyn_arr) // [2, 3, 4]

	unordered_remove(&dyn_arr, 0)
	fmt.println(dyn_arr) // [4, 3] <--- last to removed index

	// enumerated arrays
	Colors :: enum {
		RED,
		GREEN,
		BLUE,
	}

	red_color := #partial [Colors]int { 	// <--- #partial: all no defined to zero
		.RED = 255,
	}

	fmt.println(red_color)

	// SLICES
	fixed_arr := [10]int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	first_five_slice := fixed_arr[0:5] // <--- slice, shares array mem, does not allocate


}
