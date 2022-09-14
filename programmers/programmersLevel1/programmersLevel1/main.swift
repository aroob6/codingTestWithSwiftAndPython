//
//  main.swift
//  programmersLevel1
//
//  Created by bora on 2022/09/14.
//

import Foundation

// 나머지가 1이 되는 수 찾기
func solution(_ n:Int) -> Int {
    for i in 1 ..< n {
        if n % i == 1 {
            return i
        }
    }
     return 0
}

let a = Int(readLine()!)!
print(solution(a))
