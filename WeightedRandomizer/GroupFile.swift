//
//  ContentView.swift
//  WeightedRandomizer
//
//  Created by Rishik Yechuri on 10/14/20.
//

import SwiftUI

struct GroupFile: View {
    @State var numOfPeople: String = ""
    var body: some View {
        //NavigationView{
        VStack(){
            HStack{
                //Spacer()
            }
            Spacer()
           
            VStack{
                Text("# of People")
                HStack{
                    Spacer()
                    TextField("Ex:2", text: $numOfPeople)
                        .frame(width: 80.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle ())
                    Spacer ()
                }
            }
           // Spacer()
            VStack{
                Text("User Request")
                HStack{
                    Spacer()
                    TextField("Ex:Let's Go on a Walk",text:$numOfPeople)
                    .frame(width:200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer()
                    }
                }
            Spacer()
            Spacer()
            }.navigationBarItems(trailing: NavigationLink(destination: GroupFile()){Text("Next")})
        //}
    }
}

struct   GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupFile()
    }
}
