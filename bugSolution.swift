let array = [1, 2, 3, 4, 5]

let index = 10

if index < array.count {
    let element = array[index]
    print(element) //Safe access
} else {
    print("Index out of range") //Handle the error gracefully
}

//Alternative using optional binding
if let element = array[safe: index] {
    print(element)
} else {
    print("Index out of range")
}

//Extension for safe array access

public extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0 && index < count else { return nil }
        return self[index]
    }
} 