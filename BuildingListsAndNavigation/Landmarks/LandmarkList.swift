//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tema.Tian on 2020/5/15.
//  Copyright © 2020 Tema.Tian. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      NavigationView {
        List(landmarkData) { landmark in
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
       .navigationBarTitle("Landmarks")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone 11", "iPhone 8"], id: \.self) { deviceName in
        LandmarkList()
          .previewDevice(PreviewDevice(rawValue: deviceName))
          .previewDisplayName(deviceName)
      }
    }
}
