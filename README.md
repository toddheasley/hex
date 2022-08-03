# `Hex`

Mix color using hex values in [SwiftUI](https://developer.apple.com/documentation/swiftui), [UIKit](https://developer.apple.com/documentation/uikit) and [AppKit.](https://developer.apple.com/documentation/appkit)

## Requirements

Targets [iOS](https://developer.apple.com/ios)/[iPadOS](https://developer.apple.com/ipados)/[tvOS ](https://developer.apple.com/tvos) 14, [watchOS](https://developer.apple.com/watchos) 7 and [macOS](https://developer.apple.com/macos) 11 Big Sur. Written in [Swift](https://developer.apple.com/documentation/swift) 5.6 and requires [Xcode](https://developer.apple.com/xcode) 13.3 or newer to build.

## Example Usage

```swift
import SwiftUI
import Hex

let _: [Color] = [
    Color(hex: "FFFFFF"),
    Color(hex: "#ccc", opacity: 0.9),
    Color(hex: 0x0000CC)
]
```

Plus, get the hex value of any color constructed from HSB, RGB or hex values:

```swift
print(Color(red: 0.0, green: 0.0, blue: 0.8).hex) // 0x0000CC
print(Color(white: 0.8).hexString) // "#CCCCCC"
```
