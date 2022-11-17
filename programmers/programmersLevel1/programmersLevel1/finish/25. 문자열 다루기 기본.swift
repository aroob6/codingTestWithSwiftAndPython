import Foundation

func solution(_ s:String) -> Bool {
//    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
    if s.count == 4 || s.count == 6 {
        guard let _ = Int(s) else {
            return false
        }
    }
    else {
        return false
    }
    return true
}
