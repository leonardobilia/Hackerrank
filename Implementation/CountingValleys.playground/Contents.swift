import UIKit

func countingValleys(steps: Int, path: String) -> Int {
    let directions = Array(path).map{ String($0) }
    var altitudes = [Int]()
    var altitude = 0
    var valleys = 0

    for direction in directions {
        switch direction {
        case "U":
            altitude += 1
        case "D":
            altitude -= 1
        default:
            break
        }
        altitudes.append(altitude)
    }

    for (index, item) in altitudes.enumerated() {
        if item == 0 {
            if altitudes[index - 1] == -1 {
                valleys += 1
            }
        }
    }

    return valleys
}

countingValleys(steps: 8, path: "UDDDUDUU")
countingValleys(steps: 12, path: "DDUUDDUDUUUD")

