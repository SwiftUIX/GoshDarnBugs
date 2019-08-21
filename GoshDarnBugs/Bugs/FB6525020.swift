//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

struct FB6525020: BugDemonstrationView {
    @State var isSheetPresented: Bool = false

    var body: some View {
        VStack {
            Text("Click Present")
            Text("... and then try to click Dismiss")
        }
        .navigationBarItems(trailing: Button(action: presentSheet) {
            Text("Present")
        }.sheet(isPresented: $isSheetPresented) {
            SheetView()
        })
    }

    func presentSheet() {
        isSheetPresented = true
    }
}

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Button(action: dismiss) {
                Text("Dismiss")
            }
        }
    }

    func dismiss() {
        presentationMode.wrappedValue.dismiss() // BUG: This doesn't work!
    }
}
