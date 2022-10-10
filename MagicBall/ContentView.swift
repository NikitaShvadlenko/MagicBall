import SwiftUI

struct ContentView: View {

    @State var ballImage = Image(uiImage: Asset.ball1.image)
    @State var tapCount = 0

    var body: some View {
        ZStack {
            Color(Asset.backgroundColor.color).ignoresSafeArea()
            VStack(spacing: 25) {
                HStack {
                    Text(L10n.tapCount(tapCount))
                        .padding(.leading, 1)
                        .foregroundColor(Color(Asset.textColor.color))
                        .opacity(0.8)
                    Spacer()
                }
                Text(L10n.askScreenTitle)
                    .font(.largeTitle)
                    .foregroundColor(Color(Asset.textColor.color))
                Spacer()
                ballImage
                Spacer()
                Button(L10n.askButtonTitle) {
                    askButtonPressed()
                }
                .frame(width: 190, height: 60.00)
                .foregroundColor(Color(Asset.askButtonTextColor.color))
                .font(.title)
                .background(Color(Asset.buttonBackgroundColor.color))
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(Color(Asset.buttonBackgroundColor.color), lineWidth: 2)
                )
                .cornerRadius(7)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func askButtonPressed() {
        guard let image = ImageProvider.imageFromValue(for: ResponseGenerator.generateRandomResponse()) else { return }
        ballImage = image
        tapCount += 1
    }
}
