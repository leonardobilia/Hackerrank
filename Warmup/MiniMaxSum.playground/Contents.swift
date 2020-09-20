import UIKit

func miniMaxSum(arr: [Int]) -> Void {
    let sum = arr.reduce(0, +)
    print(sum - arr.max()!, sum - arr.min()!)
}

miniMaxSum(arr: [1, 2, 3, 4, 5])
