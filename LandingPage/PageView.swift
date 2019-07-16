//
//  PageView.swift
//  LandingPage
//
//  Created by BLCKBIRDS on 14.07.19.
//  Copyright © 2019 BLCKBIRDS. All rights reserved.
//

import SwiftUI

struct PageView<Page: View> : View {
    
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

#if DEBUG
struct PageView_Previews : PreviewProvider {
    static var previews: some View {
        PageView([ContentView(title: "This is the first page", caption: "This is the caption of the first page", imageString: "greetings")])
    }
}
#endif
