//
//  NewImageList.swift
//  PresentationApp
//
//  Created by Anand Singh on 07/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import SwiftUI

struct NewImageList: View {
    @ObservedObject var viewModel: ImageListViewModel
    
    init(viewModel: ImageListViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                VStack {
                    ForEach(viewModel.imagesData, id: \.self) { imgData in
                        Text("JEll")
                    }
                }
            }.frame(height: 100)
                .onAppear {
                    self.viewModel.loadImages()
            }
        }
//        .navigationBarTitle(Text("SwiftUI Demo"))
//        .onAppear {
//            self.viewModel.loadImages()
//        }
    }
}

struct NewImageList_Previews: PreviewProvider {
    static var previews: some View {
        NewImageList(viewModel: ImageListViewModel())
    }
}
