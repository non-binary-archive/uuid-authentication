//
//  AuthenticationService.swift
//  Example
//
//  Created by Luna Graysen on 2020-12-02.
//

import UIKit

struct AuthenticationService {
    static func validateId(id: String, completion: @escaping (User?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            // Stubbed implementation.
            completion(nil)
            // completion(.init(name: "Luna", deviceId: "some_device_id"))
        }
    }
    
    static func getDeviceId() -> String {
        guard let identifier = UIDevice.current.identifierForVendor else {
            return "Something went wrong"
        }
        
        return identifier.uuidString
    }
}
