//
//  AppDownloadButton.swift
//  Segunda Aula
//
//  Created by Gabriel Fanto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

//
// Este e o Struct que esta sendo lido no AppDownloadButton
//

import SwiftUI

struct AppDownloadButton: View { // isto e uma component
    
    @Binding var isAppDownloaded: Bool //vai passar para ele os dados
    
    var body: some View {
        Button(action: {
            
            //self.showingAlert = true
            if self.isAppDownloaded {
                print("App Aberto")
            }else{
                self.isAppDownloaded = true
                print("download realizado com sucesso!")
            }
        } ) {
            Text( isAppDownloaded ? "OPEN" : "GET").bold().foregroundColor(.white).frame(width: 60, height: 30, alignment: .center).background(Color.blue).cornerRadius(10)
            
            
        }
    }
}
