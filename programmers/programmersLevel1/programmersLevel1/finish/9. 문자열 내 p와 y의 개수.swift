import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var cntP = 0
    var cntY = 0

    _ = s.lowercased().map{
        if  String($0) == "p" {
            cntP += 1
        }
        if String($0) == "y" {
            cntY += 1
        }
    }

    ans = cntP == cntY ? true : false

    return ans
}
