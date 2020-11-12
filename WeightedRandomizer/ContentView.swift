//
//  ContentView.swift
//  WeightedRandomizer
//
//  Created by Rishik Yechuri on 10/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var fieldCorrect: Bool = false;
    @State var moveToNextScreen: Bool = false
    @State var numOfGroups: String = ""
    var body: some View {
        NavigationView{
        VStack{
            VStack{

            }
            Spacer()
            Spacer()
            VStack{
                Text("# of groups")
                HStack{
                    Spacer()
                    TextField("Ex:3", text: $numOfGroups)
                        .frame(width: 80.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle ())
                        .onChange(of: numOfGroups, perform: { value in
                            let enteredText = Int(numOfGroups)
                            if enteredText == nil{
                                //String entered
                                fieldCorrect = false
                            }
                            else{
                            //Int entered
                                fieldCorrect = true
                            }
                        })
                    Spacer ()
                    }
                }
            Spacer()
            Spacer()
            Spacer()
        }.navigationBarItems(trailing: NavigationLink(destination: GroupFile(), isActive:$fieldCorrect){Text("Next")}.simultaneousGesture(TapGesture().onEnded{
                
            }))
        }
    }
}

struct   ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
