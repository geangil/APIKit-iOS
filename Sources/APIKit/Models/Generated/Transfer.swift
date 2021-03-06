//
//  Transfer.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct Transfer: Codable {

    // MARK: Instance Variables

    public let account: String?
    public let agency: String?
    public let bank: String?
    public let code: String?
    public let id: Int?
    public let name: String?
    public let type: String?

    // MARK: - Initializers

    public init(account: String?, agency: String?, bank: String?, code: String?, id: Int?, name: String?, type: String?) {
        self.account = account
        self.agency = agency
        self.bank = bank
        self.code = code
        self.id = id
        self.name = name
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case account  = "conta" 
        case agency  = "agencia" 
        case bank  = "bancoFavorecido" 
        case code  = "codBanco" 
        case id   
        case name  = "nomeFavorecido" 
        case type  = "tipoConta" 
    }
}
