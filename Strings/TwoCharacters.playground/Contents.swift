import UIKit

func alternate(s: String) -> Int {
    var matches = [Int]()
    var pairs = [(String, String)]()
    var pair = ("", "")
    var firstCharacter = ""
    var secondCharacter = ""
    
    guard s.count > 1 else { return 0 }
    guard Set(s).count > 1 else { return 0 }
    
    let sMap = s.map({ String($0) })
    let sSet = Array(Set(sMap))
    
    for i in 0..<(sSet.endIndex - 1) {
        for k in (i + 1)..<(sSet.endIndex) {
            pair = (sSet[i], sSet[k])
            pairs.append(pair)
        }
    }

    mainLoop: for pair in pairs {
        var match = true
        var sMapFiltered = [String]()
        
        if Set(sMap).count > 2 {
            sMapFiltered = sMap.filter({
                $0 == pair.0 || $0 == pair.1
            })
            
        } else {
            sMapFiltered = sMap
        }
        
        if let fC = sMapFiltered.first {
            firstCharacter = fC
        }
        
        secondCharacter = Array(Set(sMapFiltered.filter({
            $0 != firstCharacter
        }))).joined()
        
        for (index,char) in sMapFiltered.enumerated() {
            if  (index % 2 == 0 && char == firstCharacter) ||
                (index % 2 == 1 && char == secondCharacter) {
            } else {
                match = false
                continue mainLoop
            }
        }
        
        if match == true {
            matches.append(sMapFiltered.count)
        }
    }
    
    if matches.count > 0 {
        return matches.sorted().reversed()[0]
        
    } else {
        return 0
    }
}

alternate(s: "beabeefeab")
