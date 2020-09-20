import UIKit

func organizingContainers(container: [[Int]]) -> String {
    var columns = [Int]()

    for i in 0..<container.count {
        let balls = container.map({ $0[i] }).reduce(0, { $0 + $1 })
        columns.append(balls)
    }
    let rows = container.map({ $0.reduce(0, { $0 + $1 }) })
    return rows.sorted() == columns.sorted() ? "Possible" : "Impossible"
}


organizingContainers(container: [[0, 2, 1], [1, 1, 1], [2, 0, 0]])
