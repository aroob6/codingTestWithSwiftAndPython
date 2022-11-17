import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var res: [Int] = []
    _ = arr.map{
        if $0 % divisor == 0 {
            res.append($0)
        }
    }
    return res.isEmpty ? [-1] : res.sorted()

//    let array = arr.sorted().filter{ $0 % divisor == 0 }
//       return  array == [] ? [-1] : array
}

print(solution([3,2,6], 10))
