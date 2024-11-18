import Testing
@testable import Swifty

@Test("PropertyTest")
func wrapperTest() async throws {
    let t: Rectangle = reactangle(8,15)
    assert (t.height == 8 && t.width == 12)
}