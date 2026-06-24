import SwiftUI

extension Color {
    static let otdBackground = Color(red: 0.961, green: 0.969, blue: 0.949)
    static let otdSurface = Color.white
    static let otdCoral = Color(red: 0.910, green: 0.380, blue: 0.290)
    static let otdSky = Color(red: 0.447, green: 0.722, blue: 0.831)
    static let otdNavy = Color(red: 0.118, green: 0.176, blue: 0.251)
    static let otdMuted = Color(red: 0.478, green: 0.541, blue: 0.549)
}

extension ShapeStyle where Self == Color {
    static var otdBackground: Color { .otdBackground }
    static var otdSurface: Color { .otdSurface }
    static var otdCoral: Color { .otdCoral }
    static var otdSky: Color { .otdSky }
    static var otdNavy: Color { .otdNavy }
    static var otdMuted: Color { .otdMuted }
}
