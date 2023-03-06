//
//  _TEMPLATE_SHORT_NAME_Error.swift
//
//
//  Created by jsilver on 2022/01/27.
//

import Environment

public struct _TEMPLATE_SHORT_NAME_Error: Error, Decodable, Equatable {
    enum CodingKeys: CodingKey {
        case code
        case title
        case msg
    }
    
    // MARK: - Property
    public let code: _TEMPLATE_SHORT_NAME_ErrorCode
    public let title: String?
    public let msg: String
    
    // MARK: - Initializer
    public init(
        code: _TEMPLATE_SHORT_NAME_ErrorCode,
        title: String? = nil,
        msg: String = ""
    ) {
        self.code = code
        self.title = title
        self.msg = msg
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.code = try container.decode(_TEMPLATE_SHORT_NAME_ErrorCode.self, forKey: .code)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.msg = try container.decode(String.self, forKey: .msg)
    }
    
    // MARK: - Public
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.code == rhs.code
    }
    
    // MARK: - Private
}
