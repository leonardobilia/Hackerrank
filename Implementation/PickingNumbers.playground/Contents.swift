import UIKit

func pickingNumbers(a: [Int]) -> Int {
    
    let set = NSCountedSet(array: a)
    var maxNum = 0
    
    for item in set {
        var total = 0
        let plusOne = item as! Int + 1
        if set.contains(plusOne) {
            total = set.count(for: item) + set.count(for: plusOne)
        } else {
            total = set.count(for: item)
        }
        maxNum = total > maxNum ? total : maxNum
    }
    return maxNum
}

pickingNumbers(a: [1, 2, 2, 3, 1, 2])


