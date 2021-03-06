//
//  Complementary.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct Complementary: Codable {

    // MARK: Instance Variables

    public let benchmarkIndex: String?
    public let benchmarkProfit12Months: Float?
    public let benchmarkProfit36Months: Float?
    public let benchmarkProfitMonth: Float?
    public let benchmarkProfitYear: Float?
    public let closingTimeLimit: String?
    public let currentDate: String?
    public let fixAdmFee: Float?
    public let hasQuota: Bool?
    public let maxAdmFee: Int?
    public let minAdmFee: Int?
    public let minPermVal: Float?
    public let minValAddInvest: Float?
    public let minValIniInvest: Float?
    public let openingTimeLimit: String?
    public let perFee: String?
    public let portfolioDescription: String?
    public let portfolioFamily: String?
    public let portfolioId: Int?
    public let portfolioName: String?
    public let profile: String?
    public let profit12Months: Float?
    public let profit36Months: Float?
    public let profitMonth: Float?
    public let profitYear: Float?
    public let shareType: String?
    public let shareholders: String?
    public let workDaysLiqInvest: Int?
    public let workDaysLiqRedemp: Int?
    public let workDaysQuotInvest: Int?
    public let workDaysQuotRedemp: Int?

    // MARK: - Initializers

    public init(benchmarkIndex: String?, benchmarkProfit12Months: Float?, benchmarkProfit36Months: Float?, benchmarkProfitMonth: Float?, benchmarkProfitYear: Float?, closingTimeLimit: String?, currentDate: String?, fixAdmFee: Float?, hasQuota: Bool?, maxAdmFee: Int?, minAdmFee: Int?, minPermVal: Float?, minValAddInvest: Float?, minValIniInvest: Float?, openingTimeLimit: String?, perFee: String?, portfolioDescription: String?, portfolioFamily: String?, portfolioId: Int?, portfolioName: String?, profile: String?, profit12Months: Float?, profit36Months: Float?, profitMonth: Float?, profitYear: Float?, shareType: String?, shareholders: String?, workDaysLiqInvest: Int?, workDaysLiqRedemp: Int?, workDaysQuotInvest: Int?, workDaysQuotRedemp: Int?) {
        self.benchmarkIndex = benchmarkIndex
        self.benchmarkProfit12Months = benchmarkProfit12Months
        self.benchmarkProfit36Months = benchmarkProfit36Months
        self.benchmarkProfitMonth = benchmarkProfitMonth
        self.benchmarkProfitYear = benchmarkProfitYear
        self.closingTimeLimit = closingTimeLimit
        self.currentDate = currentDate
        self.fixAdmFee = fixAdmFee
        self.hasQuota = hasQuota
        self.maxAdmFee = maxAdmFee
        self.minAdmFee = minAdmFee
        self.minPermVal = minPermVal
        self.minValAddInvest = minValAddInvest
        self.minValIniInvest = minValIniInvest
        self.openingTimeLimit = openingTimeLimit
        self.perFee = perFee
        self.portfolioDescription = portfolioDescription
        self.portfolioFamily = portfolioFamily
        self.portfolioId = portfolioId
        self.portfolioName = portfolioName
        self.profile = profile
        self.profit12Months = profit12Months
        self.profit36Months = profit36Months
        self.profitMonth = profitMonth
        self.profitYear = profitYear
        self.shareType = shareType
        self.shareholders = shareholders
        self.workDaysLiqInvest = workDaysLiqInvest
        self.workDaysLiqRedemp = workDaysLiqRedemp
        self.workDaysQuotInvest = workDaysQuotInvest
        self.workDaysQuotRedemp = workDaysQuotRedemp
    }

    private enum CodingKeys: String, CodingKey {
        case benchmarkIndex   
        case benchmarkProfit12Months   
        case benchmarkProfit36Months   
        case benchmarkProfitMonth   
        case benchmarkProfitYear   
        case closingTimeLimit   
        case currentDate   
        case fixAdmFee   
        case hasQuota   
        case maxAdmFee   
        case minAdmFee   
        case minPermVal   
        case minValAddInvest   
        case minValIniInvest   
        case openingTimeLimit   
        case perFee   
        case portfolioDescription   
        case portfolioFamily   
        case portfolioId   
        case portfolioName   
        case profile   
        case profit12Months   
        case profit36Months   
        case profitMonth   
        case profitYear   
        case shareType   
        case shareholders   
        case workDaysLiqInvest   
        case workDaysLiqRedemp   
        case workDaysQuotInvest   
        case workDaysQuotRedemp   
    }
}
