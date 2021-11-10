//
//  Helper.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 9/22/21.
//

//if I do

import Foundation
//[][][][][]

class Helper{
    
    /*
    func cast<T>(_ value: Any) -> T? {
        return value as? T
    }
    
    func callType(arr: [[String]], ind1: Int, ind2: Int) -> UnitLength? {
        let casted: UnitLength? = cast(arr[ind1][ind2])
        var ret: UnitLength? = casted
        return ret
    }
    */
    ////
    ///
    /*
    func outputUnitConverted(arr: [[String]], ind1: Int, ind2: Int, num1: Double, num2: Helper, arr2: [[String]], oind1: Int, oind2: Int) -> String {
        var output = ""
        var input = Measurement(value: 0, unit: UnitLength.inches)
        //is there a way to do UnitLength.\(inputUnits[unitIndex])
/*
        switch inputUnits[unitIndex][measurementTypeInput] {
        case "Inches":
            input = Measurement(value: Double(num1) ?? 0, unit: num2.callType(arr: inputUnits, ind1: unitIndex, ind2: measurementTypeInput) ?? UnitLength.inches)
        case "Miles":
            input = Measurement(value: 0, unit: UnitLength.inches)
        default:
            input = Measurement(value: Double(num1) ?? 0, unit: UnitLength.inches)
        }
        */
        
        input = Measurement(value: Double(num1) ?? 0, unit: num2.callType(arr: arr, ind1: ind1, ind2: ind2) ?? UnitLength.inches)
        
        output = String(describing: input.converted(to: num2.callType(arr: arr2, ind1: oind1, ind2: oind2) ?? UnitLength.inches))
        
        return output
    }

    
    //[["Inches", "Feet", "Miles"], ["Ounces", "Liters"]]
    //for x in "UsDataTypes" 
    func decide_conversion_USA(type1: String, type2: String)  -> Double{
        //if type1 ==
        
        

        return 0.0
    }
    
    func decide_conversion_EU(){
        
        /* here to save what i was doing in USA conversion
        if type1 == "Inches" {
            
            if type2 == "Inches" {
                
            } else if type2 == "Miles" {
                
            } else if type2 == "Ounces"{
                
            }
        
        } else if type1 == "Feet" {
            
            if type2 == "Inches" {
                
            } else if type2 == "Miles" {
                
            } else if type2 == "Ounces"{
                
            }
        } else if type1 == "Miles" {
            
            if type2 == "Inches" {
                
                
            } else if type2 == "Miles" {
                
                
            } else if type2 == "Ounces"{
                
                
            }
        }
            */
        
    }
    
    func decide_conversion_intra(){
        
    }
    */
    
}
