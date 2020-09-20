import UIKit

func designerPdfViewer(h: [Int], word: String) -> Int {
    
    let word = Array(word).map({String($0)})
    let width = word.count
    var maxHeight = 0
    
    for character in word {
        let charIndex = character as NSString
        let value = charIndex.character(at: 0) - 97
        let height = h[Int(value)]
        if height > maxHeight {
            maxHeight = height
        }
    }
    
    return width * maxHeight
}

designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], word: "zaba")

