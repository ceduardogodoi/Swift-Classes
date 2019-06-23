class Person {
    let name: String
    weak var bestBuddy: Person?
    
    init(name: String) {
        self.name = name
    }

    deinit {
        print("The memory for \(name) has been deallocated!")
    }
}

var catty: Person? = Person(name: "Catty Pantherwaul")
var loki: Person? = Person(name: "Loki Moakley")
loki?.bestBuddy = catty
catty?.bestBuddy = loki

loki = nil
catty = nil
