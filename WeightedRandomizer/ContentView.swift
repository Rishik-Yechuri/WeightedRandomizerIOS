//
//  ContentView.swift
//  WeightedRandomizer
//
//  Created by Rishik Yechuri on 10/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var fieldCorrect: Bool = false;
    @State var fieldFilled: Bool = false;
    @State var moveToNextScreen: Bool = false
    @State var numOfGroups: String = ""
    var body: some View {
        NavigationView{
        VStack{
            VStack{

            }
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
                            if(numOfGroups != ""){
                                fieldFilled = true
                            }else{
                                fieldFilled = false
                            }
                        })
                    Spacer ()
                    }
                Text("Please Enter A Number")
                    .foregroundColor(.red)
                    .opacity(!fieldCorrect && fieldFilled ? 1 : 0)
            }.frame(alignment:.center)
            Spacer().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: .infinity, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 50, maxHeight: 75)
        }.navigationBarItems(trailing: NavigationLink(destination: GroupFile() ){Text("Next")}.disabled(!fieldCorrect))
        }
    }
}

struct   ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
