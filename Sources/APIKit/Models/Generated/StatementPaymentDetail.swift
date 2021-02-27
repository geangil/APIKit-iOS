//
//  StatementPaymentDetail.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct StatementPaymentDetail: Codable {

    // MARK: Instance Variables

    public let account: String?
    public let agency: String?
    public let bank: String?
    public let bankName: String?
    public let barcode: String?
    public let cpf: String?
    public let effectDate: String?
    public let name: String?
    public let processDate: String?
    public let transactionValue: Float?

    // MARK: - Initializers

    public init(account: String?, agency: String?, bank: String?, bankName: String?, barcode: String?, cpf: String?, effectDate: String?, name: String?, processDate: String?, transactionValue: Float?) {
        self.account = account
        self.agency = agency
        self.bank = bank
        self.bankName = bankName
        self.barcode = barcode
        self.cpf = cpf
        self.effectDate = effectDate
        self.name = name
        self.processDate = processDate
        self.transactionValue = transactionValue
    }

    private enum CodingKeys: String, CodingKey {
        case account  = "contaRem" 
        case agency  = "agenciaRem" 
        case bank  = "bancoRem" 
        case bankName  = "nomeBancoRem" 
        case barcode  = "codBarras" 
        case cpf  = "cpfRem" 
        case effectDate  = "dataEfetiv" 
        case name  = "nomeRem" 
        case processDate  = "dataProc" 
        case transactionValue  = "valorTransacao" 
    }
}
