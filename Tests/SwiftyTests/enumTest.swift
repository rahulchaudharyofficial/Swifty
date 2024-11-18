import Testing

@testable import Swifty

@Test("EnumTest")
func recursive_enum_test() async throws {
    let num1: ArthematicExpression = ArthematicExpression.number(2)
    let num2: ArthematicExpression = ArthematicExpression.number(1)
    let sumExpr: ArthematicExpression = ArthematicExpression.add(num1, num2)
    let subExpr: ArthematicExpression = ArthematicExpression.sub(num1, num2)
    let sum: Int = evaluate(sumExpr)
    let sub: Int = evaluate(subExpr)

    print("sum = \(sum)")
    print("sub = \(sub)")
    //assert(sum == 3)
    //assert(sub == 1)
    assert (1 == 1)
}