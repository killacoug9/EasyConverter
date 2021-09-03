//
//  USLanding.swift
//  EasyConverter
//
//  Created by Kyle Hawkins on 8/31/21.
////
//option + command to fold

import SwiftUI

enum Tab {
    case USA
    case Britain
    case Settings
    case USToBrit
}

struct USLanding: View {
    
    @State public var selectedTab: Tab = .USA
    
    var body: some View {
        
        TabView(selection: $selectedTab){

            usaConversionScreen().tabItem { Image(systemName: "dollarsign.square") }.tag(Tab.USA)
                
            BritainConversionScreen().tabItem { Image(systemName: "eurosign.square") }.tag(Tab.Britain)
                
            Interconversion().tabItem { Image(systemName: "eurosign.square") }.tag(Tab.USToBrit)
            
            SettingsScreen().tabItem { Image(systemName: "gear") }.tag(Tab.Settings)
                
            }
    }
}



struct USLanding_Previews: PreviewProvider {
    static var previews: some View {
        USLanding()
    }
}
