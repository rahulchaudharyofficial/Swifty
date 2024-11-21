class Person {
    var residence: Residance?
}

class Residance {
    var numberOfRooms: Int = 1
}

func getNumberOfRoom() -> Int {
    let j: Person = Person()
    if let roomCount = j.residence?.numberOfRooms {
        return roomCount
    }
    else {
        return -1
    }
}
