# `Hex`

Mix `UIColor` and `NSColor` with hex values

## Requirements

Targets [iOS](https://developer.apple.com/ios)/[iPadOS](https://developer.apple.com/ipad)/[tvOS ](https://developer.apple.com/tvos) 13, as well as [watchOS](https://developer.apple.com/watchos) 6 and [macOS](https://developer.apple.com/macos) 10.15 Catalina. Written in [Swift](https://developer.apple.com/documentation/swift) 5.3 and requires [Xcode](https://developer.apple.com/xcode) 12 or newer to build.

## Example Usage

```swift
import UIKit
import Hex

let background: UIColor = UIColor(hexString: "FFFFFF")
let foreground: UIColor = UIColor(hexString: "#ccc")
let control: UIColor = UIColor(hex: 0x0000FF, alpha: 0.9)
let label: UIColor = UIColor(hex: 0x333333)
```

```swift
import Cocoa
import Hex

let background: NSColor = NSColor(hexString: "FFFFFF")
let foreground: NSColor = NSColor(hexString: "#ccc")
let control: NSColor = NSColor(hex: 0x0000FF, alpha: 0.9)
let label: NSColor = NSColor(hex: 0x333333)
```

Plus, get the hex value of _any_ color:

```swift
import UIKit
import Hex

print(UIColor.white.hexString) // "#FFFFFF"
print(UIColor.blue.hex) // 0x0000FF
```
That's it. That's the whole thing.
