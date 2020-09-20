import UIKit

func hackerrankInString(s: String) -> String {
    var hackerrankIndex = 0
    let hackerrank = Array("hackerrank")
    
    for characters in s where hackerrankIndex < hackerrank.count {
        if characters == hackerrank[hackerrankIndex] {
            hackerrankIndex += 1
        }
    }
    
    return hackerrankIndex == hackerrank.count ? "YES" : "NO"
}

hackerrankInString(s: "hereiamstackerrank")
