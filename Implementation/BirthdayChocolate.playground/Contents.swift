import UIKit

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var sum = s.prefix(upTo: m).reduce(0, +)
    var count = sum == d ? 1 : 0
    (m..<s.count).forEach {
        sum += s[$0] - s[$0 - m]
        count += sum == d ? 1 : 0
    }
    return count
}

birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2)
