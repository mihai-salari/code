//
//  Parser.swift
//  XMLParser
//
//  Created by Lee Choon Siong on 2017/06/04.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

class Parser: NSObject, XMLParserDelegate {

    var currentXMLFeed: XMLFeed?
    var currentElementText: String?
    
    init(contentsOf url: URL) {
        
        super.init()
        
        let urlSession = URLSession(configuration: .default)
        
        let dataTask = urlSession.dataTask(with: url, completionHandler: {
            
            dataMb, responseMb, errorMb in
            
            if let data = dataMb {
                print("Parser got data: \(data)")
                
                if let dataString = String(data: data, encoding: .utf8) {
                    print("String data:\n\n\(dataString)")
                }
                
                let parser = XMLParser(data: data)
                parser.delegate = self
                parser.parse()
            }
        })
        
        dataTask.resume()
    }
    
    // MARK: - XMLParserDelegate
    
    func parserDidStartDocument(_ parser: XMLParser) {
        self.currentXMLFeed = XMLFeed()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        switch elementName {
        case "ns1:subscriber":
            if let subscriberID = attributeDict["ns1:id"] {
                self.currentXMLFeed?.subscriberID = subscriberID
            }
        case "ns1:uri":
            self.currentElementText = ""
        case "ns1:password":
            self.currentElementText = ""
        case "ns1:pin":
            self.currentElementText = ""
        case "ns1:subscription":
            if let subscriptionID = attributeDict["ns1:id"] {
                self.currentXMLFeed?.subscriptionID = subscriptionID
            }
        case "ns1:classOfServiceId":
            self.currentElementText = ""
        default:
            self.currentElementText = nil
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        if let currentXMLFeed = self.currentXMLFeed {
            print("\(#function): XMLFeed = \(currentXMLFeed)")
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        self.currentElementText?.append(string)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        switch elementName {
        case "ns1:uri":
            self.currentXMLFeed?.msisdn = self.currentElementText
        case "ns1:password":
            self.currentXMLFeed?.password = self.currentElementText
        case "ns1:pin":
            if let stringPin = self.currentElementText {
                let intPin = Int(stringPin)
                self.currentXMLFeed?.pin = intPin
            }
        case "ns1:classOfServiceId":
            self.currentXMLFeed?.classOfServiceID = self.currentElementText
        default:
            break
        }
    }
}
