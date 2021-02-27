//
//  ComplementaryRegisterOption.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct ComplementaryRegisterOption: Codable {

    // MARK: Instance Variables

    public let description: String?
    public let id: Int?
    public let isSelected: Bool?
    public let sort: Int?

    // MARK: - Initializers

    public init(description: String?, id: Int?, isSelected: Bool?, sort: Int?) {
        self.description = description
        self.id = id
        self.isSelected = isSelected
        self.sort = sort
    }

    private enum CodingKeys: String, CodingKey {
        case description  = "descricao" 
        case id  = "idOpcao" 
        case isSelected   
        case sort  = "ordemOpcao" 
    }
}
