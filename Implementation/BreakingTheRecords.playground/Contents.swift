import UIKit

func breakingRecords(scores: [Int]) -> [Int] {
    let result = scores.dropFirst().reduce((min: scores.first!, max: scores.first!, minCount: 0, maxCount: 0)) {
        switch $1 {
        case ..<$0.min:
            return ($1, $0.max, $0.minCount + 1, $0.maxCount)
        case $0.min...$0.max:
            return $0
        default:
            return ($0.min, $1, $0.minCount, $0.maxCount + 1)
        }
    }
    return [result.maxCount, result.minCount]
}

breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
