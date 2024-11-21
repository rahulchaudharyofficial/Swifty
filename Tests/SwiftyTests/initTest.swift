import Testing

@testable import Swifty

@Test("Init Test")
func memberWiseTest() async throws {
    memberWiseInit()
    assert(1 == 1)
}