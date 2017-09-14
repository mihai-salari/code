//
//  PodcastFeedParser.swift
//  PragPodcast
//
//  Created by Lee Choon Siong on 2017/06/04.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

class PodcastFeedParser: NSObject, XMLParserDelegate {

    var currentFeed: PodcastFeed?
    var currentElementText: String?
    
    // MARK: - Initializers
    
    init(contentsOf url: URL) {
        
        super.init()
        
        let urlSession = URLSession(configuration: .default)
        
        let dataTask = urlSession.dataTask(with: url, completionHandler: {
            
            dataMb, responseMb, errorMb in
            
            if let data = dataMb {
                //print("PodcastFeedParser got data: \(data)")
                
                //if let dataString = String(data: data, encoding: .utf8) {
                //    print("String data:\n\n\(dataString)")
                //}
                
                let parser = XMLParser(data: data)
                parser.delegate = self
                parser.parse()
            }
        })
        
        dataTask.resume()
    }
    
    // MARK: - XMLParserDelegate
    
    func parserDidStartDocument(_ parser: XMLParser) {
        print("\(#function): currenlty on line \(parser.lineNumber)")
        
        self.currentFeed = PodcastFeed()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        switch elementName {
            case "title", "link", "description", "itunes:author":
                self.currentElementText = ""
            case "itunes:image":
                if let urlAttribute = attributeDict["href"] {
                    self.currentFeed?.iTunesImageURL = URL(string: urlAttribute)
                }
            case "item":
                // Abort parsing when we encounter <item>, because it will be data for 'episode' after this
                parser.abortParsing()
                
                if let currentFeed = self.currentFeed {
                    print("\(#function): aborted parsing, podcastFeed = \(currentFeed)")
                }
            
            default:
                self.currentElementText = nil
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        self.currentElementText?.append(string)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        switch elementName {
            case "title":
                self.currentFeed?.title = self.currentElementText
            case "link":
                if let linkText = self.currentElementText {
                    self.currentFeed?.link = URL(string: linkText)
                }
            case "description":
                self.currentFeed?.description = self.currentElementText
            case "itunes:author":
                self.currentFeed?.iTunesAuthor = self.currentElementText
            default:
                break
        }
    }
}
