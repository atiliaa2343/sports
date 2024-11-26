import SwiftUI


struct ContentView: View {
    enum ScreenState {
        case splash, login, main
    }
    
    @State private var screenState: ScreenState = .splash
    
    var body: some View {
        Group {
            switch screenState {
            case .splash:
                SplashScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                screenState = .login
                            }
                        }
                    }
                
            case .login:
                CreateAccountScreen{
                    withAnimation {
                        screenState = .main
                    }
                }
                
            case .main:
                MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

