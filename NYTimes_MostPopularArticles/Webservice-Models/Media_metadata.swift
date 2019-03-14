

import Foundation
 


public class Media_metadata {
	public var url : String?
	public var format : String?
	public var height : Int?
	public var width : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let media-metadata_list = Media-metadata.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Media-metadata Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Media_metadata]
    {
        var models:[Media_metadata] = []
        for item in array
        {
            models.append(Media_metadata(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let media-metadata = Media-metadata(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Media-metadata Instance.
*/
	required public init?(dictionary: NSDictionary) {

		url = dictionary["url"] as? String
		format = dictionary["format"] as? String
		height = dictionary["height"] as? Int
		width = dictionary["width"] as? Int
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.format, forKey: "format")
		dictionary.setValue(self.height, forKey: "height")
		dictionary.setValue(self.width, forKey: "width")

		return dictionary
	}

}
