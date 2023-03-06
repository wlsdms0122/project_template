//
//  _TEMPLATE_SHORT_NAME_Target.swift
//  
//
//  Created by jsilver on 2022/02/02.
//

import Network
import Environment

public protocol _TEMPLATE_SHORT_NAME_Target: Target, Authorizable { }

public extension _TEMPLATE_SHORT_NAME_Target {
    var baseURL: String { Env.URL.baseURL }
    var headers: HTTPHeaders { [:] }
    
    var needsAuth: Bool { true }
}
