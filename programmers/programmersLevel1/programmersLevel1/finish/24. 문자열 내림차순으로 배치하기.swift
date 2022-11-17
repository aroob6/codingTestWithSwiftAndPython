import Foundation

func solution(_ s:String) -> String {
//    return String(s.sorted { $0 > $1 })
    var res = s.map{$0}
    return String(res.sorted(by: >))
}

print(solution("Zbcdefg"))
