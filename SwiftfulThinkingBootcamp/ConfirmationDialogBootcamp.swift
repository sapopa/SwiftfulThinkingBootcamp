//
//  ConfirmationDialogBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 22.12.2024.
//

import SwiftUI

struct ConfirmationDialogBootcamp: View {
    @State private var isLikeConfirmationDialogShowing = false
    @State private var isDislikeConfirmationDialogShowing = false
    @State private var isPostLiked: Bool? = nil
    
    var postMessage: String {
        switch isPostLiked {
        case true:
            "You have liked this post"
        case false:
            "You have disliked this post"
        default:
            "You haven't interacted with this post"
        }
    }
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(.red)
                    .frame(width: 40, height: 40)
                Text("@Username")
                    .font(.headline)
                    .bold()
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(.green)
                    .frame(height: 400)
                
                Text(postMessage)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            HStack {
                Spacer()
                Button {
                    if isPostLiked == true {
                        isPostLiked = nil
                    } else {
                        isLikeConfirmationDialogShowing.toggle()
                    }
                } label: {
                    Image(systemName: isPostLiked == true ? "hand.thumbsup.fill" : "hand.thumbsup")
                    Text("Like")
                }
                .confirmationDialog("Are you sure you want to like this post?", isPresented: $isLikeConfirmationDialogShowing, actions: {
                    Button("Confirm Like") {
                        isPostLiked = true
                    }
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Button {
                    if isPostLiked == false {
                        isPostLiked = nil
                    }
                    else {
                        isDislikeConfirmationDialogShowing.toggle()
                    }
                } label: {
                    Image(systemName: isPostLiked == false ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                    Text("Dislike")
                }
                .confirmationDialog("Are you sure you want to dislike this post?", isPresented: $isDislikeConfirmationDialogShowing, actions: {
                    Button("Confirm Dislike") {
                        isPostLiked = false
                    }
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
            }
            .foregroundStyle(.white)
            .font(.title2)
        }

    }
}

#Preview {
    ConfirmationDialogBootcamp()
}
