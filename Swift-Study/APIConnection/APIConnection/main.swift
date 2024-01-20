//
//  main.swift
//  APIConnection
//
//  Created by 장지수 on 2024/01/03.
//

import Foundation

func fetchAuctionSoldData(itemName: String, wordType: String, wordShort: String, limit: Int, apiKey: String) {
    // 경매장 시세 검색
    
    // API 엔드포인트
    let apiEndpoint = "https://api.neople.co.kr/df/auction-sold"
    
    // URLComponents를 사용하여 URL 생성
    var urlComponents = URLComponents(string: apiEndpoint)
    urlComponents?.queryItems = [
        URLQueryItem(name: "itemName", value: itemName),
        URLQueryItem(name: "wordType", value: wordType),
        URLQueryItem(name: "wordShort", value: wordShort),
        URLQueryItem(name: "limit", value: String(limit)),
        URLQueryItem(name: "apikey", value: apiKey)
    ]
    // URL이 유효한지 확인
    guard let url = urlComponents?.url else {
        print("Invalid URL")
        return
    }

    // URLSession을 사용하여 데이터 요청
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }

        // 데이터가 있는지 확인
        guard let data = data else {
            print("No data received")
            return
        }

        // 데이터를 문자열로 변환하여 출력 (실제로는 원하는 처리를 수행해야 함)
        if let resultString = String(data: data, encoding: .utf8) {
            print("API Result: \(resultString)")
        }
    }

    // 데이터 요청 시작
    task.resume()
}
import Foundation

func dfServerList(apiKey: String) {
    let apiEndpoint = "https://api.neople.co.kr/df/servers"
    
    guard var urlComponents = URLComponents(string: apiEndpoint) else {
        print("Invalid URL")
        return
    }
    
    // API 키를 헤더에 추가 (대상 서버에서 이를 지원해야 함)
    var request = URLRequest(url: urlComponents.url!)
    request.setValue(apiKey, forHTTPHeaderField: "apikey")
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }
        
        guard let data = data else {
            print("No data received")
            return
        }
        
        if let resultString = String(data: data, encoding: .utf8) {
            print("API result: \(resultString)")
        }
    }
    
    task.resume()
}

func characterSearch(apiKey : String, limit : Int,char : String) {
    let apiEndPoint = "https://api.neople.co.kr/df/servers/casillas/characters"
    var urlComponents = URLComponents(string: apiEndPoint)
    urlComponents?.queryItems = [
        URLQueryItem(name: "characterName", value: char),
        URLQueryItem(name: "jobId", value: "<jobId>"),
        URLQueryItem(name: "jobGrowId", value: "<jobGrowId>"),
        URLQueryItem(name: "isAllJobGrow", value: "<isAllJobGrow>"),
        URLQueryItem(name: "limit", value: "\(limit)"),
        URLQueryItem(name: "wordType", value: "<wordType>"),
        URLQueryItem(name: "apikey", value: apiKey)
    ]
    
    guard let url = urlComponents?.url else {
        print("Invalid URL")
        return
    }
    print(url)
    // URLSession을 사용하여 데이터 요청
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }

        // 데이터가 있는지 확인
        guard let data = data else {
            print("No data received")
            return
        }

        // 데이터를 문자열로 변환하여 출력 (실제로는 원하는 처리를 수행해야 함)
        if let resultString = String(data: data, encoding: .utf8) {
            print("API Result: \(resultString)")
        }
    }

    // 데이터 요청 시작
    task.resume()
}

// 호출 예시
let itemName = "무색 큐브 조각"
let wordType = "<wordType>"
let wordShort = "<wordShort>"
let limit = 10
let apiKey = "p80RkOAZICJFpYAwFwLfsGx3wlkiU7qq"
let char = "지쑤"
//fetchAuctionSoldData(itemName: itemName, wordType: wordType, wordShort: wordShort, limit: limit, apiKey: apiKey)
//dfServerList(apiKey: apiKey)
characterSearch(apiKey: apiKey, limit: limit, char: char)

sleep(10)

