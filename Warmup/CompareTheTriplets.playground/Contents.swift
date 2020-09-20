import UIKit

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    let bobPoints = zip(b, a).reduce(0) { $0 + ($1.0 > $1.1 ? 1 : 0) }
    let alicePoints = zip(a, b).reduce(0) { $0 + ($1.0 > $1.1 ? 1 : 0) }

    return [alicePoints, bobPoints]
}

compareTriplets(a: [17, 28, 30], b: [99, 16, 8])
