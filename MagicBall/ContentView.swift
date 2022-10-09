import SwiftUI

struct ContentView: View {
    var ballImage = Image(uiImage: Asset.ball1.image)
    var body: some View {
        ZStack {
            Color(Asset.backgroundColor.color).ignoresSafeArea()
            VStack(alignment: .center, spacing: 100) {
                Text(L10n.askScreenTitle)
                    .font(.largeTitle)
                    .foregroundColor(Color(Asset.textColor.color))
                ballImage
                Button(L10n.askButtonTitle) {
                    askButtonPressed()
                }
                .frame(width: 120, height: 60.00)
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
    }
}
