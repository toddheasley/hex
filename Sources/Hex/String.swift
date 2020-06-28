import Foundation

extension String {
    var hex: Int {
        var hex: UInt64 = 0
        Scanner(string: normalizedHexString).scanHexInt64(&hex)
        return Int(hex)
    }
    
    init(hex: Int) {
        self = "#\(String(hex, radix: 16).normalizedHexString)"
    }
    
    private var normalizedHexString: String {
        let substring: Substring = uppercased().replacingOccurrences(of: "[^A-F0-9]+", with: "", options: .regularExpression).prefix(6)
        switch substring.count {
        case 3:
            return substring.map { character in
                return String(repeating: character, count: 2)
            }.joined()
        case 1:
            return String(repeating: substring.first!, count: 6)
        default:
            return "\(String(repeating: "0", count: 6 - substring.count))\(substring)"
        }
    }
}
