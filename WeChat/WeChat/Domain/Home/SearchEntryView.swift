//
//  SearchEntryView.swift
//  WeChat
//
//  Created by Tema.Tian on 2020/5/19.
//  Copyright © 2020 Tema.Tian. All rights reserved.
//

import SwiftUI

struct SearchEntryView: View {
  
  @State private var isSearchPresented: Bool = false
  
  var body: some View {
    Button(action: {self.isSearchPresented.toggle()}) {
      VStack(alignment: .center) {
        HStack{
          Spacer()
          Image(systemName: "magnifyingglass")
            .resizable()
            .frame(width: 13, height: 13)
            .foregroundColor(.secondary)
          Text("搜索")
          Spacer()
        }
      }
      .padding(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
      .background(Color.white)
      .cornerRadius(6)
    }
    .padding(EdgeInsets(top: 6, leading: -10, bottom: 6, trailing: -10))
    .listRowBackground(Color("search_corner_background"))
    .sheet(isPresented: $isSearchPresented, content: { SearchView() })
  }
}
