//
//  OnboardingView.swift
//  LandingPage
//
//  Created by BLCKBIRDS on 15.07.19.
//  Copyright © 2019 BLCKBIRDS. All rights reserved.
//

import SwiftUI

struct OnboardingView : View {
    var body: some View {
        VStack {
            PageView([ContentView(title: "This is the first page", caption: "This is the caption of the first page", imageString: "greetings"), ContentView(title: "This is the second page", caption: "This is the caption of the second page", imageString: "explore"), ContentView(title: "This is the third page", caption: "This is the caption of the third page", imageString: "start")])
                .frame(height: 600)
            Text("Button")
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
