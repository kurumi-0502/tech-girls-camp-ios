//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 300, height: 150)
            .overlay(VStack{
                HStack {
                    Text("Left Aligned")
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                Text("Center Aligned")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                HStack {
                    Spacer()
                    Text("Right Aligned")
                    .foregroundColor(.white)
                    
                }
            })
    }
}

#Preview {
    dView()
}
