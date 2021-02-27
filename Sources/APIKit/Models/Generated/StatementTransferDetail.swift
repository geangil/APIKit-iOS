//
//  StatementTransferDetail.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct StatementTransferDetail: Codable {

    // MARK: Instance Variables

    public let destAccount: String?
    public let destAgency: String?
    public let destBank: String?
    public let destBankName: String?
    public let destCpf: String?
    public let destName: String?
    public let dueDate: String?
    public let effectDate: String?
    public let processDate: String?
    public let sourceAccount: String?
    public let sourceAgency: String?
    public let sourceBank: String?
    public let sourceBankName: String?
    public let sourceCpf: String?
    public let sourceName: String?
    public let tranctionValue: Float?

    // MARK: - Initializers

    public init(destAccount: String?, destAgency: String?, destBank: String?, destBankName: String?, destCpf: String?, destName: String?, dueDate: String?, effectDate: String?, processDate: String?, sourceAccount: String?, sourceAgency: String?, sourceBank: String?, sourceBankName: String?, sourceCpf: String?, sourceName: String?, tranctionValue: Float?) {
        self.destAccount = destAccount
        self.destAgency = destAgency
        self.destBank = destBank
        self.destBankName = destBankName
        self.destCpf = destCpf
        self.destName = destName
        self.dueDate = dueDate
        self.effectDate = effectDate
        self.processDate = processDate
        self.sourceAccount = sourceAccount
        self.sourceAgency = sourceAgency
        self.sourceBank = sourceBank
        self.sourceBankName = sourceBankName
        self.sourceCpf = sourceCpf
        self.sourceName = sourceName
        self.tranctionValue = tranctionValue
    }

    private enum CodingKeys: String, CodingKey {
        case destAccount  = "contaDest" 
        case destAgency  = "agenciaDest" 
        case destBank  = "bancoDest" 
        case destBankName  = "nomeBancoDest" 
        case destCpf  = "cpfDest" 
        case destName  = "nomeDest" 
        case dueDate  = "dataVencto" 
        case effectDate  = "dataEfetiv" 
        case processDate  = "dataProc" 
        case sourceAccount  = "contaRem" 
        case sourceAgency  = "agenciaRem" 
        case sourceBank  = "bancoRem" 
        case sourceBankName  = "nomeBancoRem" 
        case sourceCpf  = "cpfRem" 
        case sourceName  = "nomeRem" 
        case tranctionValue  = "valorTransacao" 
    }
}
