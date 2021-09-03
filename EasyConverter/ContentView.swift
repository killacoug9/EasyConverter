//
//  ContentView.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 8/24/21.
//

//Personal Question: should i create multiple screens like usa andn brit, or create 1 struct but with passed variable and funcs depending on which button they choose??

import SwiftUI

struct ContentView: View {
    
    let size: CGFloat = 200 //this variable control size of intraconversion arrows icon
    
    let usUnitList: [[String]] = [["Inches"], ["Miles"]]
    //let britUnitList: [[String]] = [["Centimeters"], ["Meters"]]
    
    
    var body: some View {
        
        NavigationView {

                ZStack {
            
                Rectangle()
                    .foregroundColor(.secondary)
                    .ignoresSafeArea()
                //Image("Greyback").resizable().ignoresSafeArea().frame(width: 431, height: 850)
                    
                VStack {
                    
                    //ToolbarItem(content: <#T##() -> _#>) //Setting button in top left or right
                    
                    HStack {
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 14.0).frame(width: 140.0, height: 50.0).blur(radius: 1.50)
                            
                            
                            Text("EasyConverter").foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        /*
                                .padding(.all, 16.0)
                                .foregroundColor(Color.white)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/14.0/*@END_MENU_TOKEN@*/)

        */
                        }
                    }//end of easyConverterHStack
                    
                    Spacer()
                    
                    
                    //Flag and text Hstack
                    HStack {
                        Spacer()
                        
                        NavigationLink (destination: USLanding()){ //changed from usaConversionScreen to USLanding
                            VStack {
                                Image("USAFlag").resizable().aspectRatio(contentMode: .fit).padding(.leading)
                                Text("Make Convertions Within US Measuring System").foregroundColor(.black).padding(.leading)
                            }.navigationTitle("")
                            
                        }
                        
                        Spacer()
                    
                        NavigationLink (destination: USLanding(selectedTab: .Britain) ){
                            
                            
                            //changed from BritainConversionScreen() to USLanding
                            VStack {
                                Image("BritainFlag").resizable().aspectRatio(contentMode: .fit).padding(.trailing)
                                Text("Make Convertions Within British Measuring System").foregroundColor(.black).padding(.trailing)
                            }
                        }
                        
                        Spacer() //Spacer to right of brit
                        
                    }//end Hstack
                    
                    Spacer()//btwn flags and bottom text
                    
                    NavigationLink (destination: USLanding(selectedTab: .USToBrit)){ //changed from usaConversionScreen to USLanding
                        VStack {
                            Image(systemName: "arrow.right.arrow.left").resizable()
                                .frame(width: size, height: size, alignment: .leading)
                                .foregroundColor(.orange)
                            Text("Make Convertions between US and EU").foregroundColor(.black).padding(.leading)
                        }.navigationTitle("")
                        
                    }
                    
                    
                    
                    Spacer()

                }//end VStack
                    
            }//end ZStack
            

            
        }.navigationBarBackButtonHidden(true) //end nav view
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
