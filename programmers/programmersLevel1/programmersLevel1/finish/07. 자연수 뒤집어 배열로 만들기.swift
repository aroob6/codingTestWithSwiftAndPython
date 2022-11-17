import Foundation

func solution(_ n:Int64) -> [Int] {
    var res: [Int] = []

    _ = String(n).map {
        res.append(Int(String($0))!)
    }

    return res.reversed()
}
