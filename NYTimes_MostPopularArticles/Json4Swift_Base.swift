////
////  NYDemoApp
////
////  Created by Ashish Baghel on 13/03/19.
////  Copyright © 2019 Ashish Baghel. All rights reserved.
////
//
//import Foundation
//
//struct BaseClass : Codable {
//    let status : String?
//    let copyright : String?
//    let num_results : Int?
//    let articles : [Article]?
//
//    enum CodingKeys: String, CodingKey {
//        case status = "status"
//        case copyright = "copyright"
//        case num_results = "num_results"
//        case articles = "results"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        status = try values.decodeIfPresent(String.self, forKey: .status)
//        copyright = try values.decodeIfPresent(String.self, forKey: .copyright)
//        num_results = try values.decodeIfPresent(Int.self, forKey: .num_results)
//        articles = try values.decodeIfPresent([Article].self, forKey: .articles)
//    }
//
//}
//
//struct Article : Codable {
//    let url : String?
//    let adxKeywords : String?
//    let column : String?
//    let section : String?
//    let byline : String?
//    let type : String?
//    let title : String?
//    let abstract : String?
//    let published_date : String?
//    let source : String?
//    let id : Int?
//    let asset_id : Int?
//    let views : Int?
//    let des_facet : [String]?
//    let org_facet : [String]?
//    let per_facet : [String]?
//    let geo_facet : String?
//    let media : [Media]?
//
//    enum CodingKeys: String, CodingKey {
//        case url = "url"
//        case adxKeywords = "adx_keywords"
//        case column = "column"
//        case section = "section"
//        case byline = "byline"
//        case type = "type"
//        case title = "title"
//        case abstract = "abstract"
//        case published_date = "published_date"
//        case source = "source"
//        case id = "id"
//        case asset_id = "asset_id"
//        case views = "views"
//        case des_facet = "des_facet"
//        case org_facet = "org_facet"
//        case per_facet = "per_facet"
//        case geo_facet = "geo_facet"
//        case media = "media"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        url = try values.decodeIfPresent(String.self, forKey: .url)
//        adxKeywords = try values.decodeIfPresent(String.self, forKey: .adxKeywords)
//        column = try values.decodeIfPresent(String.self, forKey: .column)
//        section = try values.decodeIfPresent(String.self, forKey: .section)
//        byline = try values.decodeIfPresent(String.self, forKey: .byline)
//        type = try values.decodeIfPresent(String.self, forKey: .type)
//        title = try values.decodeIfPresent(String.self, forKey: .title)
//        abstract = try values.decodeIfPresent(String.self, forKey: .abstract)
//        published_date = try values.decodeIfPresent(String.self, forKey: .published_date)
//        source = try values.decodeIfPresent(String.self, forKey: .source)
//        id = try values.decodeIfPresent(Int.self, forKey: .id)
//        asset_id = try values.decodeIfPresent(Int.self, forKey: .asset_id)
//        views = try values.decodeIfPresent(Int.self, forKey: .views)
//        des_facet = try values.decodeIfPresent([String].self, forKey: .des_facet)
//        org_facet = try values.decodeIfPresent([String].self, forKey: .org_facet)
//        per_facet = try values.decodeIfPresent([String].self, forKey: .per_facet)
//        geo_facet = try values.decodeIfPresent(String.self, forKey: .geo_facet)
//        media = try values.decodeIfPresent([Media].self, forKey: .media)
//    }
//
//}
//
//
//struct Media : Codable {
//    let type : String?
//    let subtype : String?
//    let caption : String?
//    let copyright : String?
//    let approved_for_syndication : Int?
//    let mediaMetadata : [MediaMetadata]?
//
//    enum CodingKeys: String, CodingKey {
//        case type = "type"
//        case subtype = "subtype"
//        case caption = "caption"
//        case copyright = "copyright"
//        case approved_for_syndication = "approved_for_syndication"
//        case mediaMetadata = "media-metadata"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        type = try values.decodeIfPresent(String.self, forKey: .type)
//        subtype = try values.decodeIfPresent(String.self, forKey: .subtype)
//        caption = try values.decodeIfPresent(String.self, forKey: .caption)
//        copyright = try values.decodeIfPresent(String.self, forKey: .copyright)
//        approved_for_syndication = try values.decodeIfPresent(Int.self, forKey: .approved_for_syndication)
//        mediaMetadata = try values.decodeIfPresent([MediaMetadata].self, forKey: .mediaMetadata)
//    }
//}
//
//struct MediaMetadata : Codable {
//    let url : String?
//    let format : String?
//    let height : Int?
//    let width : Int?
//
//    enum CodingKeys: String, CodingKey {
//        case url = "url"
//        case format = "format"
//        case height = "height"
//        case width = "width"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        url = try values.decodeIfPresent(String.self, forKey: .url)
//        format = try values.decodeIfPresent(String.self, forKey: .format)
//        height = try values.decodeIfPresent(Int.self, forKey: .height)
//        width = try values.decodeIfPresent(Int.self, forKey: .width)
//    }
//
//}
//
//
//



