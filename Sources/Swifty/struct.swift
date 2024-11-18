struct Resolution {
    var height: Int
    var width: Int

    init() {
        self.height = 0
        self.width = 0
    }
}

class VideoMode {
    var resolution: Resolution = Resolution()
    var interlaced: Bool = false
    var frameRate: Double = 0.0
    var name: String?
}

func equality(_ a: VideoMode, _ b: VideoMode) -> Bool
{
    if (a === b) {
        return true
    }
    else {
        return false
    }
}


