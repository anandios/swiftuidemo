//
//  ContentView.swift
//  PresentationApp
//
//  Created by Anand Singh on 06/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import SwiftUI

struct SlideOne: View {
    var body: some View {
        VStack {
            Text("SwiftUI & Combine")
                .bold()
                .font(Font.system(size: 24))
            Text("Introduction")
                .foregroundColor(Color.red)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SlideOne()
    }
}
