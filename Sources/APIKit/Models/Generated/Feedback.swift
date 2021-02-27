//
//  Feedback.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct Feedback: Codable {

    // MARK: Instance Variables

    public let id: Int?
    public let question: String?
    public let userRating: Float?
    public let userResponse: String?

    // MARK: - Initializers

    public init(id: Int?, question: String?, userRating: Float?, userResponse: String?) {
        self.id = id
        self.question = question
        self.userRating = userRating
        self.userResponse = userResponse
    }

    private enum CodingKeys: String, CodingKey {
        case id   
        case question  = "descricaoPergunta" 
        case userRating   
        case userResponse   
    }
}
