//
//  _TEMPLATE_SHORT_NAME_Target.swift
//  
//
//  Created by JSilver on 2022/02/02.
//

import Dyson
import Environment

public protocol _TEMPLATE_SHORT_NAME_Spec: Spec, Authorizable { }

public extension _TEMPLATE_SHORT_NAME_Spec {
    var baseURL: String { Env.URL.baseURL }
    var headers: HTTPHeaders { [:] }
    
    var needsAuth: Bool { true }
}
