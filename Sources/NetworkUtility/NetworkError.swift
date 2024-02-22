//
//  File.swift
//  
//
//  Created by Koushik Dutta on 17/02/24.
//

import Foundation

public enum NetworkError: Error {
    case invalidResponse
    case network(Error?)
}
