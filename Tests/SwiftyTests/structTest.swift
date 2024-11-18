import Testing

@testable import Swifty

@Test("EnumTest")
func equalityTest() async throws {
    let a : VideoMode = VideoMode()
    let b : VideoMode = VideoMode()
    let result: Bool = equality(a, b)
    assert(result == false)
}