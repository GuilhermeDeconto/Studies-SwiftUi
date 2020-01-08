//
//  ContentView.swift
//  Segunda Aula
//
//  Created by Guilherme Deconto on 07/01/20.
//  Created by Gabriel Fanto on 07/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @State private var showingShare = false
    @State private var isAppDownloaded = false
    
    var body: some View {
        VStack {
            TabView {
                
                ScrollView(.vertical) {
                    HStack {
                        Image("dig")
                            .resizable()
                            .frame(width: 150, height: 150, alignment: .center)
                            .cornerRadius(30)
                        Spacer()
                        VStack {
                            Text("Dig This!").bold().font(.title).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                            Text("Digging puzzles? Dig this!").foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                            Spacer()
                            HStack {
                                
                                // Chamando o AppDownload Button do Struct
                                AppDownloadButton(isAppDownloaded: $isAppDownloaded)
                                
                                if isAppDownloaded == false {
                                    Text("In App Purchases").foregroundColor(.gray).font(.system(size: 10)).frame(width: 55, height: nil, alignment: .leading)
                                }
                                Spacer()
                                Button(action: { self.showingShare = true }){
                                    Image(systemName: "square.and.arrow.up").foregroundColor(.blue).font(.system(size: 22))
                                }.alert(isPresented: $showingShare) { () -> Alert in
                                    Alert(title: Text("Important message"), message: Text("You just shared an app"), dismissButton:
                                        .default(Text("Got it!")))
                                }
                            }
                        }.frame(width: nil, height: 150, alignment: .center)
                    } .padding(20)
                    
                    HStack {
                        VStack{
                            HStack {
                                Text("4.7")
                                    .bold()
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20)).frame(width: 35, height: 20, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 10, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                            }
                            Text("105K Ratings").foregroundColor(.gray).font(.system(size: 10))
                        }
                        Spacer()
                        VStack{
                            Text("N°4")
                                .bold()
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                            
                            Text("Casual")
                                .foregroundColor(.gray)
                                .font(.system(size: 11))
                        }
                        Spacer()
                        VStack{
                            HStack{
                                Text("14").bold().background(Color.red).frame(width: 20, height: 20, alignment: .center).foregroundColor(.white).font(.system(size: 10))
                                Text("12+").bold().foregroundColor(.gray).font(.system(size: 20))
                            }
                            Text("Age").foregroundColor(.gray).font(.system(size: 15))
                        }
                        
                    }.padding(.leading, 20).padding(.trailing, 20)
                    
                    ScrollView(.horizontal){
                        HStack{
                            Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                        }
                        
                    }
                }.tabItem {
                    Image(systemName: "tv.fill")
                    Text("First Tab")
                }
                Text("The content of the second view")
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Second Tab")
                }
            }
        }
    }
    
//    struct ContentView_Previews : PreviewProvider {
//        static var previews: some View {
//           ContentView()
//        }
//    }
}

