//
//  ContentView.swift
//  Geometry day35 4.19
//
//  Created by 李 on 2023/04/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //构建geometry的视图
//        GeometryReader{
//            geo in
            VStack {
                GeometryReader{geo in
                    Rectangle()
                        .frame(width: geo.size.width/4,height: geo.size.height/8,alignment: .center)
                    //操作的控制
                        .onTapGesture {
                            print("x:\(geo.frame(in: .global).minX),y:\(geo.frame(in: .global).minY)")
                            print("x:\(geo.frame(in: .local).minX),y:\(geo.frame(in: .local).minY)")                }
                                    }
                GeometryReader{
                    geo in
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(width: geo.size.width/4,height: geo.size.height/8,alignment: .center)
                    //操作的控制
                        .onTapGesture {
                            print("x:\(geo.frame(in: .global).minX),y:\(geo.frame(in: .global).minY)")
                            print("x:\(geo.frame(in: .local).minX),y:\(geo.frame(in: .local).minY)")
                    
                    
                }
                            }
                
            }
        }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    
