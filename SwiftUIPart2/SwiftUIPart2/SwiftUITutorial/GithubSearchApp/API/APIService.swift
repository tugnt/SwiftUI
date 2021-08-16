    //
    //  APIService.swift
    //  SwiftUIPart2
    //
    //  Created by グェン・トゥン on 2021/08/16.
    //
    
    import Foundation
    import SwiftUI
    
    
    class GithubService {
        private let session: URLSession
        private let decoder: JSONDecoder
        
        init(session: URLSession = .shared, decoder: JSONDecoder = .init()) {
            self.session = session
            self.decoder = decoder
        }
        
        func searchRepo(matching query: String, handle: @escaping (Result<[Repo], Error>) -> Void) {
            guard var urlComponent = URLComponents(string: "https://api.github.com/search/repositories") else {
                preconditionFailure("Can't create url components...")
            }
            urlComponent.queryItems = [
                URLQueryItem(name: "q", value: query)
            ]
            
            guard let url = urlComponent.url else {
                preconditionFailure("Can't create url from url components...")
            }
            print(url)
            session.dataTask(with: url) { [weak self] data, _, error in
                if let error = error {
                    handle(.failure(error))
                } else {
                    do {
                        let data = data ?? Data()
                        let str = String(decoding: data, as: UTF8.self)
                        let response = try self?.decoder.decode(SearchRepoResponse.self, from: data)
                        handle(.success(response?.items ?? []))
                    } catch let DecodingError.dataCorrupted(context) {
                        print(context)
                        //  handle(.failure(error))
                    } catch let DecodingError.keyNotFound(key, context) {
                        print("Key '\(key)' not found:", context.debugDescription)
                        print("codingPath:", context.codingPath)
                        // handle(.failure(error))
                    } catch let DecodingError.valueNotFound(value, context) {
                        print("Value '\(value)' not found:", context.debugDescription)
                        print("codingPath:", context.codingPath)
                        //handle(.failure(error))
                    } catch let DecodingError.typeMismatch(type, context)  {
                        print("Type '\(type)' mismatch:", context.debugDescription)
                        print("codingPath:", context.codingPath)
                        //handle(.failure(error))
                    } catch {
                        print(error.localizedDescription)
                        handle(.failure(error))
                    }
                }
            }.resume()
        }
    }
    
