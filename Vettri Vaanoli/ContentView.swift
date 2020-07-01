//
//  ContentView.swift
//  Vettri Vaanoli
//
//  Created by Grager D'souza on 27/06/2020.
//  Copyright © 2020 Grager D'souza. All rights reserved.
//

import SwiftUI
//import AVFoundation
import AVKit

struct ContentView: View {
    var body: some View {
            ZStack{
                Background()
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                    .offset(x: 0, y: -300)
                    .padding(.bottom, -300)
                //Social()
                 
                //MusicPlayer()
            }
        
    }
    
}

struct Background: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MusicPlayer: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack {
            Text("Music Player")
        }
    }
}

struct Social: View {
    @State private var showDetails = false

    var body: some View {
        ZStack {
            Button(action: {
                self.showDetails.toggle()
            }) {
                //Image("")
                Text("ttt")
            }

            if showDetails {
                Text("You should follow me on Twitter: @twostraws")
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
