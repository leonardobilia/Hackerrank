import UIKit

func timeConversion(s: String) -> String {
    let isPM = (s.suffix(2) == "PM")
    let hours = Int(s.prefix(2))!
    let withoutAMPM = s.dropLast(2)
    if isPM && hours != 12 {
        return String(hours + 12) + withoutAMPM.dropFirst(2)
    } else if !isPM && hours == 12 {
        return "00" + withoutAMPM.dropFirst(2)
    }
    return String(withoutAMPM)
}

timeConversion(s: "07:05:45PM")
