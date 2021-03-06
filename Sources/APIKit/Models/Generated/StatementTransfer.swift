//
//  StatementTransfer.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct StatementTransfer: Codable {

    // MARK: Instance Variables

    public let destinyAccount: String?
    public let destinyAgencyCode: String?
    public let destinyBankName: String?
    public let nsu: String?
    public let operationDate: String?
    public let status: String?
    public let type: String?
    public let value: Float?

    // MARK: - Initializers

    public init(destinyAccount: String?, destinyAgencyCode: String?, destinyBankName: String?, nsu: String?, operationDate: String?, status: String?, type: String?, value: Float?) {
        self.destinyAccount = destinyAccount
        self.destinyAgencyCode = destinyAgencyCode
        self.destinyBankName = destinyBankName
        self.nsu = nsu
        self.operationDate = operationDate
        self.status = status
        self.type = type
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case destinyAccount  = "nroContaDestino" 
        case destinyAgencyCode  = "codAgDestino" 
        case destinyBankName  = "nomeBancoDestino" 
        case nsu   
        case operationDate  = "dataOperacao" 
        case status   
        case type  = "tipo" 
        case value  = "valor" 
    }
}
