//
//  HostingController.swift
//  WeChat
//
//  Created by Tema.Tian on 2020/5/19.
//  Copyright © 2020 Tema.Tian. All rights reserved.
//

import SwiftUI
import Combine

class HostingController<Content: View>: UIHostingController<HostingMiddle<Content>> {
  
  init(rootView: Content) {
    super.init(rootView: HostingMiddle(content: rootView))
  }
  
  @objc required dynamic init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}


struct HostingMiddle<Content: View>: View {

  let content: Content
  
  var body: some View {
     content
  }
}
