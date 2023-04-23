//
//  LoginMainScenario.swift
//  AcelanProgress
//
//  Created by Mikhail Yeremeyev on 22.04.2023.
//

import Foundation
import StatefulArch

final class LoginMainScenario: PageScenario {
    
    @Published
    var loading: Bool = false
    
}

extension LoginMainScenario: LoginMainScenarioProtocol {
    
    func performLogin(email: String, password: String) async {
        loading = true
        // TODO: - Implement API request
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        loading = false
    }
    
    func bindFrom(loadingPublisher: inout Published<Bool>.Publisher) {
        $loading.assign(to: &loadingPublisher)
    }
    
}
