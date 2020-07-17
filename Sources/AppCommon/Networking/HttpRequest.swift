//
//  HTTPRequest.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation
import Alamofire
import Moya

enum HttpRequest {
    
}

extension HttpRequest {
    
    var priority: DispatchQoS.QoSClass {
        return .userInitiated
    }
}

extension HttpRequest: TargetType {
    
    var baseURL: URL {
        return URL(string: "localhost:8000/api")!
    }
    
    var path: String {
        return "/"
    }
    
    var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Moya.Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json", "Accept": "application/json"]
    }
    
    var validationType: Moya.ValidationType {
        return .none
    }
}

extension HttpRequest: AccessTokenAuthorizable {
	var authorizationType: AuthorizationType? {
		return .none
	}
}
