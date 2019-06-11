//
//  File.swift
//  NewsApp
//
//  Created by Ahmed Kamel on 5/11/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import UIKit

 class Constant: NSObject {
    
    // Create a public shared instance using Singleton DP
    
    
    
       // Structure with Key domain server Url
    
    struct K {
        struct Domain {
            // All Domain's here
            static let ServerUrl = "https://hacker-news.firebaseio.com/v0/"
            
        }
        
        
        // Create enumerator of story types
        
        
        enum StoryType {
            case top, new, show
        }
        
        
        
        struct API {
            // All API's here
            
            static let StoryTypeChildRefMap = [StoryType.top: "topstories", .new: "newstories", .show: "showstories"]
            let StoryLimit: UInt = 30
            static let DefaultStoryType = StoryType.top
            
            static let showNews                = "lastnews.json?print=pretty"
     
        }
        
        
        
        
        struct Key {
            // Request Keys
            static let imagePng         = "image/png"
            static let appUserData      = "appUserData"
            
            static let appUserEmail     = "appUserEmail"
            static let appUserPassword  = "appUserPassword"
            static let appUserType      = "appUserType"
            static let appUserLanguage  = "appUserLanguage"
            static let setLimit         = "10"
            
            static let userId           = "user_id"
            static let firstName        = "first_name"
            static let lastName         = "last_name"
            static let email            = "email"
            static let password         = "password"
            static let socialId         = "social_id"
            static let accessToken      = "access_token"
            static let userType         = "user_type"
            static let success          = "success"
            static let payload          = "payload"
            static let data             = "data"
            static let error            = "error"
            static let title            = "title"
            static let message          = "message"
            static let imageUrl         = "image_url"
            static let languageId       = "language_id"
            static let deviceType       = "device_type"
            static let deviceToken      = "device_token"
            static let deviceUdid       = "device_udid"
            static let status           = "status"
            static let id               = "id"
            static let companyName      = "company_name"
            static let companyLogo      = "company_logo"
            static let authrizedKey     = "authrized_key"
            static let authrizedStatus  = "authrized_status"
            static let companyAddress   = "company_address"
            static let infotext         = "info_text"
            static let mobile           = "mobile"
            static let categoryName     = "category_name"
            static let categoryId       = "category_id"
            static let descriptionRej   = "description_reject"
            static let createdTime      = "created_time"
            static let createdDate      = "created_date"
            static let textJson         = "text_json"
            static let contestId        = "contest_id"
            static let msg              = "msg"
            static let notificationId   = "notification_id"
            static let userContestId    = "user_contest_id"
            static let contestInfo      = "contest_info"
            static let contestName      = "contest_name"
            static let userName         = "user_name"
            static let devieType        = "devie_type"
            
            static let productInfo     = "product_info"
            static let productName     = "product_name"
            static let describe        = "description"
            static let expiryDate      = "expiry_date"
            static let imagePath       = "image_path"
            static let type            = "type"
            static let productId       = "product_id"
            static let isExpired       = "is_expired"
            static let index           = "index"
            static let limit           = "limit"
            static let like            = "like"
            static let share           = "sahre"
            static let history         = "history"
            static let download        = "download"
            static let isFeature       = "is_feature"
            static let userMyId        = "user_my_id"
            
            static let totalLike       = "total_like"
            static let isWinner        = "is_winner"
            static let isBlock         = "is_block"
            static let totalTime       = "total_time"
            static let statics         = "statics"
            static let isLike          = "is_like"
            static let actionBy        = "action_by"
            static let rejectionList   = "rejection_list"
            static let likeCount       = "like_count"
            static let shareCount      = "share_count"
            static let downloadCount   = "download_count"
            static let viewCount       = "view_count"
            static let totalItem       = "total_item"
            static let filter          = "filter"
            static let mostDownloaded  = "most_download"
            static let recentUploaded  = "recent_upload"
            static let filterId        = "filter_id"
            static let filterName      = "filter_name"
            static let admin           = "admin"
            static let user            = "user"
            static let contest         = "contest"
            
            static let search          = "search"
            static let contestSearch   = "contest_search"
            
            static let receivedNotification = "received_notification"
            static let acme1                = "acme1"
            static let gcmNotificationAcme  = "gcm.notification.acme1"
            static let swFCMToken           = "sw_FCM_Token"
            static let notificationCount    = "notificationCount"
            
            static let vote_id    = "id"
            static let vote_desc    = "vote_desc"
            static let first_choice_img    = "first_choice_img"
            static let first_choice_desc    = "first_choice_desc"
            static let second_choice_img    = "second_choice_img"
            static let second_choice_desc    = "second_choice_desc"
            static let created_at    = "created_at"
            
            
            
            
            
            
        }
        
        
        struct Message {
            static let UnderDevelopment   = "Under Development"
            
            static let Oops               = "Oops!"
            static let NoInternetMsg      = "Please check Internet connection and try again."
            static let UploadProfilePhoto = "Upload Profile Photo"
            static let CamNotAvailable    = "Camera Not Available"
            static let UplaodPhoto        = "Upload Photo"
            static let Mail               = "Mail"
            static let MailNotConfigured  = "Mail not configured."
            static let UploadHeaderPhoto  = "Upload Header Image"
            
            // App Message
            static let EmptyFirstNameMsg            = "Please enter first name."
            static let InvalidFirstNameLengthMsg    = "Please enter first name equal or more than 3 character."
            static let EmptyLastNameMsg             = "Please enter last name."
            static let InvalidLastNameLengthMsg     = "Please enter last name equal or more than 3 character."
            static let EmptyEmailMsg                = "Please enter email."
            static let InvalidEmailMsg              = "Please enter valid email."
            static let EmptyPasswordMsg             = "Please enter password."
            static let InvalidPasswordMsg           = "Please enter correct password."
            static let InvalidPasswordLengthMsg     = "Please enter password equal or more than 8 character."
            static let NoTnCMsg                     = "Please select terms and conditions."
            static let EmptyCompNameMsg             = "Please enter company name."
            static let InvalidComNameLengthMsg      = "Please enter company name equal or more than 3 character."
            static let EmptyCompAddressMsg          = "Please enter company address."
            static let EmptyOldPassword             = "Please enter old password."
            static let EmptyNewPassword             = "Please enter new password."
            static let EmptyConfirmPassword         = "Please enter confirm password."
            static let EmptyNameMsg                 = "Please enter name."
            static let EmptyExpiryDateMsg           = "Please enter a expiry date"
            static let EmptyCategoryMsg             = "Please select a category"
            static let EmptyDescriptionMsg          = "Please write description"
            static let InvalidDateMsg               = "Please enter valid date"
            static let ImageNotUplaodMsg            = "Please upload a image."
            
            static let ChangePassword               = "Change Password"
            static let PasswordUpdated              = "Password Updated Successfully."
            static let IncorrectPassMsg             = "Old password is wrong."
            static let MismatchPasswordMsg          = "New and confirm password do not match."
            static let DeletePermissionMsg          = "Are you sure you want to delete this item?"
            static let DeleteMsg                    = "Deleted successfully"
            static let NoDataFound                  = "No Data Found"
            static let ContestPosted                = "Successfully Applied for Contest"
            static let NoContestMsg                 = "No Costest Posted Yet"
            
            static let NoFilterMsg                  = "No Filter to Choose"
            static let NoStickerMsg                 = "No Sticker to Choose"
            static let NoEmojiMsg                   = "No Emoji to Choose"
            
         
            
            
        }
        
        
    }
    
    
    struct Button {
        // Button Names
        static let OK                 = "OK"
        static let Retry              = "Retry"
        static let Next               = "Next"
        static let Done               = "Done"
        static let Repost             = "Repost"
        static let Camera             = "Camera"
        static let Photos             = "Photos"
        static let Cancel             = "Cancel"
        static let Contest            = "Contest"
        static let Confirm            = "Confirm"
        static let Delete             = "Delete"
        static let Edit               = "Edit"
        static let Save               = "Save"
        static let RemoveImage        = "Remove Image"
        static let Yes                = "Yes"
        static let No                 = "No"
        static let Update             = "Update"
        static let Ongoing            = "Ongoing"
        static let Resubmit           = "Resubmit"
        static let Filter             = "Filter"
        static let Completed          = "Completed"
        static let Sticker            = "Stickers"
       
        
        
        
    }
    
    
    
}

