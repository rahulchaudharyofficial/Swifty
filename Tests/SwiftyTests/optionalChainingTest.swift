import Testing
@testable import Swifty

@Test func getNumberOfRoomTest() async throws {
    let numberOfRooms: Int = getNumberOfRoom()
    print("num of rooms = \(numberOfRooms)")
    assert(numberOfRooms == -1)
}