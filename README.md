# Implicit Type Conversion Bug in Swift

This repository demonstrates a subtle bug related to implicit type conversion in Swift functions.  The `calculateArea` function, while seemingly straightforward, exhibits unexpected behavior when integer inputs are passed, due to Swift's implicit type coercion. This can lead to difficult-to-debug issues in larger projects.

## Bug Description
The core issue lies in the implicit conversion of integer arguments to Doubles.  While this might appear harmless, it can mask underlying type errors and lead to unexpected results, especially if your function's intended behavior is to work with integers only.

## How to Reproduce
1. Clone this repository.
2. Open `bug.swift`.
3. Run the code.  Observe the results when integer and floating-point arguments are provided to `calculateArea`.

## Solution
The solution involves explicitly specifying the parameter types to ensure only integers are accepted by the function or handle type conversion explicitly. This prevents the implicit conversion and leads to more predictable and robust code. See the `bugSolution.swift` for a correction.

## Related Issues
This bug highlights the importance of: 
* Explicit type declarations in function parameters.
* Careful consideration of type conversions and potential for unexpected behavior.
* Thorough testing to catch unexpected behavior across various input types.