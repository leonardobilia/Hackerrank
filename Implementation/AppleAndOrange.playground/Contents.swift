import UIKit

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let house = s...t
    let applesOnHouse = apples.reduce(0) {
        if house.contains(a + $1) {
            return $0 + 1
        }
        return $0
    }
    let orangesOnHouse = oranges.reduce(0) {
        if house.contains(b + $1) {
            return $0 + 1
        }
        return $0
    }

    print(applesOnHouse)
    print(orangesOnHouse)
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
