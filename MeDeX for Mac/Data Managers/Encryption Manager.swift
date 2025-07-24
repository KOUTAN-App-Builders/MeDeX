//
//  Encryption Mang.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/20.
//

import Foundation
import CryptoKit

struct EncryptionManager{
    let key = SymmetricKey(size: .bits256)
    
    func encrypt(data: Data) -> Data? {
        try? AES.GCM.seal(data, using: key).combined
    }
    
    func decrypt(data: Data) -> Data? {
        guard let sealedBox = try? AES.GCM.SealedBox(combined: data) else{ return nil }
        return try? AES.GCM.open(sealedBox, using: key)
    }
}
