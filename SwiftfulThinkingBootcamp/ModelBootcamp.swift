//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 26.12.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID()
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State private var users: [UserModel] = [
        UserModel(displayName: "Sebastian", userName: "PawPah", followerCount: 69420, isVerified: false),
        UserModel(displayName: "Andrei", userName: "Hiro", followerCount: 583_425, isVerified: true),
        UserModel(displayName: "Raluca", userName: "Zero Two", followerCount: 342_221_322, isVerified: true),
        UserModel(displayName: "Raul Andreas", userName: "Andreas-san", followerCount: 3, isVerified: false)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            HStack {
                                Text(user.displayName)
                                    .font(.headline)
                                if user.isVerified {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(.green)
                                }
                            }
                            Text("@\(user.userName)")
                                .foregroundStyle(.tertiary)
                        }
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.tertiary)
                                .font(.caption)
                                
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
