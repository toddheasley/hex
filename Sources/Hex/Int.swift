import CoreGraphics

extension Int {
    var red: CGFloat {
        return CGFloat((self & 0xFF0000) >> 16) / 255.0
    }
    
    var green: CGFloat {
        return CGFloat((self & 0x00FF00) >> 8) / 255.0
    }
    
    var blue: CGFloat {
        return CGFloat(self & 0x00FF) / 255.0
    }
    
    init(_ components: [CGFloat]? = nil) {
        switch (components ?? []).count {
        case 4: // RGB
            self = (Int(components![0] * 255.0) << 16) + (Int(components![1] * 255.0) << 8) + (Int(components![2] * 255.0) << 0)
        case 2: // Grayscale
            self = (Int(components![0] * 255.0) << 16) + (Int(components![0] * 255.0) << 8) + (Int(components![0] * 255.0) << 0)
        default:
            self = 0
        }
    }
}
