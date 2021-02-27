//
//  Campaign.swift
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2020 Paraná Banco SA. All rights reserved.
//

public struct Campaign: Codable {

    // MARK: Instance Variables

    public let colorCardBg: String?
    public let colorCardButtonBg: String?
    public let colorCardButtonText: String?
    public let colorCardText: String?
    public let colorCardTitle: String?
    public let colorMenuText: String?
    public let colorModalButtonBg: String?
    public let colorModalButtonText: String?
    public let colorModalText: String?
    public let colorScreenBg: String?
    public let colorScreenText: String?
    public let colorScreenTitle: String?
    public let enable: Bool?
    public let endDate: Int?
    public let id: Int?
    public let imageBgUrl: String?
    public let imageUrl: String?
    public let obs: String?
    public let profiles: String?
    public let startDate: Int?
    public let text: String?
    public let textButton: String?
    public let title: String?
    public let type: String?

    // MARK: - Initializers

    public init(colorCardBg: String?, colorCardButtonBg: String?, colorCardButtonText: String?, colorCardText: String?, colorCardTitle: String?, colorMenuText: String?, colorModalButtonBg: String?, colorModalButtonText: String?, colorModalText: String?, colorScreenBg: String?, colorScreenText: String?, colorScreenTitle: String?, enable: Bool?, endDate: Int?, id: Int?, imageBgUrl: String?, imageUrl: String?, obs: String?, profiles: String?, startDate: Int?, text: String?, textButton: String?, title: String?, type: String?) {
        self.colorCardBg = colorCardBg
        self.colorCardButtonBg = colorCardButtonBg
        self.colorCardButtonText = colorCardButtonText
        self.colorCardText = colorCardText
        self.colorCardTitle = colorCardTitle
        self.colorMenuText = colorMenuText
        self.colorModalButtonBg = colorModalButtonBg
        self.colorModalButtonText = colorModalButtonText
        self.colorModalText = colorModalText
        self.colorScreenBg = colorScreenBg
        self.colorScreenText = colorScreenText
        self.colorScreenTitle = colorScreenTitle
        self.enable = enable
        self.endDate = endDate
        self.id = id
        self.imageBgUrl = imageBgUrl
        self.imageUrl = imageUrl
        self.obs = obs
        self.profiles = profiles
        self.startDate = startDate
        self.text = text
        self.textButton = textButton
        self.title = title
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case colorCardBg  = "colorCardBg" 
        case colorCardButtonBg  = "colorCardButtonBg" 
        case colorCardButtonText  = "colorCardButtonText" 
        case colorCardText  = "colorCardText" 
        case colorCardTitle  = "colorCardTitle" 
        case colorMenuText  = "colorMenuText" 
        case colorModalButtonBg  = "colorModalButtonBg" 
        case colorModalButtonText  = "colorModalButtonText" 
        case colorModalText  = "colorModalText" 
        case colorScreenBg  = "colorScreenBg" 
        case colorScreenText  = "colorScreenText" 
        case colorScreenTitle  = "colorScreenTitle" 
        case enable  = "ativo" 
        case endDate  = "dataFim" 
        case id   
        case imageBgUrl  = "urlModalBackground" 
        case imageUrl  = "urlImagem" 
        case obs  = "observacao" 
        case profiles  = "perfis" 
        case startDate  = "dataInicio" 
        case text  = "texto" 
        case textButton  = "textoBotao" 
        case title  = "titulo" 
        case type  = "tipoCliente" 
    }
}
