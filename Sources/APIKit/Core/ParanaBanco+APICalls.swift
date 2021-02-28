//
//  File.swift
//  
//
//  Created by Emerson Carpes on 04/05/20.
//

import Foundation

public extension ParanaBanco {
    
    /// MARK: Keyboard
    
    static func keyboard(completion: @escaping (ResultType<Keyboard>) -> Void) {
        Route.keyboard.request(as: Keyboard.self, completion: completion)
        
    }
    
    /// MARK: Auth
    
    static func login(cpf: String, password: String, completion: @escaping (ResultType<User>) -> Void) {
        let parameters = ["cpf":cpf, "senha": password]
        Route.login(parameters: parameters).request(as: User.self, completion: completion)
    }
    
    static func loadUser(cpf: String, password: String, clientCode: Int, completion: @escaping (ResultType<User>) -> Void) {
        let parameters: Parameters = ["cpf": cpf,
                                      "senha": password,
                                      "codCliente": clientCode]
        Route.loadUser(parameters: parameters).request(as: User.self, completion: completion)
    }
    
    static func loadManager(completion: @escaping (ResultType<MyManager>) -> Void) {
        Route.manager.request(as: MyManager.self, completion: completion)
    }
    
    static func loadWalkthrough(completion: @escaping (ResultType<User>) -> Void) {
        Route.walkthrough.request(as: User.self, completion: completion)
    }
    
    static func loadDashboard(agency: String, account: String, completion: @escaping (ResultType<User>) -> Void) {
        Route.dashboard(agency: agency, account: account).request(as: User.self, completion: completion)
    }
    
    static func loadMyProfile(clientCode: String, completion: @escaping (ResultType<UserProfile>) -> Void) {
        Route.myProfile(clientCode: clientCode).request(as: UserProfile.self, completion: completion)
    }
    
    static func editMyProfile(clientCode: String, completion: @escaping (ResultType<UserProfile>) -> Void) {
        Route.editMyProfile(clientCode: clientCode, parameters: [:]).request(as: UserProfile.self, completion: completion)
    }
    
    static func inTransit(clientCode: String, completion: @escaping (ResultType<Dockets>) -> Void) {
        Route.inTransit(clientCode: clientCode).request(as: Dockets.self, completion: completion)
    }
    
    static func investmentFees(completion: @escaping (ResultType<Tax>) -> Void) {
        Route.investmentFees.request(as: Tax.self, completion: completion)
    }
    
    static func invest(completion: @escaping (ResultType<Investment>) -> Void) {
        Route.investmentFees.request(as: Investment.self, completion: completion)
    }
    
    static func investmentsAvailable(clientCode: String, completion: @escaping (ResultType<Investment>) -> Void) {
        Route.investmentsAvailable(clientCode: clientCode).request(as: Investment.self, completion: completion)
    }
    
    static func investmentsAvailableForRedemption(investmentCode: String, completion: @escaping (ResultType<RendemptionInvestment>) -> Void) {
        Route.investmentsAvailableForRedemption(investmentCode: investmentCode).request(as: RendemptionInvestment.self, completion: completion)
    }
    
    static func removeFavored(completion: @escaping (ResultType<BankAccount>) -> Void) {
        Route.removeFavored.request(as: BankAccount.self, completion: completion)
    }
    
    static func transferTED(completion: @escaping (ResultType<Investment>) -> Void) {
        Route.investmentFees.request(as: Investment.self, completion: completion)
    }
    
    static func signToken(completion: @escaping (ResultType<Investment>) -> Void) {
        Route.signToken.request(as: Investment.self, completion: completion)
    }
    
    static func banksList(completion: @escaping (ResultType<[BankAccount]>) -> Void) {
        Route.banksList.request(as: [BankAccount].self, completion: completion)
    }
    
    static func addFavored(completion: @escaping (ResultType<BankAccount>) -> Void) {
        Route.addFavored.request(as: BankAccount.self, completion: completion)
    }
    
    static func dateAndTime(completion: @escaping (ResultType<[TransferBank]>) -> Void) {
        Route.dateAndTime.request(as: [TransferBank].self, completion: completion)
    }
    
    static func validateTransferDate(completion: @escaping (ResultType<Transfer>) -> Void) {
        Route.validateTransferDate.request(as: Transfer.self, completion: completion)
    }
    
    static func generateToken(completion: @escaping (ResultType<String>) -> Void) {
        Route.generateToken.request(as: String.self, completion: completion)
    }
    
    static func listFavored(completion: @escaping (ResultType<BankAccount>) -> Void) {
        Route.listFavored.request(as: BankAccount.self, completion: completion)
    }
    
    static func accountStatement(userId: String, completion: @escaping (ResultType<[BankAccount]>) -> Void) {
        Route.accountStatement(userId: userId).request(as: [BankAccount].self, completion: completion)
    }
    
    static func ransomNotes(userId: String, completion: @escaping (ResultType<StatementNote>) -> Void) {
        Route.ransomNotes(userId: userId).request(as: StatementNote.self, completion: completion)
    }
    
    static func transfer(userId: String, completion: @escaping (ResultType<Transfer>) -> Void) {
        Route.transfer(userId: userId).request(as: Transfer.self, completion: completion)
    }
    
    static func nonMonitoringTerm(completion: @escaping (ResultType<UserProfile>) -> Void) {
        Route.nonMonitoringTerm.request(as: UserProfile.self, completion: completion)
    }
    
    static func suitabilityQuiz(quizId: String, completion: @escaping (ResultType<[SuitabilityQuestion]>) -> Void) {
        Route.suitabilityQuiz(quizId: quizId).request(as: [SuitabilityQuestion].self, completion: completion)
    }
    
    static func profitabilityTable(completion: @escaping (ResultType<[Quotation]>) -> Void) {
        Route.profitabilityTable.request(as: [Quotation].self, completion: completion)
    }
    
    static func productDetails(completion: @escaping (ResultType<Product>) -> Void) {
        Route.productDetails.request(as: Product.self, completion: completion)
    }
    
    static func fcmToken(completion: @escaping (ResultType<Notification>) -> Void) {
        Route.fcmToken.request(as: Notification.self, completion: completion)
    }
    
    static func unreadNotifications(completion: @escaping (ResultType<Notification>) -> Void) {
        Route.unreadNotifications.request(as: Notification.self, completion: completion)
    }
    
    static func listNotifications(completion: @escaping (ResultType<[Notification]>) -> Void) {
        Route.listNotifications.request(as: [Notification].self, completion: completion)
    }
    
    static func specificNotification(notificationId: String, completion: @escaping (ResultType<Notification>) -> Void) {
        Route.specificNotification(notificationId: notificationId).request(as: Notification.self, completion: completion)
    }
}
