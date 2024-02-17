// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@available(iOS 15.0, *)
public class NetworkUtility
{
    public static let shared = NetworkUtility()
    private init(){}
    
    public func request<T: Decodable>(urlRequest: URLRequest) async throws -> T {
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, (200...299).contains(statusCode) else {
                throw DataError.invalidResponse
            }
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw DataError.network(error)
        }
    }
}
