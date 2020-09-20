import UIKit

func birthdayCakeCandles(candles: [Int]) -> Int {
    let result = candles.reduce((tallest: 0, count: 0)) {
        switch $1 {
        case ..<$0.tallest:
            return $0
        case $0.tallest:
            return ($0.tallest, $0.count + 1)
        default:
            return (tallest: $1, count: 1)
        }
    }
    return result.count
}

birthdayCakeCandles(candles: [3, 2, 1, 3])
