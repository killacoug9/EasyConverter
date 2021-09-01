//
//  USLanding.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 8/31/21.
//

import SwiftUI


struct USLanding: View {
    var body: some View {
        
        TabView(){

            usaConversionScreen().tabItem { Image(systemName: "dollarsign.square") }.tag(1)
                
            BritainConversionScreen().tabItem { Image(systemName: "eurosign.square") }.tag(2)
                
            SettingsScreen().tabItem { Image(systemName: "eurosign.square") }.tag(3)
                
            }
    }
}

/*
struct AppTabView: View{
    enum Tab {
        case
    }
}
*/

struct USLanding_Previews: PreviewProvider {
    static var previews: some View {
        USLanding()
    }
}
