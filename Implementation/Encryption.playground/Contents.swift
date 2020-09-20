import UIKit

func encryption(s: String) -> String {
    let input = Array(s.components(separatedBy: " ").joined())
    let count = input.count

    var rows = floor(sqrt(Double(input.count)))
    let columns = ceil(sqrt(Double(input.count)))

    if (Int(rows) * Int(columns)) < count {
        rows = columns
    }

    var sentence = ""

    for i in 0..<Int(columns) {
        var word = ""
        for (index,char) in input.enumerated() {
            if index % Int(columns) == i {
                word += String(char)
            }
        }
        sentence += word + " "
    }
    
    return sentence
}

encryption(s: "chillout")
