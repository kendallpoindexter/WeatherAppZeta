//
//  HomeViewModel.swift
//  WeatherAppZeta
//
//  Created by Kendall Poindexter on 5/26/20.
//  Copyright © 2020 Kendall Poindexter. All rights reserved.
//

import CoreLocation

class HomeViewModel: NSObject {
    let locationManager = CLLocationManager()
    
    func setLocationManagerDelegate() {
        locationManager.delegate = self
    }
    
     func requestLocation() {
        requestAuthorization {
            locationManager.requestLocation()
        }
    }
    
    private func requestAuthorization(completion: () -> Void) {
        locationManager.requestWhenInUseAuthorization()
        completion()
    }
    
}

extension HomeViewModel: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        guard let latitude = location?.coordinate.latitude,
            let longitude = location?.coordinate.longitude else { return }
        print(latitude)
        print(longitude)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Present Error Alert Messsage here
        print(error)
    }
}


