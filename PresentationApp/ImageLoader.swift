//
//  ImageLoader.swift
//  PresentationApp
//
//  Created by Anand Singh on 06/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import SwiftUI
import Combine

final class Loader: ObservableObject {
    @Published var data: Data? = nil
    var task: URLSessionDataTask!

    init(_ url: URL) {
        task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, _ in
            DispatchQueue.main.async {
                self.data = data
            }
        })
        task.resume()
    }
    deinit {
        task.cancel()
    }
}
