//
//  User.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct User: Codable {

    // MARK: Instance Variables

    public let code: Int?
    public let cpf: String?
    public let currentAccountUi: Account?
    public let dashboardUi: Dashboard?
    public let flagTerms: Bool?
    public let investorProfile: String?
    public let listAccount: [Account]?
    public let listCode: [ListSelect]?
    public let name: String?
    public let photoUrl: String?
    public let token: String?

    // MARK: - Initializers

    public init(code: Int?, cpf: String?, currentAccountUi: Account?, dashboardUi: Dashboard?, flagTerms: Bool?, investorProfile: String?, listAccount: [Account]?, listCode: [ListSelect]?, name: String?, photoUrl: String?, token: String?) {
        self.code = code
        self.cpf = cpf
        self.currentAccountUi = currentAccountUi
        self.dashboardUi = dashboardUi
        self.flagTerms = flagTerms
        self.investorProfile = investorProfile
        self.listAccount = listAccount
        self.listCode = listCode
        self.name = name
        self.photoUrl = photoUrl
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case code   
        case cpf   
        case currentAccountUi   
        case dashboardUi   
        case flagTerms  = "flagTermoDeUso" 
        case investorProfile  = "perfilInvestidor" 
        case listAccount  = "contas" 
        case listCode  = "codigos" 
        case name  = "nome" 
        case photoUrl  = "urlFoto" 
        case token   
    }
}
