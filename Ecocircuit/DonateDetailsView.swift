//
//  DonateDetailsView.swift
//  Ecocircuit
//
//  Created by Fahd Robbana on 6/11/2023.
//

import SwiftUI

struct DonateDetailsView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 360, height: 229)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/360x229"))
                )
                .offset(x: 0, y: -285.50)
            
            Ellipse()
                .foregroundColor(Color(red: 1, green: 1, blue: 1).opacity(0.50))
                .frame(width: 37, height: 37)
                .offset(x: -149.50, y: -364.50)
            
            Text("Donating Tech to Camp Kuriakos")
                .font(Font.custom("Lato", size: 28).weight(.heavy))
                .foregroundColor(.white)
                .offset(x: 2, y: -121)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 330, height: 0)
                .overlay(
                    Rectangle()
                        .stroke(.white, lineWidth: 2.50)
                )
                .offset(x: -3, y: -64)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 199, height: 0)
                .overlay(
                    Rectangle()
                        .stroke(Color(red: 0.13, green: 0.69, blue: 0.63), lineWidth: 2.50)
                )
                .offset(x: -68.50, y: -64)
            
            Text("$2,450 raised of $5000 goal")
                .font(Font.custom("Lato", size: 16).weight(.semibold))
                .foregroundColor(.white)
                .offset(x: -68.50, y: -38.50)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 330, height: 0)
                .overlay(
                    Rectangle()
                        .stroke(Color(red: 1, green: 1, blue: 1).opacity(0.60), lineWidth: 0.50)
                )
                .offset(x: -3, y: 42)
            
            Text("Recent Donations")
                .font(Font.custom("Lato", size: 16).weight(.medium))
                .italic()
                .foregroundColor(.white)
                .offset(x: -108.50, y: 6.50)
            
            Text("Description")
                .font(Font.custom("Lato", size: 16).weight(.medium))
                .italic()
                .foregroundColor(.white)
                .offset(x: -129.50, y: 141.50)
            
            // More content here...

            ZStack {
                Rectangle()
                    .foregroundColor(Color(red: 0.72, green: 0.36, blue: 0.41))
                    .frame(width: 251, height: 35)
                    .cornerRadius(50)
                    .offset(x: 0, y: 0)

                Text("Donate Now")
                    .font(Font.custom("Lato", size: 18).weight(.heavy))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 0)
            }
            .frame(width: 251, height: 35)
            .offset(x: 1.50, y: 360.50)
        }
        .frame(width: 360, height: 800)
        .background(Color(red: 0.06, green: 0.09, blue: 0.13))
    }
}

#Preview {
    DonateDetailsView()
}
