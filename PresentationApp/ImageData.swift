//
//  ImageData.swift
//  PresentationApp
//
//  Created by Anand Singh on 06/08/2020.
//  Copyright © 2020 Unknown. All rights reserved.
//

import Foundation

struct ImageData: Decodable, Hashable {
    let id: String
    let author: String
    let download_url: String!
}
