import Foundation


struct Todo: Codable {
    var title: String
    var isDone: Bool
}

/*
 Codable을 채택하는 이유.
 UserDefaults를 이용해 데이터를 저장하고 불러올 때, UserDefaults는 기본 데이터 타입들과 배열, 딕셔너리, Data 등의 타입만 직접 저장하고 불러 올 수 있다. 하지만 Todo의 타입은 우리가 직접 지정한 타입이라 이를 직접 저장하고 불러 올 수 없기 때문에 Todo를 Data 타입으로 변환해줄 필요가 있기 때문에 Codable를 채택합니다.
 */
