import SwiftUI

struct ContentView: View {
    @State private var isFavorite = false
    @State private var counter: Int = 100
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hey, \(counter)")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .contentTransition(.numericText(countsDown: true))
            
            Label("Favorite", systemImage: isFavorite ? "checkmark" : "heart")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .contentTransition(.symbolEffect(.replace))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .onTapGesture {
            withAnimation(.bouncy) {
                counter += 1
                isFavorite.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
