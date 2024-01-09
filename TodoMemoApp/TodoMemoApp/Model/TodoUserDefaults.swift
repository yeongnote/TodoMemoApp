import Foundation


class TodoUserDefaults {
    static let shared = TodoUserDefaults()
    private let userDefaults = UserDefaults.standard
    private let todoKey = "todos"
    
    // UserDefaults에 todos 배열 저장(save)
    func saveTodos(todos: [Todo]) {
        // 할 일 데이터를 인코딩 후 UserDefaults에 저장
        if let encoded = try? JSONEncoder().encode(todos) {
            userDefaults.set(encoded, forKey: todoKey)
        }
    }
    
    // UserDefaults에서 todos 배열 불러오기(read)
    func loadTodos() -> [Todo] {
        guard let savedTodos = userDefaults.object(forKey: todoKey) as? Data else { return [] }
        if let loadedTodos = try? JSONDecoder().decode([Todo].self, from: savedTodos) {
            return loadedTodos
        }
        return []
    }
}
