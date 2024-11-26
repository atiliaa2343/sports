import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            // Background Color
            Color.black
                .edgesIgnoringSafeArea(.all) 
            
            VStack {
                Spacer()
                
                // Sports Icon
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 1000, height: 500)
                    .foregroundColor(.white)
                
                Text("Welcome to SportsX,\nthe future leader of sports prediction")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

