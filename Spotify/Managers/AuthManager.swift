//
//  AuthManager.swift
//  Spotify
//
//  Created by Darrien Huntley on 2/21/22.
//

import Foundation

// OAuth 2.0 Standard
final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "51d51c048fc8497197394cf214c656c8"
        static let clientSecret = "35fbf81b1cb84a25a0fce1f4c2265e3b"

    }
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
