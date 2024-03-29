//
//  VLabel.swift
//  AcelanProgress
//
//  Created by Mikhail Yeremeyev on 23.04.2023.
//

import SwiftUI
import PNComponents

struct VLabel: View {
    
    let title: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.resource(.DarkGray))
            
            Text(content)
                .font(.system(size: 16))
                .foregroundColor(.resource(.Black))
        }
        .alignment(.leading)
    }

}
