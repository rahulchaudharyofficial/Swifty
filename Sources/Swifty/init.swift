struct Shape {
    var name: String
    var height: Double
    var width: Double
}

func memberWiseInit() {
    var s: Shape = Shape(name: "Table", height: 10.0, width: 8.0)
    s.name = "Shofa"
    print("Shape = \(s)")
}