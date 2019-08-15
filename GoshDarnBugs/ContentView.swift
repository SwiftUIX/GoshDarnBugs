//
// Copyright (c) Vatsal Manot
//

import SwiftUI

/// A view that represents the demonstration of some bug.
protocol BugDemonstrationView: View {
    init()
}

/// A type that represents the demonstration of some bug.
final class BugDemonstration: Identifiable {
    public let name: String
    public let makeView: () -> AnyView

    init<View: BugDemonstrationView>(_ viewType: View.Type) {
        self.name = String(describing: viewType)
        self.makeView = { AnyView(View()) }
    }
}

struct ContentView: View {
    let demonstrations: [BugDemonstration] = [
        .init(FB6525020.self),
        .init(FB6588325.self),
        .init(FB6863188.self),
        .init(FB7025809.self),
    ]

    var body: some View {
        NavigationView {
            List(demonstrations) { demonstration in
                NavigationLink(destination: demonstration.makeView()) {
                    Text(demonstration.name)
                }
            }
            .navigationBarTitle("Gosh Darn Bugs!")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
