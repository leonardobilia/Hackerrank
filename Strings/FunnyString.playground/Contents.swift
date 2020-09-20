import UIKit

func funnyString(s: String) -> String {
    let lineMap = s.map({ String($0).unicodeScalars.first!.value })
    let lineMapReversed = Array(lineMap.reversed())
    
    for (index, _) in lineMap.enumerated() {
        if index < (lineMap.count - 1) {
            let A1 = Int(lineMap[index + 1])
            let A2 = Int(lineMap[index])
            let A = abs(A1 - A2)
            
            let B1 = Int(lineMapReversed[index + 1])
            let B2 = Int(lineMapReversed[index])
            let B = abs(B1 - B2)
            
            if A != B {
                return "Not Funny"
            }
        }
    }
    return "Funny"
}

funnyString(s: "bcxz")
