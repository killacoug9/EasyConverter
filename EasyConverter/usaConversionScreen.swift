//
//  usaConversionScreen.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 8/27/21.
//

//Speed(fps, mph, ), distance(inch, miles, ft, yards, etc), measurment for cooking(),

import SwiftUI



struct usaConversionScreen: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                Rectangle()
                    .foregroundColor(.secondary)
                    .ignoresSafeArea()

                VStack{
                    
                    Text("USA")
                    
                    /*
                    Text("Hello World")
                        .padding()
                        .navigationTitle("SwiftUI")
                        .toolbar {
                            ToolbarItemGroup(placement: .bottomBar)
                            {
                                Button("Home") {
                                    print("pressed")
                                }
                            
                                Button("UK Conversion"){
                                    
                                }
                                
                                Button("US Conversion"){
                                    
                                }
                                
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "gear")
                                })
                                
                                
                            }
                    
                    }
                     */
                    
                    
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
