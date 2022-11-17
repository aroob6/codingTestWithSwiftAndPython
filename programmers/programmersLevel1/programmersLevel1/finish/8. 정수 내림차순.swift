import Foundation

func solution(_ n:Int64) -> Int64 {
    var res = ""
    _ = String(n).sorted(by: >).map{ res.append($0)}
    return Int64(res)!
}
