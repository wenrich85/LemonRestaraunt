//
//  PremiumBadge.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/30/25.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
            Text("Premium")
                .font(.caption)
        }
        .font(.caption)
        .foregroundColor(.orange)
        .padding()
        .background(Color.orange.opacity(0.1))
        .cornerRadius(10)
    }
}
#Preview {
    PremiumBadge()
}
