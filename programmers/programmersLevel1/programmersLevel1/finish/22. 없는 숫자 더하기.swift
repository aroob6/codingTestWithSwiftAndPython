import Foundation

func solution(_ numbers:[Int]) -> Int {
//    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
    var res = 0
    for i in 0 ..< 10 {
        if !numbers.contains(i)  {
            res += i
        }
    }
    return res
}
