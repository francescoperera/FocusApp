//
//  ConsentDocument.swift
//  Attention Deficit
//
//  Created by Francesco Perera on 11/21/15.
//  Copyright © 2015 Francesco Perera. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument : ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Attention Deficit Consent"
    
    let consentSectionTypes: [ORKConsentSectionType] = [
        .Overview,
        .DataGathering,
        .Privacy,
        .DataUse,
        .TimeCommitment,
        .StudySurvey,
        .StudyTasks,
        .Withdrawing
    ]
    
    var consentSections: [ORKConsentSection] = consentSectionTypes.map { contentSectionType in
        let consentSection = ORKConsentSection(type: contentSectionType)
        consentSection.summary = "This study contains a survey and active tasks that will test your attention level"
        consentSection.content = "In this study you will be asked to answer all questions in the survey,your short term memory and your attention ( impulse control ) will be tested"
        return consentSection
    }
    
    consentDocument.sections = consentSections
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    
    return consentDocument
}