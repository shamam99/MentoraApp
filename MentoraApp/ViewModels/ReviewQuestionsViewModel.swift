//
//  ReviewQuestionsViewModel.swift
//  Mentura
//
//  Created by Yara Alshammari on 08/11/1446 AH.
//

import SwiftUI

class QuestionReviewViewModel: ObservableObject {
    @Published var questions: [String] = [

    ]
    
    @Published var isPerfect: Bool? = nil

    func markAsPerfect() {
        isPerfect = true
    }

    func editQuestions() {
        isPerfect = false
    }
}
