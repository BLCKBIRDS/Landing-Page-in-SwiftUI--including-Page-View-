//
//  PageView.swift
//  LandingPage
//
//  Created by Andreas Schultz on 14.07.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI

struct PageView<Page: View> : View {
    
    @State var currentPage = 0
    
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        VStack {
            PageViewController(currentPage: $currentPage, controllers: viewControllers)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .offset(y: -60)
        }
    }
}

#if DEBUG
struct PageView_Previews : PreviewProvider {
    static var previews: some View {
        PageView([ContentView(color: .green), ContentView(color: .blue)])
            .frame(height: 600)
    }
}
#endif
