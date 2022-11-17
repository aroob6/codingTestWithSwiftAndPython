import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var res = arr
    let index = res.firstIndex(of: res.min()!)
    res.remove(at: index!)

    return res.isEmpty ? [-1] : res

//    let min = arr.sorted(by: <)[0]
//        return arr.count == 1 ? [-1] : arr.compactMap({ return $0 != min ? $0 : nil })
}
