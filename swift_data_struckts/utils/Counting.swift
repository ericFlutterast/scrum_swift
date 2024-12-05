//
//  Counting.swift
//  swift_data_struckts
//
//  Created by ericFlutter on 01.12.2024.
//

struct Couting: Sequence, IteratorProtocol {
    let lenght: Int
    private var count: Int = 0
    
    init(lenght: Int) {
        self.lenght = lenght
    }
    
    mutating func next() -> Int? {
        if count == lenght {
            return nil
        } else {
            defer { count += 1 }
            return count
        }
    }
}
