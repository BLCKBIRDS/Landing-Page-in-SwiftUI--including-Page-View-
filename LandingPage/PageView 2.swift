//
//  PageView.swift
//  LandingPage
//
//  Created by Andreas Schultz on 14.07.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI

struct PageView: View {
    
    var viewControllers: [UIViewController]
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

#if DEBUG
struct PageView_Previews : PreviewProvider {
    static var previews: some View {
        PageView(viewControllers: [ContentView()])
    }
}
#endif
