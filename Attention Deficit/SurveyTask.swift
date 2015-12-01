//
//  SurveyTask.swift
//  Attention Deficit
//
//  Created by Francesco Perera on 11/25/15.
//  Copyright © 2015 Francesco Perera. All rights reserved.
//

import ResearchKit
import Foundation


public var SurveyTask : ORKOrderedTask {
    
    

    var steps = [ORKStep]()
    
    let instructionStep = ORKInstructionStep(identifier: "IntroductionStep")
    instructionStep.title = " Survey Introduction"
    instructionStep.text  = " The following task is a survey, that contains a number of questions that will"
    
    let surveyQuestionStep1Title = "How often do you have difficulty sustaining your attention while doing something for work, school, a hobby, or fun activity (e.g., remaining focused during lectures, lengthy reading or conversations)?"
    let textChoices = [
        ORKTextChoice(text: "Never", value: 0),
        ORKTextChoice(text: "Rarely", value: 1),
        ORKTextChoice(text: "Sometimes", value: 2),
        ORKTextChoice(text: "Often", value: 3)
    ]
    let surveyAnswerFormat1: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep1 = ORKQuestionStep(identifier: "TextChoiceQuestionStep1", title:surveyQuestionStep1Title, answer:surveyAnswerFormat1)
    steps += [surveyQuestionStep1]
    
    let surveyQuestionStep2Title = "How often are you easily distracted by external stimuli, like something in your environment or unrelated thoughts?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat2 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep2 = ORKQuestionStep(identifier: "TextChoiceQuestionStep2", title:surveyQuestionStep2Title, answer:surveyAnswerFormat2 )
    steps += [surveyQuestionStep2]
    
    let surveyQuestionStep3Title = "How often do you avoid, dislike, or are reluctant to engage in tasks that require sustained mental effort or thought?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat3 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep3 = ORKQuestionStep(identifier: "TextChoiceQuestionStep3", title:surveyQuestionStep3Title, answer:surveyAnswerFormat3 )
    steps += [surveyQuestionStep3]
    
    let surveyQuestionStep4Title = "How often do you have trouble listening to someone, even when they are speaking directly to you, like your mind is somewhere else?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat4 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep4 = ORKQuestionStep(identifier: "TextChoiceQuestionStep4", title:surveyQuestionStep4Title, answer:surveyAnswerFormat4 )
    steps += [surveyQuestionStep4]
    
    let surveyQuestionStep5Title = "How often do you have difficulty in organizing an activity or task needing to get done (e.g., poor time management, fails to meet deadlines, difficulty managing sequential tasks)?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat5 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep5 = ORKQuestionStep(identifier: "TextChoiceQuestionStep5", title:surveyQuestionStep5Title, answer:surveyAnswerFormat5 )
    steps += [surveyQuestionStep5]
    
    
    let surveyQuestionStep6Title = "How often do you fail to give close attention to details, or make careless mistakes in things such as schoolwork, at work, or during other activities?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat6 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep6 = ORKQuestionStep(identifier: "TextChoiceQuestionStep6", title:surveyQuestionStep6Title, answer:surveyAnswerFormat6 )
    steps += [surveyQuestionStep6]
    
    let surveyQuestionStep7Title = "How often do you forget to do something you do all the time, such as missing an appointment or paying a bill?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat7 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep7 = ORKQuestionStep(identifier: "TextChoiceQuestionStep7", title:surveyQuestionStep7Title, answer:surveyAnswerFormat7 )
    steps += [surveyQuestionStep7]
    
    let surveyQuestionStep8Title = "How often do you lose, misplace or damage something that's necessary in order to get things done (e.g., your phone, eyeglasses, paperwork, wallet, keys, etc.)? "
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat8 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep8 = ORKQuestionStep(identifier: "TextChoiceQuestionStep8", title:surveyQuestionStep8Title, answer:surveyAnswerFormat8 )
    steps += [surveyQuestionStep8]
    
    let surveyQuestionStep9Title = "How often do you have trouble following through on instructions, or failing to finish schoolwork, chores, or duties in the workplace (e.g., you start a task but quickly lose focus and are easily sidetracked)?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat9 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep9 = ORKQuestionStep(identifier: "TextChoiceQuestionStep9", title:surveyQuestionStep9Title, answer:surveyAnswerFormat9 )
    steps += [surveyQuestionStep9]
    
    let surveyQuestionStep10Title = "How often are you unable to play or engage in leisurely activities quietly?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat10 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep10 = ORKQuestionStep(identifier: "TextChoiceQuestionStep10", title:surveyQuestionStep10Title, answer:surveyAnswerFormat10 )
    steps += [surveyQuestionStep10]
    
    
    let surveyQuestionStep11Title = "How often do you have difficulty waiting your turn, such as while waiting in line?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat11 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep11 = ORKQuestionStep(identifier: "TextChoiceQuestionStep11", title:surveyQuestionStep11Title, answer:surveyAnswerFormat11 )
    steps += [surveyQuestionStep11]
    
    
    let surveyQuestionStep12Title = "How often do you feel like you're 'on the go', acting as if you're 'driven by a motor' (e.g., you're unable to be or uncomfortable being still for an extended period of time, such as in a restaurant or a meeting)"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat12 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep12 = ORKQuestionStep(identifier: "TextChoiceQuestionStep12", title:surveyQuestionStep12Title, answer:surveyAnswerFormat12 )
    steps += [surveyQuestionStep12]
    
    
    let surveyQuestionStep13Title = "How often do you leave your seat in situations when remaining seated is expected (e.g., leaving your place in the office or workplace)? "
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat13 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep13 = ORKQuestionStep(identifier: "TextChoiceQuestionStep13", title:surveyQuestionStep13Title, answer:surveyAnswerFormat13 )
    steps += [surveyQuestionStep13]
    
    let surveyQuestionStep14Title = "How often do you blurt out an answer before a question has been completed (e.g., completing another person's sentence or can't wait your turn in a conversation)? "
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat14 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep14 = ORKQuestionStep(identifier: "TextChoiceQuestionStep14", title:surveyQuestionStep14Title, answer:surveyAnswerFormat14 )
    steps += [surveyQuestionStep14]
    
    let surveyQuestionStep15Title = "How often do you feel restless like you want to get out and do something? "
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat15 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep15 = ORKQuestionStep(identifier: "TextChoiceQuestionStep15", title:surveyQuestionStep15Title, answer:surveyAnswerFormat15 )
    steps += [surveyQuestionStep15]
    
    let surveyQuestionStep16Title = " How often do you fidget with or tap your hands or feet, or squirm in your seat?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat16 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep16 = ORKQuestionStep(identifier: "TextChoiceQuestionStep16", title:surveyQuestionStep16Title, answer:surveyAnswerFormat16 )
    steps += [surveyQuestionStep16]
    
    let surveyQuestionStep17Title = "How often do find yourself talking excessively? "
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat17 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep17 = ORKQuestionStep(identifier: "TextChoiceQuestionStep17", title:surveyQuestionStep17Title, answer:surveyAnswerFormat17 )
    steps += [surveyQuestionStep17]
    
    let surveyQuestionStep18Title = "How often do you interrupt or intrude on others, such as butting into their conversation or taking over what others are doing?"
    // this questions  has same textChoices so no need to define the choices again, just reuse textChoices
    let surveyAnswerFormat18 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let surveyQuestionStep18 = ORKQuestionStep(identifier: "TextChoiceQuestionStep18", title:surveyQuestionStep18Title, answer:surveyAnswerFormat18 )
    steps += [surveyQuestionStep18]
    
    let surveyQuestionStep19Title = "Were several of the symptoms present prior to age 12"
    let textChoices2 = [
        ORKTextChoice(text: "No", value: 0),
        ORKTextChoice(text: "Yes", value: 1),
        ]
    let surveyAnswerFormat19 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices2)
    let surveyQuestionStep19 = ORKQuestionStep(identifier: "TextChoiceQuestionStep19", title:surveyQuestionStep19Title, answer:surveyAnswerFormat19 )
    steps += [surveyQuestionStep19]
    
    let surveyQuestionStep20Title = "Do the symptoms appear in at least two or more settings (e.g., at home and school)?"
    let surveyAnswerFormat20 : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices2)
    let surveyQuestionStep20 = ORKQuestionStep(identifier: "TextChoiceQuestionStep20", title:surveyQuestionStep20Title, answer:surveyAnswerFormat20 )
    steps += [surveyQuestionStep20]
    
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Well Done"
    summaryStep.text = " You successfully answered all the survey questions."
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)


}