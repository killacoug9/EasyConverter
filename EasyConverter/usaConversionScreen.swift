//
//  usaConversionScreen.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 8/27/21.
//

//Speed(fps, mph, ), distance(inch, miles, ft, yards, etc), measurment for cooking(),

//howo do i want it layed out???: two scroll bars over text edit bars, arrow logo from left to right,
//multi dementional array with unit types?

import SwiftUI

struct usaConversionScreen: View {
    
    let usDataTypes = ["inches", "miles"]
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Rectangle()
                    .foregroundColor(.secondary)
                    .ignoresSafeArea()

                VStack{
                    
                    //1.
                    Spacer()
                    
                    HStack{
                        //2.
                        Spacer()
                        
                        VStack{
                            
                            Text("Unit 1:")
                            
                            //Form {
                            
                            
                                Section {
                                    
                                    Picker(selection: .constant(1), label: Text("Unit").padding()) {
                                        /*
                                        ForEach(0 ..< usDataTypes.count) { number in
                                            Text("Row \(number)")
                                            
                                         }*/

                                        Text("1").tag(1)
                                        Text("2").tag(2)
                                        
                                    }
                                    
                                    
                                }.pickerStyle(MenuPickerStyle())
                                
                            //}
                            
                        }
                        //3.
                        Spacer()
                        
                        VStack{
                            
                            Text("Unit 2: ")
                            
                        }
                        //4.
                        Spacer()

                    }//HStack
                    
                    //5.
                    Spacer()
                    
                    
                    Spacer()
                }//VStack
                
            }
        }
    }
}


struct usaConversionScreen_Previews: PreviewProvider {
    static var previews: some View {
        usaConversionScreen()
    }
}
