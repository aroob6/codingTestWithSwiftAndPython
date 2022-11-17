import Foundation

func solution(_ s:String, _ n:Int) -> String {
//    return s.map {
//        var code = Int($0.asciiValue!)
//        switch code {
//        case 65...90:
//            code = (code + n - 65) % 26 + 65
//        case 97...122:
//            code = (code + n - 97) % 26 + 97
//        default:
//            break
//        }
//        return String(UnicodeScalar(UInt8(code)))
//    }.joined()
    return s.map {
        var code = Int($0.asciiValue!)
        switch code {
        case 65 ... 90:
            code = (code + n) % 26 + 52
        case 97 ... 122:
            code = (code + n) % 26 + 78
        default:
            break
        }
        return String(UnicodeScalar(UInt8(code)))
    }.joined()
}

print(solution("AB", 1))
print(solution("z", 1))ㄴ
