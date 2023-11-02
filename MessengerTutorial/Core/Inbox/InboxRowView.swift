//
//  InboxRowView.swift
//  MessengerTutorial
//
//  Created by daya vijayan on 24/10/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top,spacing:12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width:64,height:64)
                .foregroundColor(Color(.systemGray4))
            VStack(alignment:.leading, spacing:4){
                Text("Arathi")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Kannur Squad")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment:.leading)
            }
            HStack{
                Text("yesterday")
                Image(systemName: "chevron.right")
            }.font(.footnote)
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
        .frame(height:72)
    }
}

#Preview {
    InboxRowView()
}
