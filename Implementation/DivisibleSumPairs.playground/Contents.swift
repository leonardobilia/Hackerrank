import UIKit

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0
    for i in 0..<(ar.count - 1) {
        for j in (i + 1)..<ar.count {
            if (ar[i] + ar[j]) % k == 0 {
                count += 1
            }
        }
    }
    return count
}

divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
