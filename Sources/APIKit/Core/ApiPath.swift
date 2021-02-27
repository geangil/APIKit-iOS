//
//  File.swift
//  
//
//  Created by Emerson Carpes on 23/04/20.
//

import Foundation

enum ApiLevel: String {
    case v8 = "app-investidor-v8/"
}

struct ApiPath {
    static func baseURL() -> String {
        return ParanaBanco.environment.url
    }
}

extension ApiPath {
    private static let v8 = ApiLevel.v8.rawValue
    static let keyboard = v8 + "teclado"
    static let login = v8 + "autenticar"
    static let manager = v8 + "gerente"
    static let walkthrough = v8 + "walkthrough"
    static let dashboard = v8 + "dashboard/%@/%@"
    static let myProfile = v8 + "cadastro/cliente/%@"
    static let editMyProfile = v8 + "cadastro/cliente/%@"
    static let inTransit = v8 + "conta/movimentacoes/%@"
    static let investmentFees = v8 + "investir/taxas"
    static let invest = v8 + "investir"
    static let investmentsAvailable = v8 + "investir/%@"
    static let investmentsAvailableForRedemption = v8 + "resgate/listar-aplicacoes/%@"
    static let removeFavored = v8 + "transferencia/favorecido"
    static let transferTED = v8 + "transferencia/ted"
    static let signToken = v8 + "transferencia/assinar-token"
    static let banksList = v8 + "transferencia/bancos"
    static let addFavored = v8 + "transferencia/favorecido"
    static let dateAndTime = v8 + "data-hora"
    static let validateTransferDate = v8 + "transferencia/valida-data-transferencia"
    static let generateToken = v8 + "transferencia/gerar-token"
    static let listFavored = v8 + "transferencia/favorecidos"
    static let accountStatement = v8 + "conta/extrato/10/%@"
    static let ransomNotes = v8 + "comprovantes/notas-negociacao/%@"
    static let transfer = v8 + "comprovantes/transferencia/%@"
    static let nonMonitoringTerm = v8 + "suitability/questionario/nao-monitorar-cliente"
    static let suitabilityQuiz = v8 + "suitability/questionario/%@"
    static let profitabilityTable = v8 + "tabela-rentabilidade"
    static let productDetails = v8 + "investir/detalhes-produtos"
    static let fcmToken = v8 + "fcm-token"
    static let unreadNotifications = v8 + "notificacoes/nao-lidas"
    static let listNotifications = v8 + "notificacoes"
    static let specificNotification = v8 + "notificacoes/%@"
    
}
