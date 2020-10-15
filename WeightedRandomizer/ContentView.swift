//
//  ContentView.swift
//  WeightedRandomizer
//
//  Created by Rishik Yechuri on 10/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var numOfGroups: String = ""
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {}) {
                    Text("Hey")
                }.offset(x:-20,y:0)
            }
            Spacer()
            VStack{
                Text("# of groups")
                HStack{
                    Spacer()
                    TextField("Ex:3", text: $numOfGroups)
                        .frame(width: 80.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle ())
                    Spacer ()
                }
            }
            Spacer()
        }
    }
}

struct   ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
