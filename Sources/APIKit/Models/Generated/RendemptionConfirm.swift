//
//  RendemptionConfirm.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct RendemptionConfirm: Codable {

    // MARK: Instance Variables

    public let dataOperacao: String?
    public let puRecompra: Float?
    public let qtdOperacao: Int?
    public let rendemptionInvestmentUi: RendemptionInvestment?
    public let valorBruto: Float?
    public let valorIda: Float?
    public let valorIof: Float?
    public let valorIr: Float?
    public let valorLiquido: Float?

    // MARK: - Initializers

    public init(dataOperacao: String?, puRecompra: Float?, qtdOperacao: Int?, rendemptionInvestmentUi: RendemptionInvestment?, valorBruto: Float?, valorIda: Float?, valorIof: Float?, valorIr: Float?, valorLiquido: Float?) {
        self.dataOperacao = dataOperacao
        self.puRecompra = puRecompra
        self.qtdOperacao = qtdOperacao
        self.rendemptionInvestmentUi = rendemptionInvestmentUi
        self.valorBruto = valorBruto
        self.valorIda = valorIda
        self.valorIof = valorIof
        self.valorIr = valorIr
        self.valorLiquido = valorLiquido
    }

    private enum CodingKeys: String, CodingKey {
        case dataOperacao   
        case puRecompra   
        case qtdOperacao   
        case rendemptionInvestmentUi   
        case valorBruto   
        case valorIda   
        case valorIof   
        case valorIr   
        case valorLiquido   
    }
}
