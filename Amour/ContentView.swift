//
//  ContentView.swift
//  Amour
//
//  Created by steve on 6/26/20.
//

import SwiftUI
import AuthenticationServices

// sign in with Apple
//func onRequest(request: ASAuthorizationAppleIDRequest) {
//
//}
//
//func onCompletion(result: Result<ASAuthorization, Error>) {
//
//}

struct ContentView: View {
    var body: some View {
            TabView {
                Text("Checkout")
                    .font(.title)
                    .tabItem {
                        HStack {
                            Image(systemName: "heart.fill")
                            Text("Checkout")
                        }
                    }
                Text("Likes")
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image(systemName: "hand.thumbsup.fill")
                            Text("Likes")
                        }
                    }
                NavigationView { Channels() }.navigationBarTitle(Text("Conversations"))
                    .tabItem {
                        VStack {
                            Image(systemName: "message.fill")
                            Text("Conversations")
                        }
                    }
                Text("Profile")
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image(systemName: "person.crop.circle.fill")
                            Text("Profile")
                        }
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
