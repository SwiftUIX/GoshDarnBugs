//
//  FBxxxx.swift
//  GoshDarnBugs
//
//  Created by blaszm01 on 14/08/2019.
//  Copyright © 2019 Vatsal Manot. All rights reserved.
//

import SwiftUI

struct FB7025809: BugDemonstrationView {
    var body: some View {
      VStack {
        Text("Line 1\nLine 2\nLine 3\nLine 4")
        Text("Addtional line")
      }
    }
}

#if DEBUG
struct FB7025809_Previews: PreviewProvider {
    static var previews: some View {
        FB7025809()
    }
}
#endif
