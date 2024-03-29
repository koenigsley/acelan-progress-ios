//
//  ArtifactsService.swift
//  AcelanProgress
//
//  Created by Mikhail Yeremeyev on 02.05.2023.
//

import Foundation
import StatefulArch
import WebClient

final class ArtifactsService {
    
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func downloadArtifact(from remoteURL: URL, to localURL: URL) async throws {
        let _ = try await session.download(from: remoteURL, to: localURL)
    }
    
}
