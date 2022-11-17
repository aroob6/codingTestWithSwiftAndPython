import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
    var sum:[[Int]] = []
    for i in 0 ..< arr1.count {
        sum.append([])
        for j in 0 ..< arr1[i].count {
            sum[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    return sum
}
print(solution([[1,2],[2,3]], [[3,4],[5,6]]))
