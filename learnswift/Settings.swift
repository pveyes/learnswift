    //
    //  Settings.swift
    //  learnswift
    //
    //  Created by Fatih Kalifa on 27/12/19.
    //  Copyright © 2019 pveyes. All rights reserved.
    //
    
    import SwiftUI
    
    struct Settings: View {
        @State var receive = false
        @State var number = 1
        @State var selection = 1
        @State var date = Date()
        
        var body: some View {
            NavigationView {
                Form {
                    Toggle(isOn: $receive) {
                        Text("Receive Notification")
                    }
                    Stepper(value: $number, in: 1...10) {
                        Text("Notification time")
                    }
                    Picker(selection: $selection, label: Text("Favourite Course")) {
                        Text("SwiftUI").tag(1)
                        Text("React").tag(2)
                    }
                    DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                }
                .navigationBarTitle("Settings")
            }
        }
    }
    
    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
        }
    }
