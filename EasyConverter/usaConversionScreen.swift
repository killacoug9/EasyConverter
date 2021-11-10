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
import Foundation

struct usaConversionScreen: View {
    
    private let size: CGFloat = 30
    //change strings in array to enums
    
    //will implement the ability to switch to volume, speed etc.
    let input_units_arr = [["Inches", "Feet", "Miles"], ["Ounces", "Liters"]]
    @State private var unitIndex = 0
    @State var measurementTypeInput = 0
    
    let output_units_arr = [["Inches", "Feet", "Miles"], ["Ounces", "Liters"]]
    //let usDataTypes2 = ["Inches", "Miles", "Ounces"]
    
    @State private var unitIndex2 = 0
    @State var measurementTypeOutput = 0
    
    @State var num1 = ""
    
    //let distance = Measurement(value: 106.4, unit: UnitLength.kilometers)
    
    struct Input {
        var type: String
        var value: Double
    };
    
    //
    // let input_var = Input(type: , value: 53.4)
    //
    
    
    //let formatter = MeasurementFormatter()
    //Text("\(formatter.string(from: distance.unit))")
    
    //@State var inputArrayUnits = UnitLength.miles()
    
    
    
    //create a stuct with .kilometers type and a string name ??
    //  ( value:   , unit: arr[$selection]) ???
    
    //var num2 = Helper.decide_conversion_USA(type1: usDataTypes[unitIndex], type2: usDataTypes2[unitIndex2] )
    
//    var outputUnitConverted: String {
//        var output = ""
//        var input = Measurement(value: 0, unit: UnitLength.inches)
//        //is there a way to do UnitLength.\(inputUnits[unitIndex])
///*
//        switch inputUnits[unitIndex][measurementTypeInput] {
//        case "Inches":
//            input = Measurement(value: Double(num1) ?? 0, unit: num2.callType(arr: inputUnits, ind1: unitIndex, ind2: measurementTypeInput) ?? UnitLength.inches)
//        case "Miles":
//            input = Measurement(value: 0, unit: UnitLength.inches)
//        default:
//            input = Measurement(value: Double(num1) ?? 0, unit: UnitLength.inches)
//        }
//        */
//
//        input = Measurement(value: Double(num1) ?? 0, unit: num2.callType(arr: inputUnits, ind1: unitIndex, ind2: measurementTypeInput) ?? UnitLength.inches)
//
//        output = String(describing: input.converted(to: num2.callType(arr: outputUnits, ind1: unitIndex2, ind2: measurementTypeOutput) ?? UnitLength.inches))
//
//        return output
//    }
   /*
    var num2: Double {
        return input_var.value
    }*/
    
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
                            
                            Picker(selection: $unitIndex, label: Text("\(input_units_arr[0][unitIndex])")) {
                                        ForEach(0 ..< input_units_arr[0].count) {
                                            Text(self.input_units_arr[0][$0])
                                        }
                                //dataTypeTwo = $unitIndex
                                     }
                                  }.padding().pickerStyle(MenuPickerStyle())
                                //}
                                
                        //3.
                        Spacer()
                        
                        VStack{
                            
                            Text("Unit 2: ")
                            
                            Picker(selection: $unitIndex2, label: Text("\(output_units_arr[0][unitIndex2])")) {
                                        ForEach(0 ..< output_units_arr[0].count) {
                                            Text(self.output_units_arr[0][$0])
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
                            
                            
//                            Text("\(num2.decide_conversion_USA(type1: input_units_arr[0][unitIndex], type2: output_units_arr[0][unitIndex2]))")
//                                .font(.system(size: 30.0))
                            
                                //Text("\(num2, specifier: "%.3f")").font(.system(size: 30.0))
                                //Text("\(productPrice, specifier: "%.2f")")
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
    
//    var outputUnitConverted: String {
//        var output = ""
//        var input = Measurement(value: 0, unit: UnitLength.inches)
//        //is there a way to do UnitLength.\(inputUnits[unitIndex])
///*
//        switch inputUnits[unitIndex][measurementTypeInput] {
//        case "Inches":
//            input = Measurement(value: Double(num1) ?? 0, unit: num2.callType(arr: inputUnits, ind1: unitIndex, ind2: measurementTypeInput) ?? UnitLength.inches)
//        case "Miles":
//            input = Measurement(value: 0, unit: UnitLength.inches)
//        default:
//            input = Measurement(value: Double(num1) ?? 0, unit: UnitLength.inches)
//        }
//        */
//
//        input = Measurement(value: Double(num1) ?? 0, unit: num2.callType(arr: inputUnits, ind1: unitIndex, ind2: measurementTypeInput) ?? UnitLength.inches)
//
//        output = String(describing: input.converted(to: num2.callType(arr: outputUnits, ind1: unitIndex2, ind2: measurementTypeOutput) ?? UnitLength.inches))
//
//        return output
//    }
    
}


struct usaConversionScreen_Previews: PreviewProvider {
    static var previews: some View {
        usaConversionScreen()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
