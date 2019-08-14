//
//  FB6461590.swift
//  GoshDarnBugs
//
//  Created by Danil Verbytski on 8/14/19.
//  Copyright © 2019 Vatsal Manot. All rights reserved.
//

import SwiftUI

struct FB6461590: BugDemonstrationView {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("You can't return by back button")) {
                Text("Push me")
            }
        }.onTapGesture {}
    }
}
