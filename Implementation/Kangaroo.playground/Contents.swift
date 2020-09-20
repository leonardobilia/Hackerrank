import UIKit

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if v2 >= v1 {
        return "NO"
    } else {
        if (x2 - x1) % (v1 - v2) == 0 {
            return "YES"
        } else {
            return "NO"
        }
    }
}

kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
