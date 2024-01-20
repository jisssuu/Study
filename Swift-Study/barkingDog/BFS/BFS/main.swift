//
//  main.swift
//  BFS
//
//  Created by 장지수 on 2023/09/11.
//

import Foundation

// 1926번

//let num = readLine()!.split(separator: " ").map{Int($0)!}
//let row = num[0]
//let col = num[1]
//var array = [[Int]]()
//var queue = [(Int,Int)]()
//var visited = Array(repeating: Array(repeating: false, count: col), count: row)
//var count = 0
//var big = 0
//
//for _ in 0..<row {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    array.append(input)
//}
//
//func bfs(array : [[Int]],r : Int,c :Int) {
//    var cur_max = 1
//    let rowLen = array.count
//    let colLen = array[0].count
//    let dr = [0, 1, 0, -1]
//    let dc = [1, 0, -1, 0]
//
//    visited[r][c] = true
//    queue.append((r,c))
//    while !queue.isEmpty {
//        let (cur_r,cur_c) = queue.removeFirst()
//        for i in 0..<4 {
//            let next_r = cur_r + dr[i]
//            let next_c = cur_c + dc[i]
//            if 0 <= next_r && next_r < rowLen && 0<=next_c && next_c < colLen {
//                if !visited[next_r][next_c] && array[next_r][next_c] == 1 {
//                    queue.append((next_r,next_c))
//                    visited[next_r][next_c] = true
//                    cur_max += 1
//                }
//            }
//        }
//    }
//    big = max(big, cur_max)
//}
//
//for i in 0..<row{
//    for j in 0..<col {
//        if !visited[i][j] && array[i][j] == 1 {
//            bfs(array: array,r: i,c: j)
//            count += 1
//        }
//    }
//}
//print(count,big)

// 2178번

//let num = readLine()!.split(separator: " ").map{Int($0)!}
//
//let row = num[0]
//let col = num[1]
//var array : [[Int]] = []
//var visited = Array(repeating: Array(repeating: false, count: col), count: row)
//var queue : [(Int,Int)] = []
//var count = 0
//
//for _ in 0..<row {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    array.append(input)
//}
//
//func bfs(array: [[Int]]) {
//    var r = 0
//    var c = 0
//
//    queue.append((r,c))
//    visited[r][c] = true
//    let dr = [0, 1, 0, -1]
//    let dc = [1, 0, -1, 0]
//
//    while !queue.isEmpty {
//        let (cur_r,cur_c) = queue.removeFirst()
//        for i in 0..<4 {
//            let next_r = cur_r + dr[i]
//            let next_c = cur_c + dc[i]
//            if next_r == row && next_c == col {
//                count += 1
//                break
//            }
//            if 0 <= next_r && next_r < row && 0 <= next_c && next_c < col {
//                if !visited[next_r][next_c] && array[next_r][next_c] == 1 {
//                    queue.append((next_r,next_c))
//                    visited[next_r][next_c] = true
//                    count += 1
//                }
//            }
//        }
//    }
//}
//
//bfs(array: array)

// 2179번

//let num = readLine()!.split(separator: " ").map { Int($0)! }
//
//let row = num[0]
//let col = num[1]
//var array: [[Int]] = []
//var visited = Array(repeating: Array(repeating: false, count: col), count: row)
//var queue: [(Int, Int)] = []
//var count = 0
//
//for _ in 0..<row {
//    let input = Array(readLine()!).map { Int(String($0))! }
//    array.append(input)
//}
//
//func bfs(array: [[Int]]) {
//    let dr = [0, 1, 0, -1]
//    let dc = [1, 0, -1, 0]
//
//    queue.append((0, 0))
//    visited[0][0] = true
//
//    while !queue.isEmpty {
//        let queueSize = queue.count
//
//        for _ in 0..<queueSize {
//            let (cur_r, cur_c) = queue.removeFirst()
//
//            if cur_r == row - 1 && cur_c == col - 1 {
//                print(count + 1)
//                return
//            }
//
//            for i in 0..<4 {
//                let next_r = cur_r + dr[i]
//                let next_c = cur_c + dc[i]
//
//                if 0 <= next_r && next_r < row && 0 <= next_c && next_c < col {
//                    if !visited[next_r][next_c] && array[next_r][next_c] == 1 {
//                        queue.append((next_r, next_c))
//                        visited[next_r][next_c] = true
//                    }
//                }
//            }
//        }
//
//        count += 1
//    }
//
//    // 도달할 수 없는 경우
//    print(-1)
//}
//
//bfs(array: array)

// 7576번
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let row = input[0]
//let col = input[1]
//var array : [[Int]] = []
//var visited = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)
//var queue : [(Int,Int)] = []
//var lastIndex = (0,0)
//var isCooked = true
//var index = 0
//for _ in 1...row {
//    let num = readLine()!.split(separator: " ").map{Int($0)!}
//    array.append(num)
//}
//let dx = [-1,1,0,0]
//let dy = [0,0,1,-1]
//
//for i in 1...row {
//    for j in 0..<col {
//        if array[i][j] == 1 {
//            queue.append((i,j))
//        }
//    }
//}
//
//func bfs(){
//    while index < queue.count{
//        let pop = queue[index]
//        index += 1
//        for i in 0...3{
//            let nx = pop.0 + dx[i]
//            let ny = pop.1 + dy[i]
//
//            if nx > 0 && nx <= row && ny >= 0 && ny < col{
//                if array[nx][ny] == 0{
//                    array[nx][ny] = 1
//                    visited[nx][ny] = visited[pop.0][pop.1] + 1
//                    queue.append((nx, ny))
//                    lastIndex = (nx, ny)
//                }
//            }
//        }
//    }
//}
//
//bfs()
//for i in 1...row{
//    for j in 0..<col{
//        if array[i][j] == 0 {
//            isCooked = false
//        }
//    }
//}
//
//if isCooked{
//    print(visited[lastIndex.0][lastIndex.1])
//}else {
//    print(-1)
//}

