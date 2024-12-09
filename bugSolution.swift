func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50

//This version handles both integer and double inputs explicitly.
func calculateArea2(width: Double, height: Double) -> Double {
    return width * height
}

let area2 = calculateArea2(width: 10, height: 5) //Now works without issues
print(area2) // Output: 50.0

let area3 = calculateArea2(width: 10.5, height: 5.2)
print(area3) // Output: 54.6 