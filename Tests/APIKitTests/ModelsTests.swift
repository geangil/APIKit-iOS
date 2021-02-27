//
//  ModelsTests.swift
//  
//
//  Created by Emerson Carpes on 03/05/20.
//

import XCTest
@testable import APIKit

final class ModelsTests: XCTestCase {
    
    override class func setUp() {
        
    }
    
    override class func tearDown() {
        
    }
    
    func testDecodeAccount() {
        let jsonString = """
                            {
                                "codAgencia" : 200,
                                "nroConta" : 400
                            }
                        """
        
        let data = TestsHelper.jsonDataFromString(string: jsonString)
        let account = try? TestsHelper.decode(data: data, as: Account.self)
        
        XCTAssertEqual(account?.code, Optional(200))
        XCTAssertEqual(account?.number, Optional(400))
    }
    
    func testInitAccount() {
        let account = Account(code: 200, number: 400)
        
        XCTAssertEqual(account.code, Optional(200))
        XCTAssertEqual(account.number, Optional(400))
    }
    
    func testInitApplicationCDB() {
        let applicationCDB = ApplicationCDB(appliedValue: 100.0,
                                            currentBalance: 230000.0,
                                            dailyLiquidity: true,
                                            dueDate: "28/03/2025",
                                            incomeTax: 0.67,
                                            investmentDate: "28/03/2020",
                                            iof: 0.3,
                                            modalityName: "CDB",
                                            netValue: 130.0,
                                            tax: "0.45")
        
        XCTAssertEqual(applicationCDB.appliedValue, Optional(100.0))
        XCTAssertEqual(applicationCDB.currentBalance, Optional(230000.0))
        XCTAssertEqual(applicationCDB.dailyLiquidity, Optional(true))
        XCTAssertEqual(applicationCDB.dueDate, Optional("28/03/2025"))
        XCTAssertEqual(applicationCDB.incomeTax, Optional(0.67))
        XCTAssertEqual(applicationCDB.investmentDate, Optional("28/03/2020"))
        XCTAssertEqual(applicationCDB.iof, Optional(0.3))
        XCTAssertEqual(applicationCDB.modalityName, Optional("CDB"))
        XCTAssertEqual(applicationCDB.netValue, Optional(130.0))
        XCTAssertEqual(applicationCDB.tax, Optional("0.45"))
    }
    
    func testInitApplicationFund() {
//        let applicationFund = ApplicationFund(grossValue: <#T##Float?#>,
//                                              hasSchedTotRedem: <#T##Bool?#>,
//                                              initialDate: <#T##String?#>,
//                                              invSchedTotValue: <#T##Float?#>,
//                                              invShareValue: <#T##Float?#>,
//                                              invValue: <#T##Float?#>,
//                                              iofValue: <#T##Float?#>,
//                                              irValue: <#T##Float?#>,
//                                              netValue: <#T##Float?#>,
//                                              portfolioName: <#T##String?#>,
//                                              positionDate: <#T##String?#>,
//                                              redemSchedTotValue: <#T##Float?#>,
//                                              shareValue: <#T##Float?#>,
//                                              sharesNumber: <#T##Float?#>)
        
    }
    
    func testInitApplicationGroup() {
        let applicationGroup = ApplicationGroup(appliedValue: 263.0,
                                                modalityName: "CDB",
                                                netValue: 262.0,
                                                totalBalance: 321.0)
        
        XCTAssertEqual(applicationGroup.appliedValue, Optional(263.0))
        XCTAssertEqual(applicationGroup.modalityName, Optional("CDB"))
        XCTAssertEqual(applicationGroup.netValue, Optional(262.0))
        XCTAssertEqual(applicationGroup.totalBalance, Optional(321.0))
    }
    
    func testInitApplicationSummary() {
        let applicationSummary = ApplicationSummary(appliedValue: 905000.0,
                                                    currentBalance: 40000,
                                                    incomeTax: 0.3,
                                                    iof: 0.001,
                                                    netValue: 304.5)
        
        XCTAssertEqual(applicationSummary.appliedValue, Optional(905000.0))
        XCTAssertEqual(applicationSummary.currentBalance, Optional(40000))
        XCTAssertEqual(applicationSummary.incomeTax, Optional(0.3))
        XCTAssertEqual(applicationSummary.iof, Optional(0.001))
        XCTAssertEqual(applicationSummary.netValue, Optional(304.5))
    }
    
    func testInitBankAccount() {
        let bankAccount = BankAccount(date: "28/03/2025",
                                      description: "Paraná Banco",
                                      value: 120.0)
        
        XCTAssertEqual(bankAccount.date, Optional("28/03/2025"))
        XCTAssertEqual(bankAccount.description, Optional("Paraná Banco"))
        XCTAssertEqual(bankAccount.value, 120.0)
    }
    
    func testInitCampaign() {
//        let campaign = Campaign(colorCardBg: <#T##String?#>, colorCardButtonBg: <#T##String?#>, colorCardButtonText: <#T##String?#>, colorCardText: <#T##String?#>, colorCardTitle: <#T##String?#>, colorMenuText: <#T##String?#>, colorModalButtonBg: <#T##String?#>, colorModalButtonText: <#T##String?#>, colorModalText: <#T##String?#>, colorScreenBg: <#T##String?#>, colorScreenText: <#T##String?#>, colorScreenTitle: <#T##String?#>, enable: <#T##Bool?#>, endDate: <#T##Int?#>, id: <#T##Int?#>, imageBgUrl: <#T##String?#>, imageUrl: <#T##String?#>, obs: <#T##String?#>, profiles: <#T##String?#>, startDate: <#T##Int?#>, text: <#T##String?#>, textButton: <#T##String?#>, title: <#T##String?#>, type: <#T##String?#>)
    }
    
    func testInitComplementary() {
//        let complementary = Complementary(benchmarkIndex: <#T##String?#>, benchmarkProfit12Months: <#T##Float?#>, benchmarkProfit36Months: <#T##Float?#>, benchmarkProfitMonth: <#T##Float?#>, benchmarkProfitYear: <#T##Float?#>, closingTimeLimit: <#T##String?#>, currentDate: <#T##String?#>, fixAdmFee: <#T##Float?#>, hasQuota: <#T##Bool?#>, maxAdmFee: <#T##Int?#>, minAdmFee: <#T##Int?#>, minPermVal: <#T##Float?#>, minValAddInvest: <#T##Float?#>, minValIniInvest: <#T##Float?#>, openingTimeLimit: <#T##String?#>, perFee: <#T##String?#>, portfolioDescription: <#T##String?#>, portfolioFamily: <#T##String?#>, portfolioId: <#T##Int?#>, portfolioName: <#T##String?#>, profile: <#T##String?#>, profit12Months: <#T##Float?#>, profit36Months: <#T##Float?#>, profitMonth: <#T##Float?#>, profitYear: <#T##Float?#>, shareType: <#T##String?#>, shareholders: <#T##String?#>, workDaysLiqInvest: <#T##Int?#>, workDaysLiqRedemp: <#T##Int?#>, workDaysQuotInvest: <#T##Int?#>, workDaysQuotRedemp: <#T##Int?#>)
    }
    
    func testInitComplementaryRegister() {
//        let complementaryRegister = ComplementaryRegister(description: <#T##String?#>,
//                                                          id: <#T##Int?#>,
//                                                          options: <#T##[ComplementaryRegisterOption]?#>,
//                                                          sort: <#T##Int?#>)
        
        
    }
    
    func testInitComplementaryRegisterOption() {
//        let complementaryRegisterOption = ComplementaryRegisterOption(description: <#T##String?#>, id: <#T##Int?#>, isSelected: <#T##Bool?#>, sort: <#T##Int?#>)
    }
    
    func testInitCreditLimit() {
//        let creditLimit = CreditLimit(dueDate: <#T##String?#>, limitValue: <#T##Float?#>, showPayment: <#T##Bool?#>, tax: <#T##String?#>)
    }
    
    func testInitDashboard() {
//        let dashboard = Dashboard(accountBalance: <#T##Float?#>, applicationSummaryUi: <#T##ApplicationSummary?#>, campaignUi: <#T##Campaign?#>, currentPosition: <#T##Float?#>, hasInfobankProfile: <#T##Bool?#>, hasInstabilityMessage: <#T##Bool?#>, instabilityMessageUi: <#T##InstabilityMessage?#>, listApplicationGroup: <#T##[ApplicationGroup]?#>, promotion: <#T##Bool?#>, promotionAniversary: <#T##Bool?#>, reapplicationDailyLiquity: <#T##Bool?#>, reapplicationStatus: <#T##Bool?#>, rendemptionSchedulingValue: <#T##Float?#>, updateSuitabilityProfile: <#T##Bool?#>)
    }
    
    func testInitDockets() {
//        let dockets = Dockets(operationCode: <#T##Int?#>, operationName: <#T##String?#>, portfolioId: <#T##Int?#>, portfolioName: <#T##String?#>, redemptionDate: <#T##String?#>, requestDate: <#T##String?#>, settleDate: <#T##String?#>, situation: <#T##String?#>, value: <#T##Float?#>)
    }
    
    func testInitFeedback() {
//        let feedback = Feedback(id: <#T##Int?#>, question: <#T##String?#>, userRating: <#T##Float?#>, userResponse: <#T##String?#>)
    }
    
    func testInitFinality() {
        let finality = Finality(code: "1001", name: "Guardar dinheiro")
        
        XCTAssertEqual(finality.code, Optional("1001"))
        XCTAssertEqual(finality.name, Optional("Guardar dinheiro"))
    }
    
    func testInitInstabilityMessage() {
//        let instabilityMessage = InstabilityMessage(enable: <#T##Bool?#>, endDate: <#T##String?#>, id: <#T##Int?#>, message: <#T##String?#>, startDate: <#T##String?#>)
    }
    
    func testInitInvestment() {
//        let investment = Investment(deadline: <#T##Int?#>, deadlineFull: <#T##String?#>, dueDate: <#T##String?#>, incomeTax: <#T##String?#>, liquidity: <#T##Bool?#>, minimumValue: <#T##Float?#>, modalityInitial: <#T##String?#>, modalityName: <#T##String?#>, percentage: <#T##Float?#>, portfolioDescription: <#T##String?#>)
    }
    
    func testInitListSelect() {
//        let listSelect = ListSelect(id: <#T##String?#>, name: <#T##String?#>)
    }
    
    func testInitMyManager() {
//        let myManager = MyManager(avatar: <#T##String?#>, email: <#T##String?#>, mobilePhone: <#T##String?#>, name: <#T##String?#>, phone: <#T##String?#>, photo: <#T##String?#>, position: <#T##String?#>)
    }
    
    func testInitNotification() {
//        let notification = Notification(content: <#T##String?#>, date: <#T##String?#>, id: <#T##Int?#>, isRead: <#T##Bool?#>, message: <#T##String?#>, title: <#T##String?#>, type: <#T##String?#>)
    }
    
    func testInitPaymentConfirm() {
//        let paymentConfirm = PaymentConfirm(allowsChangeValue: <#T##Bool?#>, code: <#T##String?#>, destBank: <#T##String?#>, discountValue: <#T##Float?#>, dueDate: <#T##String?#>, fineValue: <#T##Float?#>, interestValue: <#T##Float?#>, maxValue: <#T##Float?#>, minValue: <#T##Float?#>, payer: <#T##String?#>, payerCpfCnpj: <#T##String?#>, paymentDate: <#T##String?#>, paymentValue: <#T##Float?#>, recipient: <#T##String?#>, recipientCpfCnpj: <#T##String?#>, titleValue: <#T##Float?#>)
    }
    
    func testInitProduct() {
        let description = "O 4UM Small Caps FIA é um fundo de investimento em renda variável,  cujo objetivo é proporcionar, no longo prazo, o máximo retorno absoluto aos seus cotistas, através da aplicação em ações de emissão de companhias abertas de baixa e média capitalização de mercado, com expressivo potencial de valorização no longo prazo."
        let product = Product(description: description, name: "4UM Small Caps FIA")
        
        XCTAssertEqual(product.description, Optional(description))
        XCTAssertEqual(product.name, Optional("4UM Small Caps FIA"))
    }
    
    func testInitProductTax() {
//        let productTax = ProductTax(dailyLiquidity: <#T##Bool?#>, listTax: <#T##[Tax]?#>, product: <#T##String?#>, type: <#T##Int?#>)
    }
    
    func testInitRendemptionConfirm() {
//        let rendemptionConfirm = RendemptionConfirm(dataOperacao: <#T##String?#>, puRecompra: <#T##Float?#>, qtdOperacao: <#T##Int?#>, rendemptionInvestmentUi: <#T##RendemptionInvestment?#>, valorBruto: <#T##Float?#>, valorIda: <#T##Float?#>, valorIof: <#T##Float?#>, valorIr: <#T##Float?#>, valorLiquido: <#T##Float?#>)
    }
    
    func testInitRendemptionFundConfirm() {
//        let rendemptionFundConfirm = RendemptionFundConfirm(availableValue: <#T##Float?#>, closingTimeLimit: <#T##String?#>, daysQuotRedem: <#T##Int?#>, hasSchedTotRedem: <#T##Bool?#>, initialDate: <#T##String?#>, invSchedTotValue: <#T##Float?#>, minBalance: <#T##Float?#>, minValRedem: <#T##Float?#>, portfolioId: <#T##Int?#>, portfolioName: <#T##String?#>, redemSchedTotValue: <#T##Float?#>, rendemptionFundInvestmentUi: <#T##RendemptionFundInvestment?#>, valRedem: <#T##Float?#>, workDaysQuotRedem: <#T##Int?#>, workDaysSettlRedem: <#T##Int?#>)
    }
    
    func testInitRendemptionFundInvestment() {
//        let rendemptionFundInvestment = RendemptionFundInvestment(availableValue: <#T##Float?#>, grossValue: <#T##Float?#>, hasSchedTotRedem: <#T##Int?#>, initialDate: <#T##String?#>, invSchedTotValue: <#T##Float?#>, iofValue: <#T##Float?#>, irValue: <#T##Float?#>, minPermVal: <#T##Float?#>, minValRedem: <#T##Float?#>, netValue: <#T##Float?#>, portfolioId: <#T##Int?#>, portfolioName: <#T##String?#>, redemSchedTotValue: <#T##Float?#>, type: <#T##Int?#>, workDaysSettlRedem: <#T##Int?#>)
    }
    
    func testInitRendemptionInvestment() {
//        let rendemptionInvestment = RendemptionInvestment(actualValue: <#T##Float?#>, allowsRendemption: <#T##Bool?#>, availableValue: <#T##Float?#>, codClientApplication: <#T##String?#>, dueDate: <#T##String?#>, investmentDate: <#T##String?#>, liquidityDiary: <#T##Bool?#>, nameModality: <#T##String?#>, numSet: <#T##String?#>, percent: <#T##Float?#>, stockChildNumber: <#T##String?#>, valueApplied: <#T##Float?#>)
    }
    
    func testInitSecureQuestion() {
//        let secureQuestion = SecureQuestion(answer: <#T##String?#>, description: <#T##String?#>, id: <#T##Int?#>, type: <#T##Int?#>)
    }
    
    func testInitStatementNote() {
//        let statementNote = StatementNote(dateOfSubscription: <#T##String?#>, dueDate: <#T##String?#>, issueDate: <#T##String?#>, modalityName: <#T##String?#>, noteNumber: <#T##String?#>, number: <#T##String?#>, operation: <#T##String?#>, operationDate: <#T##String?#>, settlementDate: <#T##String?#>, type: <#T##String?#>, value: <#T##Float?#>)
    }
    
    func testInitStatementPayment() {
//        let statementPayment = StatementPayment(account: <#T##String?#>, agency: <#T##String?#>, bankName: <#T##String?#>, nsu: <#T##String?#>, operationDate: <#T##String?#>, status: <#T##String?#>, type: <#T##String?#>, value: <#T##Float?#>)
    }
    
    func testInitStatementPaymentDetail() {
//        let statementPaymentDetail = StatementPaymentDetail(account: <#T##String?#>, agency: <#T##String?#>, bank: <#T##String?#>, bankName: <#T##String?#>, barcode: <#T##String?#>, cpf: <#T##String?#>, effectDate: <#T##String?#>, name: <#T##String?#>, processDate: <#T##String?#>, transactionValue: <#T##Float?#>)
    }
    
    func testInitStatementTransfer() {
//        let statementTransfer = StatementTransfer(destinyAccount: <#T##String?#>, destinyAgencyCode: <#T##String?#>, destinyBankName: <#T##String?#>, nsu: <#T##String?#>, operationDate: <#T##String?#>, status: <#T##String?#>, type: <#T##String?#>, value: <#T##Float?#>)
    }
    
    func testInitStatementTransferDetail() {
//        let statementTransferDetail = StatementTransferDetail(destAccount: <#T##String?#>, destAgency: <#T##String?#>, destBank: <#T##String?#>, destBankName: <#T##String?#>, destCpf: <#T##String?#>, destName: <#T##String?#>, dueDate: <#T##String?#>, effectDate: <#T##String?#>, processDate: <#T##String?#>, sourceAccount: <#T##String?#>, sourceAgency: <#T##String?#>, sourceBank: <#T##String?#>, sourceBankName: <#T##String?#>, sourceCpf: <#T##String?#>, sourceName: <#T##String?#>, tranctionValue: <#T##Float?#>)
    }
    
    func testInitSuitabilityQuestion() {
        let suitabilityQuestion = SuitabilityQuestion(description: "Qual o percentual de sua renda mensal que pretende investir?",
                                                      id: "b68b8a36-7cbc-46a0-ec27-08d6dae36d98",
                                                      listSuitabilityResponse: nil,
                                                      type: 1)
        
        XCTAssertEqual(suitabilityQuestion.description, "Qual o percentual de sua renda mensal que pretende investir?")
        XCTAssertEqual(suitabilityQuestion.id, "b68b8a36-7cbc-46a0-ec27-08d6dae36d98")
        XCTAssertEqual(suitabilityQuestion.type, 1)
        XCTAssertNil(suitabilityQuestion.listSuitabilityResponse)
    }
    
    func testInitSuitabilityQuestionGroup() {
//        let suitabilityQuestionGroup = SuitabilityQuestionGroup(listSuitabilityQuestion: <#T##[SuitabilityQuestion]?#>)
    }
    
    func testInitSuitabilityResponse() {
        let suitabilityResponse = SuitabilityResponse(description: "Pós-graduação / Mestrado / Doutorado.",
                                                      flag: "0",
                                                      id: "9a8467a5-bf3c-4d84-2415-08d6dae36d99",
                                                      isSelected: false)
        
        XCTAssertEqual(suitabilityResponse.description, "Pós-graduação / Mestrado / Doutorado.")
        XCTAssertEqual(suitabilityResponse.flag, "0")
        XCTAssertEqual(suitabilityResponse.id, "9a8467a5-bf3c-4d84-2415-08d6dae36d99")
        XCTAssertEqual(suitabilityResponse.isSelected, false)
    }
    
    func testInitTax() {
        let tax = Tax(deadline: 30, deadlineFull: "28/03/2035", percentage: "20")
        XCTAssertEqual(tax.deadline, 30)
        XCTAssertEqual(tax.deadlineFull, "28/03/2035")
        XCTAssertEqual(tax.percentage, "20")
    }
    
    func testInitTransfer() {
        let transfer = Transfer(account: "31771", agency: "7669", bank: "Bradesco SA", code: "237", id: nil, name: "Andrei", type: "PP")
        
        XCTAssertEqual(transfer.account, "31771")
        XCTAssertEqual(transfer.agency, "7669")
        XCTAssertEqual(transfer.bank, "Bradesco SA")
        XCTAssertEqual(transfer.code, "237")
        XCTAssertEqual(transfer.name, "Andrei")
        XCTAssertEqual(transfer.type, "PP")
        XCTAssertNil(transfer.id)
    }
    
    func testInitTransferBank() {
        let transferBank = TransferBank(code: "237", ispb: "60746948", name: "Bradesco")
        XCTAssertEqual(transferBank.code, "237")
        XCTAssertEqual(transferBank.ispb, "60746948")
        XCTAssertEqual(transferBank.name, "Bradesco")
    }
    
    func testInitTutorial() {
//        let tutorial = Tutorial(description: <#T##String?#>, id: <#T##Int?#>, name: <#T##String?#>, screens: <#T##[TutorialScreen]?#>)
    }
    
    func testInitTutorialScreen() {
//        let tutorialScreen = TutorialScreen(colorBackground: <#T##String?#>, colorDescription: <#T##String?#>, colorTitle: <#T##String?#>, description: <#T##String?#>, id: <#T##Int?#>, order: <#T##Int?#>, title: <#T##String?#>, urlImageAndroid: <#T##String?#>, urlImageIOS: <#T##String?#>)
    }
    
    func testInitUser() {
//        let user = User(code: <#T##Int?#>, cpf: <#T##String?#>, currentAccountUi: <#T##Account?#>, dashboardUi: <#T##Dashboard?#>, flagTerms: <#T##Bool?#>, investorProfile: <#T##String?#>, listAccount: <#T##[Account]?#>, listCode: <#T##[ListSelect]?#>, name: <#T##String?#>, photoUrl: <#T##String?#>, token: <#T##String?#>)
    }
    
    func testInitUserProfile() {
//        let userProfile = UserProfile(address: <#T##String?#>, cellphone: <#T##String?#>, city: <#T##String?#>, complement: <#T##String?#>, country: <#T##String?#>, cpf: <#T##String?#>, district: <#T##String?#>, email: <#T##String?#>, id: <#T##Int?#>, incoming: <#T##Float?#>, name: <#T##String?#>, nickname: <#T##String?#>, number: <#T##String?#>, phone: <#T##String?#>, photo: <#T##String?#>, photoUrl: <#T##String?#>, state: <#T##String?#>, updatedAt: <#T##String?#>, zipcode: <#T##String?#>)
    }
}
