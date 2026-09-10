//
//  Terms and Conditions View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/10.
//

import SwiftUI

struct Terms_and_Conditions_View: View {
    var body: some View {
        VStack{
            Text("This view will be filled in future updates.")
                .font(.title)
                .bold()
            Text("This terms and conditions will possibly contain information about how the data is handled, and how it will be shared across devices.")
            Text("Multi device data sharing is not yet available and will be added in upcoming releases.")
            Text("Hospital admins will possibly be able to edit the content in this view as well.")
            // Terms and Conditions (possibly from the developer & the hospital admin.)
            // Planning to fill this after I create a true
        }
        .navigationTitle("Terms and Conditions")
    }
}

#Preview {
    Terms_and_Conditions_View()
}
