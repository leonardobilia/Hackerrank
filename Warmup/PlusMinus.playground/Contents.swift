import UIKit

func plusMinus(arr: [Int]) -> Void {
    
    var positive = 0
    var negative = 0
    var zeros = 0

    for i in arr {
        if i > 0 {
            positive += 1

        } else if i == 0 {
            zeros += 1
        
        } else {
            negative += 1
        }
    }

    let count = Double(arr.count)
    
    print(Double(positive) / count)
    print(Double(negative) / count)
    print(Double(zeros) / count)
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])

