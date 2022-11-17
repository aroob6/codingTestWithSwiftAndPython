import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var num = Int64(x)
    var arr: [Int64] = []

    for _ in 0 ..< n {
        arr.append(num)
        num += Int64(x)
    }

    return arr
}
