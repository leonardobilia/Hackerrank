import UIKit

func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    
    for i in ar {
        sum = sum + i
    }
    return sum
}

simpleArraySum(ar: [1, 2, 3, 4, 10, 11])
