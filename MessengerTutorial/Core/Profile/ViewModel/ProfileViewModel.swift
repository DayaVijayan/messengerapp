//
//  ProfileViewModel.swift
//  MessengerTutorial
//
//  Created by daya vijayan on 24/10/23.
//

import SwiftUI
import PhotosUI
class ProfileViewModel: ObservableObject{
    @Published var selectedItem : PhotosPickerItem?{
        didSet {Task{try await loadImage()}} //observer
        //when we select an iten we are going to trigger a particular function//
    }
    //Let's say you're building a weather app, and you want to show the current weather for a city. You use async to ask a weather website for the data, and then you use await to wait for the response:
    // Asynchronously fetch weather data
//    async {
//        let weatherData = await fetchWeatherData(for: "New York")
//        updateUI(with: weatherData)
//    }In this case, your app won't freeze while waiting for the weather data. It'll remain responsive, and once the data is ready, you can update your user interface with it.
    
//    So, async and await make your app smoother by allowing it to do multiple things at once without getting stuck when dealing with time-consuming tasks.

    @Published var profileImage: Image?
    func loadImage() async throws{
        guard let item = selectedItem else {return} //make sure ypu have an item
        guard let imageData = try await item.loadTransferable(type: Data.self)else{return}
        guard let uiImage = UIImage(data: imageData)else {return}
        self.profileImage = Image(uiImage: uiImage)
        
    }
}
