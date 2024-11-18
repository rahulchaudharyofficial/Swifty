enum ArthematicExpression {
    case number (Int)
    indirect case add(ArthematicExpression, ArthematicExpression)
    indirect case sub(ArthematicExpression, ArthematicExpression)
}

func evaluate(_ expr: ArthematicExpression) -> Int {
    switch expr {
        case let .number(value):
            return value
        case let .add(left, right):
            return evaluate(left) + evaluate(right)
        case let .sub(left, right):
            return evaluate(left) - evaluate(right)
    }
}