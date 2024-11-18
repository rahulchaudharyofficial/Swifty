@propertyWrapper
struct TwelveOrLess {
    private var number: Int = 0
    var wrappedValue : Int {
        get {
            return number
        }
        set {
            number = min(newValue, 12)
        }
    }
}

struct Rectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

func reactangle(_ height: Int,_ width: Int) -> Rectangle {
    var r = Rectangle()
    r.height = height
    r.width = width
    return r
}

