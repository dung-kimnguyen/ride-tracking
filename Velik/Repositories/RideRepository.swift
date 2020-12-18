//
//  RideRepository.swift
//  Velik
//
//  Created by Nocero Beguhe on 18/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import Combine
import Injected
import CoreDataStorage

protocol RideRepository {
    typealias RidesFuture = Future<[Ride], Error>
    func fetchRides() -> RidesFuture
}

struct CoreDataRideRepository: RideRepository {

    @Injected var storage: CoreDataStorage

    func fetchRides() -> RidesFuture {
        let context = storage.backgroundContext
        return RidesFuture { promise in
            context.perform {
                do {
                    let rides = try context.fetch(Ride.fetchRequest())
                    promise(.success(rides as! [Ride]))
                } catch {
                    promise(.failure(error))
                }
            }
        }
    }
}
