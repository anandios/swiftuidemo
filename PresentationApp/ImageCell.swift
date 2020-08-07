//
//  ImageCell.swift
//  PresentationApp
//
//  Created by Anand Singh on 06/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import SwiftUI

struct ImageCell: View {
    private let imageData: ImageData
    @ObservedObject private var imageLoader: Loader
    private let placeholder = UIImage(named: "placeholder")!

    var image: UIImage? {
        imageLoader.data.flatMap(UIImage.init)
    }

    init(imageData: ImageData) {
        self.imageData = imageData
        self.imageLoader = Loader(URL(string: imageData.download_url)!)
    }

    var body: some View {
        VStack {
            Image(uiImage: image ?? placeholder)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .cornerRadius(7)
                .shadow(color: Color.black, radius: 3)

            HStack(alignment: .center) {
                Text("Author").foregroundColor(Color.gray)
                Spacer()
                Text(imageData.author)
                    .bold()
            }.frame(width: 300)
        }
    }
}

struct ImageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageCell(imageData: ImageData(id: "0000", author: "Unknown", download_url: "https://picsum.photos/id/1036/4608/3072"))
    }
}
