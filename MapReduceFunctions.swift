//
//  MapReduceFunctions.swift
//  
//
//  Created by Ruben DJAN on 05/10/2016.
//
//

import UIKit


func map(text : String) -> [Any] {
    
    // declaring resources
    var result = [Any]()
    var stringArray = [String]()
    
    // using regex to split the text correctly
    do {
        let nstext = text as NSString
        let regex = try NSRegularExpression(pattern: "[A-ZÁÀÂÄÃÅÇÉÈÊËÍÏÎÌÑÓÒÔÖÕÚÙÛÜÝ]+", options: NSRegularExpression.Options.caseInsensitive)
        
        let test = regex.matches(in: text, options: [] ,range: NSRange(location : 0, length : nstext.length))
        stringArray = test.map {nstext.substring(with : $0.range)}
    }
    catch { }
    
    // storing the splitted words in the result array
    for element in stringArray {
        var preResult = [Any]()
        preResult.append(element)
        preResult.append(1)
        result.append(preResult)
    }
    return result
}

func reduce(array : [Any]) -> [Any]{
    // declaring count variable and unwrapping the array containing the "1"
    var count = 0
    let secondArgument = array[1] as! [Int]
    
    // summing the "1"
    for element in tuple {
        count += 1
    }
    
    // preparing the result
    var reducedResult = [array[0] as! String, count]
    
    return reducedResult
}
