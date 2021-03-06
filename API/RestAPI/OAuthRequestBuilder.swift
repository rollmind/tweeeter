//
//  OAuthRequestBuilder.swift
//  Tweeeter
//
//  Created by eyebookpro on 15/12/2018.
//  Copyright © 2018 ngenii. All rights reserved.
//

import Foundation
import Model

public final class OAuthRequestBuilder: APIRequestBuilder {

    public init(configuration: APIConfiguration? = nil) {
        super.init(configuration: configuration,
                   requestCreator: OAuthRequestCreator(),
                   method: .post,
                   apiVersion: nil,
                   path: "oauth2/token")
    }

    public func request(_ completion: @escaping (AccessToken?, APIRequestError?) -> Void) {
        return requestResult(AccessToken.self, completion: { (accessToken, error) in
            if self.configuration.requestAccessTokenIfNeeded == true, let token = accessToken?.accessToken {
                self.configuration.accessTokenProvider.setAccessToken(token)
            }
            completion(accessToken, error)
        })
    }

}
