import UIKit

func sherlockAndAnagrams(s: String) -> Int {
    let input = Array(s.map({ String($0) }))
    var result = Array<String>()
    var count = 0
    
    for element in 0..<input.count {
        for item in 0..<input.count where item + element < input.count {
            result.append(input[item...item + element].sorted().joined())
        }
    }
    
    let nsSet = NSCountedSet(array: result)
    
    for item in nsSet {
        switch nsSet.count(for: item) {
        case 1:
            break
            
        default:
            let i = nsSet.count(for: item)
            count += (i * i - i) / 2
        }
    }
    
    return count
}

sherlockAndAnagrams(s: "kkkk")
