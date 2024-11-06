import Foundation

func math(operation: String, leftOperand: Int, rightOperand: Int) -> Int {
    switch operation {
        case "add":
            return (leftOperand + rightOperand)
        default:
            return -1
    }
}