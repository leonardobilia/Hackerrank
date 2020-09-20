import UIKit

func getTotalX(a: [Int], b: [Int]) -> Int {

    func gcd(_ x: Int, _ y: Int) -> Int {
        let z = x % y
        if z != 0 {
            return gcd(y, z)
        } else {
            return y
        }
    }
    
    func lcm(_ x: Int, _ y: Int) -> Int {
        return (x * y) / gcd(x, y)
    }

    let factor = a.dropFirst().reduce(a.first!, lcm)
    let multiple = b.dropFirst().reduce(b.first!, gcd)
    if multiple % factor == 0 {
        return stride(from: factor, through: multiple, by: factor).reduce(0) { $0 + (multiple % $1 == 0 ? 1 : 0) }
    } else {
        return 0
    }
}

getTotalX(a: [2, 4], b: [16, 32, 96])
