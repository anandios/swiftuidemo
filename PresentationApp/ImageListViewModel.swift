//
//  ImageListViewModel.swift
//  PresentationApp
//
//  Created by Anand Singh on 06/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import Combine
import SwiftUI

class ImageListViewModel: ObservableObject {
    @Published var imagesData = [ImageData]()

    private let url = "https://picsum.photos/v2/list?page=1&limit=10"
    private var task: AnyCancellable?

    func loadImages() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [ImageData].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \ImageListViewModel.imagesData, on: self)
    }
}
