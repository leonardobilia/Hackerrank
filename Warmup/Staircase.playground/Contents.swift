import UIKit

func staircase(n: Int) -> Void {
    let stair = (1...n).reduce("") { $0 + String(repeating: " ", count: n - $1) + String(repeating: "#", count: $1) + "\n" }
    print(stair)
}

staircase(n: 6)
