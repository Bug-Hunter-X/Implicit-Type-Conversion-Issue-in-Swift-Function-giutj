func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

// The bug appears when using integer inputs
let integerArea = calculateArea(width: 10, height: 5) // this line is implicitly treated as Double
print(integerArea) // Output: 50.0

//The bug is that even when you pass integers as arguments to calculateArea function, it's still treated as Double implicitly causing unexpected output or errors if you were expecting an integer output. 
//The issue is with the implicit type conversion in swift.

//Another example demonstrating the bug:
func calculateArea2(width: Int, height: Int) -> Int{
    return width * height
}

let area2 = calculateArea2(width: 10, height: 5)
print(area2) // output: 50

let area3 = calculateArea2(width: 10.5, height: 5.2)
print(area3) //error: Cannot convert value of type 'Double' to expected argument type 'Int'