import Foundation

func solution(_ x:Int) -> Bool {
    var hap = 0
    _ = String(x).map {
        hap += Int(String($0))!
    }

    return x % hap == 0 ? true : false
}
