import UIKit

func diagonalDifference(arr: [[Int]]) -> Int {
    var result = 0
    let n = arr.count
    for i in 0..<n {
        result += arr[i][i]
        result -= arr[i][(n - i) - 1]
    }
    return abs(result)
}

diagonalDifference(arr: [[11, 2, 4], [4, 5 ,6], [10, 8, -12]])
