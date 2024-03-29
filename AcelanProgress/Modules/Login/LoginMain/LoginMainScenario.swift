//
//  LoginMainScenario.swift
//  AcelanProgress
//
//  Created by Mikhail Yeremeyev on 22.04.2023.
//

import Foundation
import StatefulArch

final class LoginMainScenario: PageScenario {
    
    private var authService: AuthService!
    
    override func provideServices(with serviceProvider: ServiceProvider) {
        serviceProvider.provide(service: &authService)
    }
    
    @Published
    var loading = false
    
}

extension LoginMainScenario: LoginMainScenarioProtocol, ErrorHandler {
    
    func performLogIn(email: String, password: String) async -> Bool {
        defer {
            loading = false
        }
        loading = true
        
        let result = await handleError {
            try await authService.performLogIn(email: email, password: password)
        }
        
        return result.isSuccess
    }
    
    func bindFrom(loadingPublisher: inout Published<Bool>.Publisher) {
        $loading.assign(to: &loadingPublisher)
    }
    
}
