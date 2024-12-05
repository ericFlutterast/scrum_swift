import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) {scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
 }


struct ScrumView_Previews: PreviewProvider{
    static var previews: some View{
        ScrumView(scrums: DailyScrum.sampleData)
    }
}
