import Foundation

func solution(_ n:Int) -> String {
    var res = ""
    for i in 0 ..< n {
        res += i % 2 == 0 ? "수" : "박"
    }
    return res

//    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
//    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
}
