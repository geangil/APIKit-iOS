//
//  MyManager.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct MyManager: Codable {

    // MARK: Instance Variables

    public let avatar: String?
    public let email: String?
    public let mobilePhone: String?
    public let name: String?
    public let phone: String?
    public let photo: String?
    public let position: String?

    // MARK: - Initializers

    public init(avatar: String?, email: String?, mobilePhone: String?, name: String?, phone: String?, photo: String?, position: String?) {
        self.avatar = avatar
        self.email = email
        self.mobilePhone = mobilePhone
        self.name = name
        self.phone = phone
        self.photo = photo
        self.position = position
    }

    private enum CodingKeys: String, CodingKey {
        case avatar  = "foto" 
        case email  = "email" 
        case mobilePhone  = "telCelular" 
        case name  = "nome" 
        case phone  = "telFixo" 
        case photo  = "fotoGerente" 
        case position  = "cargo" 
    }
}