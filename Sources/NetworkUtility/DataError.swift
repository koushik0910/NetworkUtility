//
//  File.swift
//  
//
//  Created by Koushik Dutta on 17/02/24.
//

import Foundation

enum DataError: Error {
    case invalidResponse
    case network(Error?)
}
