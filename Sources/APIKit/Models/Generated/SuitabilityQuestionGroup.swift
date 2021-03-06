//
//  SuitabilityQuestionGroup.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct SuitabilityQuestionGroup: Codable {

    // MARK: Instance Variables

    public let listSuitabilityQuestion: [SuitabilityQuestion]?

    // MARK: - Initializers

    public init(listSuitabilityQuestion: [SuitabilityQuestion]?) {
        self.listSuitabilityQuestion = listSuitabilityQuestion
    }

    private enum CodingKeys: String, CodingKey {
        case listSuitabilityQuestion   
    }
}
