//
//  Profile.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/18.
//

import SwiftUI

struct MiniProfile: View {
    var body: some View {
        HStack {
            
            CircleImage(image: Image("CarrotBusket"), size: 60)
                .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text("NickNickNick")
                    .font(.custom("AvenirNext-Demibold", size: 20))
                    .foregroundColor(.black)
                Text("Johne Doe")
                    .font(.custom("AvenirNext-Regular", size: 15))
                    .foregroundColor(.gray)
            }
            
            Spacer()
               
        }.padding()
    }
}

struct MiniProfile_Previews: PreviewProvider {
    static var previews: some View {
        MiniProfile()
    }
}
