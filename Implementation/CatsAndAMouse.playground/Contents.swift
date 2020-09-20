import UIKit

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    let catA = abs(x - z)
    let catB = abs(y - z)
    
    if catA < catB {
        return "Cat A"
        
    } else if catB < catA {
        return "Cat B"
        
    } else {
        return "Mouse C"
    }
}

catAndMouse(x: 1, y: 2, z: 3)
catAndMouse(x: 1, y: 3, z: 2)
