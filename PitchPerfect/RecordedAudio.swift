//
//  RecordedAudio.swift
//  PitchPerfect
//
//  Created by andrew on 16/03/2015.
//  Copyright (c) 2015 Firekite. All rights reserved.
//  Taken from Udacity NanaDegree COURSE 

import Foundation



class RecordedAudio: NSObject {
    var filePathUrl: NSURL!
    var title: String!
    
    //Properties of optional type are automatically initialized with a value of nil
    // however this is not good coding practise so reviewer advised code below
    //I had addded this code on earlier versions but had failed to make the link
    // to using an initialier in PlayRcordedSoundViewController.swift and replacing  the key value
    //coding of recordedAudio = RecordedAudio()   with an initialiser
    //  recordedAudio = RecordedAudio(filePathUrl: recorder.url, title: recorder.url.lastPathComponent!)
    // see line 85
    // every still works - Thankyou

    //create and initialize method
    init(filePathUrl:NSURL, title: String){
        //first set the nil variables to the values in the parameters
        self.filePathUrl = filePathUrl
        self.title = title
        //then  you call super.init() to initialize the model class if you don't do it the complier will do it automatically.
        //This is what you where talking about, the setup that would leave the variables set to nil. We basically came in and set //the values to a non nil value.
        //super.init()
    }
}