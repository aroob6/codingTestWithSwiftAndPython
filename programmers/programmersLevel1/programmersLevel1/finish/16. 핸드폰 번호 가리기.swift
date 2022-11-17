import Foundation

func solution(_ phone_number:String) -> String {
//    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
    var res = ""
    for _ in 0 ..< phone_number.count - 4 {
        res += "*"
    }
    res += phone_number.suffix(4)

    return res
}
