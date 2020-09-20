import UIKit

func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map {
        if $0 < 38 {
            return $0
        }
        
        let diff = 5 - ($0 % 5)
        if diff < 3 {
            return $0 + diff
        }
        return $0
    }
}

gradingStudents(grades: [73, 67, 38, 33])

