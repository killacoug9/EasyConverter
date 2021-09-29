//
//  usaConversionScreen.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 8/27/21.
//

//Speed(fps, mph, ), distance(inch, miles, ft, yards, etc), measurment for cooking(),

//howo do i want it layed out???: two scroll bars over text edit bars, arrow logo from left to right,
//multi dementional array with unit types?

//do i make a parent class structure that takes variables/ unit list for the other child classes like britain and intra-conversion

//do i need a choose unit/ conversion type function, then a function for each individual convertion and their counterparts


import SwiftUI

struct usaConversionScreen: View {
    
    private let size: CGFloat = 30
    
    //will implement the ability to switch to volume, speed etc.
    let usDataTypes = [["Inches", "Feet", "Miles"], ["Ounces", "Liters"]]
    @State private var unitIndex = 0
    
    let usDataTypes2 = [["Inches", "Feet", "Miles"], ["Ounces", "Liters"]]
    //let usDataTypes2 = ["Inches", "Miles", "Ounces"]
    @State private var unitIndex2 = 0
    
    @State var num1 = ""
    
    //var num2 = Helper.decide_conversion_USA(type1: usDataTypes[unitIndex], type2: usDataTypes2[unitIndex2] )
    
    @State var num2 = Helper()
    
    @State private var isEditing = false

    
    //@State private var dataTypeTwo = 0
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Rectangle()
                    .foregroundColor(.secondary)
                    .ignoresSafeArea()

                VStack{
                    
                    //1.
                    
                    Spacer()
                    
                    //this is my unit selection HStack
                    HStack{
                        //2.
                        Spacer()
                        
                        VStack{
                            
                            Text("Unit 1:")
                                                        
                            Picker(selection: $unitIndex, label: Text("\(usDataTypes[0][unitIndex])")) {
                                        ForEach(0 ..< usDataTypes[0].count) {
                                            Text(self.usDataTypes[0][$0])
                                        }
                                //dataTypeTwo = $unitIndex
                                     }
                                  }.padding().pickerStyle(MenuPickerStyle())
                                //}
                                
                        //3.
                        Spacer()
                        
                        VStack{
                            
                            Text("Unit 2: ")
                            
                            Picker(selection: $unitIndex2, label: Text("\(usDataTypes2[0][unitIndex2])")) {
                                        ForEach(0 ..< usDataTypes2[0].count) {
                                            Text(self.usDataTypes2[0][$0])
                                        }
                                
                                
                                     }
                        }.padding().pickerStyle(MenuPickerStyle())

                        
                        //4.
                        Spacer()

                    }//HStack
                    
                    VStack{
                        
                        HStack {
                            
                            TextField(
                                "Enter number",
                                 text: $num1
                            ) { isEditing in
                                self.isEditing = isEditing
                            }
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            //.border(Color(UIColor.separator))
                            .frame(width: 175.0, height: 50.0)
                            .background(Color.white)
                            .padding()
                            
                            //Spacer()
                            Image(systemName: "arrow.right").resizable()
                                .frame(width: size, height: size, alignment: .leading)
                                .foregroundColor(.orange)
                            
                            
                            Text("\(num2.decide_conversion_USA(type1: usDataTypes[0][unitIndex], type2: usDataTypes2[0][unitIndex2]))")
                                .font(.system(size: 30.0))
                            
                            /*
                            TextField(
                                "Enter number",
                                 text: $num2
                            ) { isEditing in
                                self.isEditing = isEditing
                            }
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            //.border(Color(UIColor.separator))
                            .frame(height: 50.0)
                            .background(Color.white)
                            .padding()
                             
                            */
                            
                            
                            
                            Spacer()
                        }
                    }
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
