//
//  File.swift
//  PresentationApp
//
//  Created by Anand Singh on 07/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import SwiftUI

struct HorizontalList: View {
    var body: some View {
        VStack(alignment: .center) {
            Divider()
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(0..<10) { index in
                        ImageCell(imageData: ImageData(id: "0000", author: "Unknown", download_url: "https://picsum.photos/id/1036/4608/3072"))
                    }
                }.padding()
            }.frame(height: 100)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalList()
    }
}
