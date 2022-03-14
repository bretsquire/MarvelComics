//
//  AuthHelper.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

import CryptoKit
import Foundation

class AuthHelper {
    private static let publicKey: String = "YOUR_MARVEL_PUBLIC_API_KEY"
    private static let privateKey: String = "YOUR_MARVEL_PRIVATE_API_KEY"
    
    static func generateAuthUrlParams() -> String {
        let ts: String = Int(Date().timeIntervalSince1970).description
        let hash = md5Hash(ts + privateKey + publicKey)
        return "ts=" + ts + "&apikey=" + publicKey + "&hash=" + hash
    }
    
    static func md5Hash(_ source: String) -> String {
        return Insecure.MD5.hash(data: source.data(using: .utf8)!).map { String(format: "%02hhx", $0) }.joined()
    }
}
