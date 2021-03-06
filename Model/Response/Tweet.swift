//
//  Tweet.swift
//  Tweeeter
//
//  Created by eyebookpro on 15/12/2018.
//  Copyright © 2018 ngenii. All rights reserved.
//

import Foundation

public struct Tweet: Decodable, Equatable {

    public let id: UInt64

    public let user: User

    public let favoriteCount: UInt64?

    public let text: String
    public let createdAt: Date

    public let entities: Entities?

}

public struct User: Decodable, Equatable {

    public let id: UInt64
    public let profileImageUrlHttps: URL?

    public let url: URL?
    public let name: String
    public let screenName: String
    public let description: String

}

public struct Entities: Decodable, Equatable {
    public var media: [Media]?
    public var urls: [URLEntity]?
}

public struct Media: Decodable, Equatable {

    public let sizes: Sizes
    public let mediaUrlHttps: URL?
    public let expandedUrl: URL?
    public let mediaUrl: URL?
    public let indices: [Int]
    public let type: String
    public let id: UInt64
    public let idStr: String
    public let displayUrl: URL?
    public let url: URL?

}

public struct URLEntity: Decodable, Equatable {
    public let url: URL?
    public let expandedUrl: URL?
    public let indices: [Int]
}

public struct Size: Decodable, Equatable {

    public let resize: String
    public let h: Double
    public let w: Double

}

public struct Sizes: Decodable, Equatable {

    public let large: Size
    public let thumb: Size
    public let small: Size
    public let medium: Size

}
