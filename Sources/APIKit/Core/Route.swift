//
//  File.swift
//  
//
//  Created by Emerson Carpes on 04/05/20.
//
import Foundation

protocol Routeable {
    var method: HTTPMethod { get }
    var path: String { get }
    var baseURLString: String { get }
    
    func asURLRequest() throws -> URLRequest
}

extension Routeable {
    var baseURLString: String { return ApiPath.baseURL() }
    var OAuthToken: String? { return ParanaBanco.shared.accessToken }

    var mutableURLRequest: URLRequest {
        let URL = baseURLString.stringToURL()!
        var mutableURLRequest = URLRequest(url: URL.appendingPathComponent(path))
        mutableURLRequest.httpMethod = method.rawValue

//        if let token = OAuthToken {
//            mutableURLRequest.setValue("\(token)", forHTTPHeaderField: "X-Auth-Token")
//        }
        return mutableURLRequest
    }
}

// MARK: Routes

enum Route: Routeable {
    case keyboard
    case login(parameters: Parameters)
    case loadUser(parameters: Parameters)
    case manager
    case walkthrough
    case dashboard(agency: String, account: String)
    case myProfile(clientCode: String)
    case editMyProfile(clientCode: String, parameters: Parameters)
    case inTransit(clientCode: String)
    case investmentFees
    case invest
    case investmentsAvailable(clientCode: String)
    case investmentsAvailableForRedemption(investmentCode: String)
    case removeFavored
    case transferTED
    case signToken
    case banksList
    case addFavored
    case dateAndTime
    case validateTransferDate
    case generateToken
    case listFavored
    case accountStatement(userId: String)
    case ransomNotes(userId: String)
    case transfer(userId: String)
    case nonMonitoringTerm
    case suitabilityQuiz(quizId: String)
    case profitabilityTable
    case productDetails
    case fcmToken
    case unreadNotifications
    case listNotifications
    case specificNotification(notificationId: String)
    
    var method: HTTPMethod {
        switch self {
        case .keyboard,
             .manager,
             .walkthrough,
             .dashboard,
             .myProfile,
             .inTransit,
             .investmentFees,
             .investmentsAvailable,
             .investmentsAvailableForRedemption,
             .banksList,
             .dateAndTime,
             .validateTransferDate,
             .generateToken,
             .listFavored,
             .accountStatement,
             .ransomNotes,
             .nonMonitoringTerm,
             .suitabilityQuiz,
             .profitabilityTable,
             .productDetails,
             .unreadNotifications,
             .listNotifications,
             .specificNotification:
            return .get
        case .login,
             .loadUser,
             .invest,
             .transferTED,
             .signToken,
             .addFavored,
             .transfer,
             .fcmToken:
            return .post
        case .editMyProfile:
            return .put
        case .removeFavored:
            return .delete
        }
    }
    
    var path: String {
        switch self {
        case .keyboard:
            return ApiPath.keyboard
        case .login, .loadUser:
            return ApiPath.login
        case .manager:
            return ApiPath.manager
        case .walkthrough:
            return ApiPath.walkthrough
        case .dashboard(let agency, let account):
            return String(format: ApiPath.dashboard, agency, account)
        case .myProfile(let clientCode):
            return String(format: ApiPath.myProfile, clientCode)
        case .editMyProfile(let clientCode, _):
            return String(format: ApiPath.editMyProfile, clientCode)
        case .inTransit(let clientCode):
            return String(format: ApiPath.inTransit, clientCode)
        case .investmentFees:
            return ApiPath.investmentFees
        case .invest:
            return ApiPath.invest
        case .investmentsAvailable(let investmentCode):
            return String(format: ApiPath.investmentsAvailable, investmentCode)
        case .investmentsAvailableForRedemption(let investmentCode):
            return String(format: ApiPath.investmentsAvailableForRedemption, investmentCode)
        case .removeFavored:
            return ApiPath.removeFavored
        case .transferTED:
            return ApiPath.transferTED
        case .signToken:
            return ApiPath.signToken
        case .banksList:
            return ApiPath.banksList
        case .addFavored:
            return ApiPath.addFavored
        case .dateAndTime:
            return ApiPath.dateAndTime
        case .validateTransferDate:
            return ApiPath.validateTransferDate
        case .generateToken:
            return ApiPath.generateToken
        case .listFavored:
            return ApiPath.listFavored
        case .accountStatement(let userId):
            return String(format: ApiPath.accountStatement, userId)
        case .ransomNotes(let userId):
            return String(format: ApiPath.ransomNotes, userId)
        case .transfer(let userId):
            return String(format: ApiPath.transfer, userId)
        case .nonMonitoringTerm:
            return ApiPath.nonMonitoringTerm
        case .suitabilityQuiz(let quizId):
            return String(format: ApiPath.suitabilityQuiz, quizId)
        case .profitabilityTable:
            return ApiPath.profitabilityTable
        case .productDetails:
            return ApiPath.productDetails
        case .fcmToken:
            return ApiPath.fcmToken
        case .unreadNotifications:
            return ApiPath.unreadNotifications
        case .listNotifications:
            return ApiPath.listNotifications
        case .specificNotification(let notificationId):
            return String(format: ApiPath.specificNotification, notificationId)
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .keyboard,
             .manager,
             .walkthrough,
             .dashboard,
             .myProfile,
             .inTransit,
             .investmentFees,
             .invest,
             .investmentsAvailable,
             .investmentsAvailableForRedemption,
             .removeFavored,
             .transferTED,
             .signToken,
             .banksList,
             .addFavored,
             .dateAndTime,
             .validateTransferDate,
             .generateToken,
             .listFavored,
             .accountStatement,
             .ransomNotes,
             .transfer,
             .nonMonitoringTerm,
             .suitabilityQuiz,
             .profitabilityTable,
             .productDetails,
             .fcmToken,
             .unreadNotifications,
             .listNotifications,
             .specificNotification:
            return try APICallEncoding.urlEncode(mutableURLRequest)
        case .login(let parameters),
             .loadUser(let parameters),
             .editMyProfile(_, let parameters):
            return try APICallEncoding.urlEncode(mutableURLRequest, queryString: nil, httpBody: parameters)
        }
        
    }
}

extension Routeable {

    /// Get Object from API and map
    ///
    /// - Parameters:
    ///   - type: Object type, e.g. `User.self`
    ///   - completion: Completition block with `ResultType<T>`
    func request<T>(as type: T.Type, completion: @escaping (ResultType<T>) -> Void) -> Void where T: Decodable {
        
        // Finish the request on main threat
        func end(with result: ResultType<T>, completion: @escaping (ResultType<T>) -> Void) {
            DispatchQueue.main.async {
                completion(result)
            }
        }

        // Decode objects
        func decode<T>(data: Data, as type: T.Type) throws -> ResultType<T> where T: Decodable {
            let decoder = JSONDecoder.init()
//            decoder.dateDecodingStrategy = .formatted(Date.serverDateFormatter())
            let object = try decoder.decode(T.self, from: data)
            return .success(object)
        }

        // Request
        do {
            let urlRequest = try asURLRequest()

            URLSession.shared.dataTask(with: urlRequest) { data, response, error in
                if let error = error {
                    end(with: .error(error, object: nil), completion: completion)
                    return
                }

                guard let data = data else {
                    end(with: .error(PBError.invalidData, object: nil), completion: completion)
                    return
                }

                do {
                    end(with: try decode(data: data, as: T.self), completion: completion)
                } catch {
                    end(with: .error(error, object: nil), completion: completion)
                }
            }.resume()
        } catch {
            end(with: .error(error, object: nil), completion: completion)
        }
    }
}
