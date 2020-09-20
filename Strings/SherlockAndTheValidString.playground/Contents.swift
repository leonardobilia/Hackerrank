import UIKit

func isValid(s: String) -> String {

    var dictionary = [String: Int]()

    let sSet = NSCountedSet(array: Array (s.map ({ String($0) })))
    let nSet: NSCountedSet = NSCountedSet()
    
    for char in sSet {
        nSet.add(sSet.count(for: char))
        dictionary.updateValue(sSet.count(for: char), forKey: char as! String)
    }
    
    switch nSet.count {
    case 1:
        return "YES"
        
    case 2:
        if nSet.count(for: 1) == 1 {
            return "YES"
        }
    
        var dictSorted = dictionary.sorted(by: { $0.value > $1.value })

        var highValue = dictSorted.first!.value
        highValue -= 1
        dictSorted[0].value = highValue
        
        if Set(dictSorted.map({ $0.value })).count == 1 {
            return "YES"
        }
        
        return "NO"
        
    default:
        return "NO"
    }
}

isValid(s: "aabbccddeefghi")
