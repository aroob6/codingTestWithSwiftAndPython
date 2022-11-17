import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
//    return zip(a, b).map(*).reduce(0, +)
    var res = 0
    
    for i in 0 ..< a.count {
        res += (a[i] * b[i])
    }
    return res
}
