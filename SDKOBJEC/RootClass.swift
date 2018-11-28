//
//  RootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on November 22, 2018

import Foundation


class RootClass : NSObject, NSCoding{

    var completed : Bool!
    var id : Int!
    var title : String!
    var userId : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        completed = dictionary["completed"] as? Bool
        id = dictionary["id"] as? Int
        title = dictionary["title"] as? String
        userId = dictionary["userId"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if completed != nil{
            dictionary["completed"] = completed
        }
        if id != nil{
            dictionary["id"] = id
        }
        if title != nil{
            dictionary["title"] = title
        }
        if userId != nil{
            dictionary["userId"] = userId
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        completed = aDecoder.decodeObject(forKey: "completed") as? Bool
        id = aDecoder.decodeObject(forKey: "id") as? Int
        title = aDecoder.decodeObject(forKey: "title") as? String
        userId = aDecoder.decodeObject(forKey: "userId") as? Int
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if completed != nil{
            aCoder.encode(completed, forKey: "completed")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if title != nil{
            aCoder.encode(title, forKey: "title")
        }
        if userId != nil{
            aCoder.encode(userId, forKey: "userId")
        }
    }
}