//
//  OnboardingView.swift
//  LandingPage
//
//  Created by Andreas Schultz on 15.07.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI

struct OnboardingView : View {
    var body: some View {
        VStack {
            PageView([ContentView(color: .green), ContentView(color: .blue), ContentView(color: .purple)])
                .frame(height: 600)
            Text("Sign-up now")
                .frame(width: 250, height: 70)
                .background(Color.gray)
                .padding(.top, 50)
        }
        
    }
}

#if DEBUG
struct OnboardingView_Previews : PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
