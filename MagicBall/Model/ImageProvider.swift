import SwiftUI

final class ImageProvider {
    static func imageFromValue(for value: Int ) -> Image? {
        switch value {
        case 1:
            return Image(uiImage: Asset.ball1.image)
        case 2:
            return Image(uiImage: Asset.ball2.image)
        case 3:
            return Image(uiImage: Asset.ball3.image)
        case 4:
            return Image(uiImage: Asset.ball4.image)
        case 5:
            return Image(uiImage: Asset.ball5.image)

        default:
            return nil
        }
    }
}
