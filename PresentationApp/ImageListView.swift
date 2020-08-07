//
//  ContentView.swift
//  PresentationApp
//
//  Created by Anand Singh on 06/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import SwiftUI

struct ImageListView: View {
    @ObservedObject var viewModel: ImageListViewModel

    init(viewModel: ImageListViewModel) {
        self.viewModel = viewModel
    }

    @ViewBuilder
    var body: some View {
        if viewModel.imagesData.isEmpty {
            VStack {
                Text("No image")
            }
            .onAppear {
                self.viewModel.loadImages()
            }
        } else {
            NavigationView {
                List(viewModel.imagesData, id:\.self) {
                    ImageCell(imageData: $0)
                }
                .navigationBarTitle(Text("Picsum"))
            }
        }
    }
}

struct ImageListView_Previews: PreviewProvider {
    static var previews: some View {
        ImageListView(viewModel: ImageListViewModel())
    }
}
