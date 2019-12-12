//
//  TabBar.swift
//  learnswift
//
//  Created by Fatih Kalifa on 27/12/19.
//  Copyright © 2019 pveyes. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView() {
            Home().tabItem {
                VStack {
                    Image("IconHome")
                    Text("Home")
                }
            }
            .tag(1)
            ContentView().tabItem {
                VStack {
                    Image("IconCards")
                    Text("Certificates")
                }
            }
            .tag(2)
            UpdateList().tabItem {
                VStack {
                    Image("IconSettings")
                    Text("Updates")
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar()
            TabBar()
                .environment(\.colorScheme, .dark)
                .environment(\.sizeCategory, .extraSmall)
        }
    }
}
