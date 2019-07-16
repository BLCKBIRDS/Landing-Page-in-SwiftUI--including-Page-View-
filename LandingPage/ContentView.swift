//
//  ContentView.swift
//  LandingPage
//
//  Created by BLCKBIRDS on 14.07.19.
//  Copyright © 2019  BLCKBIRDS. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var title: String
    var caption: String
    var imageString: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
            Text(caption)
                .font(.caption)
                .lineLimit(nil)
            Image(imageString)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(title: "This is the first page", caption: "This is the caption of the first page", imageString: "greetings")
    }
}
#endif
