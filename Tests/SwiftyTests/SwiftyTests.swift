import Testing
@testable import Swifty

@Test func testMathAdd() async throws {
    let result = math(operation: "add", leftOperand: 1, rightOperand: 2)
    assert(result == 3, "")
}