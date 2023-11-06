import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false

    var body: some View {
           
                HStack{
                    Image(systemName:"figure.walk.circle.fill")
                        .resizable()
                        .frame(width: 150, height: 100)
                        .edgesIgnoringSafeArea(.all)
                                    }
            
            .onAppear {
                // Ajoutez un délai artificiel pour simuler une tâche d'initialisation
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    isActive = true
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                // Ajoutez votre page d'accueil ici
                NavigationView {
                    WelcomeView()
                }
            }
        }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
