//
//  File.swift
//  MeDeXDataManager
//
//  Created by 加納塙大 on 2026/03/23.
//

import Foundation
import Security

public class AuthManager {
    
    public static func saveCredentials(username: String, password: String) {
        
        KeychainHelper.save(key: "com.medex.username", value: username)
        KeychainHelper.save(key: "com.medex.password", value: password)
        
    }
    
    public static func loadCredentials() -> (username: String?, password: String?) {
        let username = KeychainHelper.load(key: "com.medex.username")
        let password = KeychainHelper.load(key: "com.medex.password")
        
        return (username, password)
    }
    
}
