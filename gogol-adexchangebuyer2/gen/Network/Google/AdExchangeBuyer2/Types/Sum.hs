{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer2.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer2.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Specifies the creative source for programmatic deals. PUBLISHER means
-- creative is provided by seller and ADVERTISER means creative is provided
-- by buyer. \'OutputOnly
data DealProgrammaticCreativeSource
    = ProgrammaticCreativeSourceUnspecified
      -- ^ @PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED@
      -- A placeholder for an undefined programmatic creative source.
    | Advertiser
      -- ^ @ADVERTISER@
      -- The advertiser provides the creatives.
    | Publisher
      -- ^ @PUBLISHER@
      -- The publisher provides the creatives to be served.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DealProgrammaticCreativeSource

instance FromHttpApiData DealProgrammaticCreativeSource where
    parseQueryParam = \case
        "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED" -> Right ProgrammaticCreativeSourceUnspecified
        "ADVERTISER" -> Right Advertiser
        "PUBLISHER" -> Right Publisher
        x -> Left ("Unable to parse DealProgrammaticCreativeSource from: " <> x)

instance ToHttpApiData DealProgrammaticCreativeSource where
    toQueryParam = \case
        ProgrammaticCreativeSourceUnspecified -> "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED"
        Advertiser -> "ADVERTISER"
        Publisher -> "PUBLISHER"

instance FromJSON DealProgrammaticCreativeSource where
    parseJSON = parseJSONText "DealProgrammaticCreativeSource"

instance ToJSON DealProgrammaticCreativeSource where
    toJSON = toJSONText

-- | Specifies the creative pre-approval policy. \'OutputOnly
data DealCreativePreApprovalPolicy
    = CreativePreApprovalPolicyUnspecified
      -- ^ @CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED@
      -- A placeholder for an undefined creative pre-approval policy.
    | SellerPreApprovalRequired
      -- ^ @SELLER_PRE_APPROVAL_REQUIRED@
      -- The seller needs to approve each creative before it can serve.
    | SellerPreApprovalNotRequired
      -- ^ @SELLER_PRE_APPROVAL_NOT_REQUIRED@
      -- The seller does not need to approve each creative before it can serve.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DealCreativePreApprovalPolicy

instance FromHttpApiData DealCreativePreApprovalPolicy where
    parseQueryParam = \case
        "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED" -> Right CreativePreApprovalPolicyUnspecified
        "SELLER_PRE_APPROVAL_REQUIRED" -> Right SellerPreApprovalRequired
        "SELLER_PRE_APPROVAL_NOT_REQUIRED" -> Right SellerPreApprovalNotRequired
        x -> Left ("Unable to parse DealCreativePreApprovalPolicy from: " <> x)

instance ToHttpApiData DealCreativePreApprovalPolicy where
    toQueryParam = \case
        CreativePreApprovalPolicyUnspecified -> "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED"
        SellerPreApprovalRequired -> "SELLER_PRE_APPROVAL_REQUIRED"
        SellerPreApprovalNotRequired -> "SELLER_PRE_APPROVAL_NOT_REQUIRED"

instance FromJSON DealCreativePreApprovalPolicy where
    parseJSON = parseJSONText "DealCreativePreApprovalPolicy"

instance ToJSON DealCreativePreApprovalPolicy where
    toJSON = toJSONText

-- | Specified the creative blocking levels to be applied. \'OutputOnly
data DeliveryControlCreativeBlockingLevel
    = CreativeBlockingLevelUnspecified
      -- ^ @CREATIVE_BLOCKING_LEVEL_UNSPECIFIED@
      -- A placeholder for an undefined creative blocking level.
    | PublisherBlockingRules
      -- ^ @PUBLISHER_BLOCKING_RULES@
      -- Publisher blocking rules will be applied.
    | AdxPolicyBlockingOnly
      -- ^ @ADX_POLICY_BLOCKING_ONLY@
      -- The Ad Exchange policy blocking rules will be applied.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeliveryControlCreativeBlockingLevel

instance FromHttpApiData DeliveryControlCreativeBlockingLevel where
    parseQueryParam = \case
        "CREATIVE_BLOCKING_LEVEL_UNSPECIFIED" -> Right CreativeBlockingLevelUnspecified
        "PUBLISHER_BLOCKING_RULES" -> Right PublisherBlockingRules
        "ADX_POLICY_BLOCKING_ONLY" -> Right AdxPolicyBlockingOnly
        x -> Left ("Unable to parse DeliveryControlCreativeBlockingLevel from: " <> x)

instance ToHttpApiData DeliveryControlCreativeBlockingLevel where
    toQueryParam = \case
        CreativeBlockingLevelUnspecified -> "CREATIVE_BLOCKING_LEVEL_UNSPECIFIED"
        PublisherBlockingRules -> "PUBLISHER_BLOCKING_RULES"
        AdxPolicyBlockingOnly -> "ADX_POLICY_BLOCKING_ONLY"

instance FromJSON DeliveryControlCreativeBlockingLevel where
    parseJSON = parseJSONText "DeliveryControlCreativeBlockingLevel"

instance ToJSON DeliveryControlCreativeBlockingLevel where
    toJSON = toJSONText

-- | The current state of the proposal. \'OutputOnly
data ProposalProposalState
    = ProposalStateUnspecified
      -- ^ @PROPOSAL_STATE_UNSPECIFIED@
      -- A placeholder for an undefined proposal state.
    | Proposed
      -- ^ @PROPOSED@
      -- The proposal is under negotiation or renegotiation.
    | BuyerAccepted
      -- ^ @BUYER_ACCEPTED@
      -- The proposal has been accepted by the buyer.
    | SellerAccepted
      -- ^ @SELLER_ACCEPTED@
      -- The proposal has been accepted by the seller.
    | Canceled
      -- ^ @CANCELED@
      -- The negotiations on the proposal were canceled and the proposal was
      -- never finalized.
    | Finalized
      -- ^ @FINALIZED@
      -- The proposal is finalized. During renegotiation, the proposal may not be
      -- in this state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProposalProposalState

instance FromHttpApiData ProposalProposalState where
    parseQueryParam = \case
        "PROPOSAL_STATE_UNSPECIFIED" -> Right ProposalStateUnspecified
        "PROPOSED" -> Right Proposed
        "BUYER_ACCEPTED" -> Right BuyerAccepted
        "SELLER_ACCEPTED" -> Right SellerAccepted
        "CANCELED" -> Right Canceled
        "FINALIZED" -> Right Finalized
        x -> Left ("Unable to parse ProposalProposalState from: " <> x)

instance ToHttpApiData ProposalProposalState where
    toQueryParam = \case
        ProposalStateUnspecified -> "PROPOSAL_STATE_UNSPECIFIED"
        Proposed -> "PROPOSED"
        BuyerAccepted -> "BUYER_ACCEPTED"
        SellerAccepted -> "SELLER_ACCEPTED"
        Canceled -> "CANCELED"
        Finalized -> "FINALIZED"

instance FromJSON ProposalProposalState where
    parseJSON = parseJSONText "ProposalProposalState"

instance ToJSON ProposalProposalState where
    toJSON = toJSONText

-- | The syndication product associated with the deal.
data ProductSyndicationProduct
    = SyndicationProductUnspecified
      -- ^ @SYNDICATION_PRODUCT_UNSPECIFIED@
      -- A placeholder for an undefined syndication product.
    | Content
      -- ^ @CONTENT@
      -- This typically represents a web page.
    | Mobile
      -- ^ @MOBILE@
      -- This represents a mobile property.
    | Video
      -- ^ @VIDEO@
      -- This represents video ad formats.
    | Games
      -- ^ @GAMES@
      -- This represents ads shown within games.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductSyndicationProduct

instance FromHttpApiData ProductSyndicationProduct where
    parseQueryParam = \case
        "SYNDICATION_PRODUCT_UNSPECIFIED" -> Right SyndicationProductUnspecified
        "CONTENT" -> Right Content
        "MOBILE" -> Right Mobile
        "VIDEO" -> Right Video
        "GAMES" -> Right Games
        x -> Left ("Unable to parse ProductSyndicationProduct from: " <> x)

instance ToHttpApiData ProductSyndicationProduct where
    toQueryParam = \case
        SyndicationProductUnspecified -> "SYNDICATION_PRODUCT_UNSPECIFIED"
        Content -> "CONTENT"
        Mobile -> "MOBILE"
        Video -> "VIDEO"
        Games -> "GAMES"

instance FromJSON ProductSyndicationProduct where
    parseJSON = parseJSONText "ProductSyndicationProduct"

instance ToJSON ProductSyndicationProduct where
    toJSON = toJSONText

-- | Skippable video ads allow viewers to skip ads after 5 seconds.
data CreativeRestrictionsSkippableAdType
    = SkippableAdTypeUnspecified
      -- ^ @SKIPPABLE_AD_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined skippable ad type.
    | Skippable
      -- ^ @SKIPPABLE@
      -- This video ad can be skipped after 5 seconds.
    | InstreamSelect
      -- ^ @INSTREAM_SELECT@
      -- This video ad can be skipped after 5 seconds, and is counted as engaged
      -- view after 30 seconds. The creative is hosted on YouTube only, and
      -- viewcount of the YouTube video increments after the engaged view.
    | NotSkippable
      -- ^ @NOT_SKIPPABLE@
      -- This video ad is not skippable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeRestrictionsSkippableAdType

instance FromHttpApiData CreativeRestrictionsSkippableAdType where
    parseQueryParam = \case
        "SKIPPABLE_AD_TYPE_UNSPECIFIED" -> Right SkippableAdTypeUnspecified
        "SKIPPABLE" -> Right Skippable
        "INSTREAM_SELECT" -> Right InstreamSelect
        "NOT_SKIPPABLE" -> Right NotSkippable
        x -> Left ("Unable to parse CreativeRestrictionsSkippableAdType from: " <> x)

instance ToHttpApiData CreativeRestrictionsSkippableAdType where
    toQueryParam = \case
        SkippableAdTypeUnspecified -> "SKIPPABLE_AD_TYPE_UNSPECIFIED"
        Skippable -> "SKIPPABLE"
        InstreamSelect -> "INSTREAM_SELECT"
        NotSkippable -> "NOT_SKIPPABLE"

instance FromJSON CreativeRestrictionsSkippableAdType where
    parseJSON = parseJSONText "CreativeRestrictionsSkippableAdType"

instance ToJSON CreativeRestrictionsSkippableAdType where
    toJSON = toJSONText

-- | The status of the creative in this context (for example, it has been
-- explicitly disapproved or is pending review).
data ServingRestrictionStatus
    = SRSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- The status is not known.
    | SRSDisApproval
      -- ^ @DISAPPROVAL@
      -- The ad was disapproved in this context.
    | SRSPendingReview
      -- ^ @PENDING_REVIEW@
      -- The ad is pending review in this context.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServingRestrictionStatus

instance FromHttpApiData ServingRestrictionStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right SRSStatusUnspecified
        "DISAPPROVAL" -> Right SRSDisApproval
        "PENDING_REVIEW" -> Right SRSPendingReview
        x -> Left ("Unable to parse ServingRestrictionStatus from: " <> x)

instance ToHttpApiData ServingRestrictionStatus where
    toQueryParam = \case
        SRSStatusUnspecified -> "STATUS_UNSPECIFIED"
        SRSDisApproval -> "DISAPPROVAL"
        SRSPendingReview -> "PENDING_REVIEW"

instance FromJSON ServingRestrictionStatus where
    parseJSON = parseJSONText "ServingRestrictionStatus"

instance ToJSON ServingRestrictionStatus where
    toJSON = toJSONText

-- | The categorized reason for disapproval.
data DisApprovalReason
    = LengthOfImageAnimation
      -- ^ @LENGTH_OF_IMAGE_ANIMATION@
      -- The length of the image animation is longer than allowed.
    | BrokenURL
      -- ^ @BROKEN_URL@
      -- The click through URL doesn\'t work properly.
    | MediaNotFunctional
      -- ^ @MEDIA_NOT_FUNCTIONAL@
      -- Something is wrong with the creative itself.
    | InvalidFourthPartyCall
      -- ^ @INVALID_FOURTH_PARTY_CALL@
      -- The ad makes a fourth party call to an unapproved vendor.
    | IncorrectRemarketingDeclaration
      -- ^ @INCORRECT_REMARKETING_DECLARATION@
      -- The ad targets consumers using remarketing lists and\/or collects data
      -- for subsequent use in retargeting, but does not correctly declare that
      -- use.
    | LandingPageError
      -- ^ @LANDING_PAGE_ERROR@
      -- Clicking on the ad leads to an error page.
    | AdSizeDoesNotMatchAdSlot
      -- ^ @AD_SIZE_DOES_NOT_MATCH_AD_SLOT@
      -- The ad size when rendered does not match the declaration.
    | NoBOrder
      -- ^ @NO_BORDER@
      -- Ads with a white background require a border, which was missing.
    | FourthPartyBrowserCookies
      -- ^ @FOURTH_PARTY_BROWSER_COOKIES@
      -- The creative attempts to set cookies from a fourth party that is not
      -- certified.
    | LsoObjects
      -- ^ @LSO_OBJECTS@
      -- The creative sets an LSO object.
    | BlankCreative
      -- ^ @BLANK_CREATIVE@
      -- The ad serves a blank.
    | DestinationURLsUndeclared
      -- ^ @DESTINATION_URLS_UNDECLARED@
      -- The ad uses rotation, but not all destination URLs were declared.
    | ProblemWithClickMacro
      -- ^ @PROBLEM_WITH_CLICK_MACRO@
      -- There is a problem with the way the click macro is used.
    | IncorrectAdTechnologyDeclaration
      -- ^ @INCORRECT_AD_TECHNOLOGY_DECLARATION@
      -- The ad technology declaration is not accurate.
    | IncorrectDestinationURLDeclaration
      -- ^ @INCORRECT_DESTINATION_URL_DECLARATION@
      -- The actual destination URL does not match the declared destination URL.
    | ExpandableIncorrectDirection
      -- ^ @EXPANDABLE_INCORRECT_DIRECTION@
      -- The declared expanding direction does not match the actual direction.
    | ExpandableDirectionNotSupported
      -- ^ @EXPANDABLE_DIRECTION_NOT_SUPPORTED@
      -- The ad does not expand in a supported direction.
    | ExpandableInvalidVendor
      -- ^ @EXPANDABLE_INVALID_VENDOR@
      -- The ad uses an expandable vendor that is not supported.
    | ExpandableFunctionality
      -- ^ @EXPANDABLE_FUNCTIONALITY@
      -- There was an issue with the expandable ad.
    | VideoInvalidVendor
      -- ^ @VIDEO_INVALID_VENDOR@
      -- The ad uses a video vendor that is not supported.
    | VideoUnsupportedLength
      -- ^ @VIDEO_UNSUPPORTED_LENGTH@
      -- The length of the video ad is not supported.
    | VideoUnsupportedFormat
      -- ^ @VIDEO_UNSUPPORTED_FORMAT@
      -- The format of the video ad is not supported.
    | VideoFunctionality
      -- ^ @VIDEO_FUNCTIONALITY@
      -- There was an issue with the video ad.
    | LandingPageDisabled
      -- ^ @LANDING_PAGE_DISABLED@
      -- The landing page does not conform to Ad Exchange policy.
    | MalwareSuspected
      -- ^ @MALWARE_SUSPECTED@
      -- The ad or the landing page may contain malware.
    | AdultImageOrVideo
      -- ^ @ADULT_IMAGE_OR_VIDEO@
      -- The ad contains adult images or video content.
    | InaccurateAdText
      -- ^ @INACCURATE_AD_TEXT@
      -- The ad contains text that is unclear or inaccurate.
    | CounterfeitDesignerGoods
      -- ^ @COUNTERFEIT_DESIGNER_GOODS@
      -- The ad promotes counterfeit designer goods.
    | PopUp
      -- ^ @POP_UP@
      -- The ad causes a popup window to appear.
    | InvalidRtbProtocolUsage
      -- ^ @INVALID_RTB_PROTOCOL_USAGE@
      -- The creative does not follow policies set for the RTB protocol.
    | RawIPAddressInSnippet
      -- ^ @RAW_IP_ADDRESS_IN_SNIPPET@
      -- The ad contains a URL that uses a numeric IP address for the domain.
    | UnacceptableContentSoftware
      -- ^ @UNACCEPTABLE_CONTENT_SOFTWARE@
      -- The ad or landing page contains unacceptable content because it
      -- initiated a software or executable download.
    | UnauthorizedCookieOnGoogleDomain
      -- ^ @UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN@
      -- The ad set an unauthorized cookie on a Google domain.
    | UndeclaredFlashObjects
      -- ^ @UNDECLARED_FLASH_OBJECTS@
      -- Flash content found when no flash was declared.
    | InvalidSSLDeclaration
      -- ^ @INVALID_SSL_DECLARATION@
      -- SSL support declared but not working correctly.
    | DirectDownloadInAd
      -- ^ @DIRECT_DOWNLOAD_IN_AD@
      -- Rich Media - Direct Download in Ad (ex. PDF download).
    | MaximumDownloadSizeExceeded
      -- ^ @MAXIMUM_DOWNLOAD_SIZE_EXCEEDED@
      -- Maximum download size exceeded.
    | DestinationURLSiteNotCrawlable
      -- ^ @DESTINATION_URL_SITE_NOT_CRAWLABLE@
      -- Bad Destination URL: Site Not Crawlable.
    | BadURLLegalDisApproval
      -- ^ @BAD_URL_LEGAL_DISAPPROVAL@
      -- Bad URL: Legal disapproval.
    | PharmaGamblingAlcoholNotAllowed
      -- ^ @PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED@
      -- Pharmaceuticals, Gambling, Alcohol not allowed and at least one was
      -- detected.
    | DynamicDNSAtDestinationURL
      -- ^ @DYNAMIC_DNS_AT_DESTINATION_URL@
      -- Dynamic DNS at Destination URL.
    | PoorImageOrVideoQuality
      -- ^ @POOR_IMAGE_OR_VIDEO_QUALITY@
      -- Poor Image \/ Video Quality.
    | UnacceptableImageContent
      -- ^ @UNACCEPTABLE_IMAGE_CONTENT@
      -- For example, Image Trick to Click.
    | IncorrectImageLayout
      -- ^ @INCORRECT_IMAGE_LAYOUT@
      -- Incorrect Image Layout.
    | IrrelevantImageOrVideo
      -- ^ @IRRELEVANT_IMAGE_OR_VIDEO@
      -- Irrelevant Image \/ Video.
    | DestinationSiteDoesNotAllowGoingBack
      -- ^ @DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK@
      -- Broken back button.
    | MisleadingClaimsInAd
      -- ^ @MISLEADING_CLAIMS_IN_AD@
      -- Misleading\/Inaccurate claims in ads.
    | RestrictedProducts
      -- ^ @RESTRICTED_PRODUCTS@
      -- Restricted Products.
    | UnacceptableContent
      -- ^ @UNACCEPTABLE_CONTENT@
      -- Unacceptable content. For example, malware.
    | AutomatedAdClicking
      -- ^ @AUTOMATED_AD_CLICKING@
      -- The ad automatically redirects to the destination site without a click,
      -- or reports a click when none were made.
    | InvalidURLProtocol
      -- ^ @INVALID_URL_PROTOCOL@
      -- The ad uses URL protocols that do not exist or are not allowed on AdX.
    | UndeclaredRestrictedContent
      -- ^ @UNDECLARED_RESTRICTED_CONTENT@
      -- Restricted content (for example, alcohol) was found in the ad but not
      -- declared.
    | InvalidRemarketingListUsage
      -- ^ @INVALID_REMARKETING_LIST_USAGE@
      -- Violation of the remarketing list policy.
    | DestinationSiteNotCrawlableRobotsTxt
      -- ^ @DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT@
      -- The destination site\'s robot.txt file prevents it from being crawled.
    | ClickToDownloadNotAnApp
      -- ^ @CLICK_TO_DOWNLOAD_NOT_AN_APP@
      -- Click to download must link to an app.
    | InaccurateReviewExtension
      -- ^ @INACCURATE_REVIEW_EXTENSION@
      -- A review extension must be an accurate review.
    | SexuallyExplicitContent
      -- ^ @SEXUALLY_EXPLICIT_CONTENT@
      -- Sexually explicit content.
    | GainingAnUnfairAdvantage
      -- ^ @GAINING_AN_UNFAIR_ADVANTAGE@
      -- The ad tries to gain an unfair traffic advantage.
    | GamingTheGoogleNetwork
      -- ^ @GAMING_THE_GOOGLE_NETWORK@
      -- The ad tries to circumvent Google\'s advertising systems.
    | DangerousProductsKnives
      -- ^ @DANGEROUS_PRODUCTS_KNIVES@
      -- The ad promotes dangerous knives.
    | DangerousProductsExplosives
      -- ^ @DANGEROUS_PRODUCTS_EXPLOSIVES@
      -- The ad promotes explosives.
    | DangerousProductsGuns
      -- ^ @DANGEROUS_PRODUCTS_GUNS@
      -- The ad promotes guns & parts.
    | DangerousProductsDrugs
      -- ^ @DANGEROUS_PRODUCTS_DRUGS@
      -- The ad promotes recreational drugs\/services & related equipment.
    | DangerousProductsTobacco
      -- ^ @DANGEROUS_PRODUCTS_TOBACCO@
      -- The ad promotes tobacco products\/services & related equipment.
    | DangerousProductsWeapons
      -- ^ @DANGEROUS_PRODUCTS_WEAPONS@
      -- The ad promotes weapons.
    | UnclearOrIrrelevantAd
      -- ^ @UNCLEAR_OR_IRRELEVANT_AD@
      -- The ad is unclear or irrelevant to the destination site.
    | ProfessionalStandards
      -- ^ @PROFESSIONAL_STANDARDS@
      -- The ad does not meet professional standards.
    | DysfunctionalPromotion
      -- ^ @DYSFUNCTIONAL_PROMOTION@
      -- The promotion is unnecessarily difficult to navigate.
    | InvalidInterestBasedAd
      -- ^ @INVALID_INTEREST_BASED_AD@
      -- Violation of Google\'s policy for interest-based ads.
    | MisuseOfPersonalInformation
      -- ^ @MISUSE_OF_PERSONAL_INFORMATION@
      -- Misuse of personal information.
    | OmissionOfRelevantInformation
      -- ^ @OMISSION_OF_RELEVANT_INFORMATION@
      -- Omission of relevant information.
    | UnavailablePromotions
      -- ^ @UNAVAILABLE_PROMOTIONS@
      -- Unavailable promotions.
    | MisleadingPromotions
      -- ^ @MISLEADING_PROMOTIONS@
      -- Misleading or unrealistic promotions.
    | InAppropriateContent
      -- ^ @INAPPROPRIATE_CONTENT@
      -- Offensive or inappropriate content.
    | SensitiveEvents
      -- ^ @SENSITIVE_EVENTS@
      -- Capitalizing on sensitive events.
    | ShockingContent
      -- ^ @SHOCKING_CONTENT@
      -- Shocking content.
    | EnablingDishonestBehavior
      -- ^ @ENABLING_DISHONEST_BEHAVIOR@
      -- Products & Services that enable dishonest behavior.
    | TechnicalRequirements
      -- ^ @TECHNICAL_REQUIREMENTS@
      -- The ad does not meet technical requirements.
    | RestrictedPoliticalContent
      -- ^ @RESTRICTED_POLITICAL_CONTENT@
      -- Restricted political content.
    | UnsupportedContent
      -- ^ @UNSUPPORTED_CONTENT@
      -- Unsupported content.
    | InvalidBiddingMethod
      -- ^ @INVALID_BIDDING_METHOD@
      -- Invalid bidding method.
    | VideoTooLong
      -- ^ @VIDEO_TOO_LONG@
      -- Video length exceeds limits.
    | ViolatesJapanesePharmacyLaw
      -- ^ @VIOLATES_JAPANESE_PHARMACY_LAW@
      -- Unacceptable content: Japanese healthcare.
    | UnaccreditedPetPharmacy
      -- ^ @UNACCREDITED_PET_PHARMACY@
      -- Online pharmacy ID required.
    | Abortion
      -- ^ @ABORTION@
      -- Unacceptable content: Abortion.
    | Contraceptives
      -- ^ @CONTRACEPTIVES@
      -- Unacceptable content: Birth control.
    | NeedCertificatesToAdvertiseInChina
      -- ^ @NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA@
      -- Restricted in China.
    | KcdspRegistration
      -- ^ @KCDSP_REGISTRATION@
      -- Unacceptable content: Korean healthcare.
    | NotFamilySafe
      -- ^ @NOT_FAMILY_SAFE@
      -- Non-family safe or adult content.
    | ClinicalTrialRecruitment
      -- ^ @CLINICAL_TRIAL_RECRUITMENT@
      -- Clinical trial recruitment.
    | MaximumNumberOfHTTPCallsExceeded
      -- ^ @MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED@
      -- Maximum number of HTTP calls exceeded.
    | MaximumNumberOfCookiesExceeded
      -- ^ @MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED@
      -- Maximum number of cookies exceeded.
    | PersonalLoans
      -- ^ @PERSONAL_LOANS@
      -- Financial service ad does not adhere to specifications.
    | UnsupportedFlashContent
      -- ^ @UNSUPPORTED_FLASH_CONTENT@
      -- Flash content was found in an unsupported context.
    | MisuseByOmidScript
      -- ^ @MISUSE_BY_OMID_SCRIPT@
      -- Misuse by an Open Measurement SDK script.
    | NonWhiteListedOmidVendor
      -- ^ @NON_WHITELISTED_OMID_VENDOR@
      -- Use of an Open Measurement SDK vendor not on approved whitelist.
    | DestinationExperience
      -- ^ @DESTINATION_EXPERIENCE@
      -- Unacceptable landing page.
    | UnsupportedLanguage
      -- ^ @UNSUPPORTED_LANGUAGE@
      -- Unsupported language.
    | NonSSLCompliant
      -- ^ @NON_SSL_COMPLIANT@
      -- Non-SSL compliant.
    | TemporaryPause
      -- ^ @TEMPORARY_PAUSE@
      -- Temporary pausing of creative.
    | BailBonds
      -- ^ @BAIL_BONDS@
      -- Promotes services related to bail bonds.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DisApprovalReason

instance FromHttpApiData DisApprovalReason where
    parseQueryParam = \case
        "LENGTH_OF_IMAGE_ANIMATION" -> Right LengthOfImageAnimation
        "BROKEN_URL" -> Right BrokenURL
        "MEDIA_NOT_FUNCTIONAL" -> Right MediaNotFunctional
        "INVALID_FOURTH_PARTY_CALL" -> Right InvalidFourthPartyCall
        "INCORRECT_REMARKETING_DECLARATION" -> Right IncorrectRemarketingDeclaration
        "LANDING_PAGE_ERROR" -> Right LandingPageError
        "AD_SIZE_DOES_NOT_MATCH_AD_SLOT" -> Right AdSizeDoesNotMatchAdSlot
        "NO_BORDER" -> Right NoBOrder
        "FOURTH_PARTY_BROWSER_COOKIES" -> Right FourthPartyBrowserCookies
        "LSO_OBJECTS" -> Right LsoObjects
        "BLANK_CREATIVE" -> Right BlankCreative
        "DESTINATION_URLS_UNDECLARED" -> Right DestinationURLsUndeclared
        "PROBLEM_WITH_CLICK_MACRO" -> Right ProblemWithClickMacro
        "INCORRECT_AD_TECHNOLOGY_DECLARATION" -> Right IncorrectAdTechnologyDeclaration
        "INCORRECT_DESTINATION_URL_DECLARATION" -> Right IncorrectDestinationURLDeclaration
        "EXPANDABLE_INCORRECT_DIRECTION" -> Right ExpandableIncorrectDirection
        "EXPANDABLE_DIRECTION_NOT_SUPPORTED" -> Right ExpandableDirectionNotSupported
        "EXPANDABLE_INVALID_VENDOR" -> Right ExpandableInvalidVendor
        "EXPANDABLE_FUNCTIONALITY" -> Right ExpandableFunctionality
        "VIDEO_INVALID_VENDOR" -> Right VideoInvalidVendor
        "VIDEO_UNSUPPORTED_LENGTH" -> Right VideoUnsupportedLength
        "VIDEO_UNSUPPORTED_FORMAT" -> Right VideoUnsupportedFormat
        "VIDEO_FUNCTIONALITY" -> Right VideoFunctionality
        "LANDING_PAGE_DISABLED" -> Right LandingPageDisabled
        "MALWARE_SUSPECTED" -> Right MalwareSuspected
        "ADULT_IMAGE_OR_VIDEO" -> Right AdultImageOrVideo
        "INACCURATE_AD_TEXT" -> Right InaccurateAdText
        "COUNTERFEIT_DESIGNER_GOODS" -> Right CounterfeitDesignerGoods
        "POP_UP" -> Right PopUp
        "INVALID_RTB_PROTOCOL_USAGE" -> Right InvalidRtbProtocolUsage
        "RAW_IP_ADDRESS_IN_SNIPPET" -> Right RawIPAddressInSnippet
        "UNACCEPTABLE_CONTENT_SOFTWARE" -> Right UnacceptableContentSoftware
        "UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN" -> Right UnauthorizedCookieOnGoogleDomain
        "UNDECLARED_FLASH_OBJECTS" -> Right UndeclaredFlashObjects
        "INVALID_SSL_DECLARATION" -> Right InvalidSSLDeclaration
        "DIRECT_DOWNLOAD_IN_AD" -> Right DirectDownloadInAd
        "MAXIMUM_DOWNLOAD_SIZE_EXCEEDED" -> Right MaximumDownloadSizeExceeded
        "DESTINATION_URL_SITE_NOT_CRAWLABLE" -> Right DestinationURLSiteNotCrawlable
        "BAD_URL_LEGAL_DISAPPROVAL" -> Right BadURLLegalDisApproval
        "PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED" -> Right PharmaGamblingAlcoholNotAllowed
        "DYNAMIC_DNS_AT_DESTINATION_URL" -> Right DynamicDNSAtDestinationURL
        "POOR_IMAGE_OR_VIDEO_QUALITY" -> Right PoorImageOrVideoQuality
        "UNACCEPTABLE_IMAGE_CONTENT" -> Right UnacceptableImageContent
        "INCORRECT_IMAGE_LAYOUT" -> Right IncorrectImageLayout
        "IRRELEVANT_IMAGE_OR_VIDEO" -> Right IrrelevantImageOrVideo
        "DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK" -> Right DestinationSiteDoesNotAllowGoingBack
        "MISLEADING_CLAIMS_IN_AD" -> Right MisleadingClaimsInAd
        "RESTRICTED_PRODUCTS" -> Right RestrictedProducts
        "UNACCEPTABLE_CONTENT" -> Right UnacceptableContent
        "AUTOMATED_AD_CLICKING" -> Right AutomatedAdClicking
        "INVALID_URL_PROTOCOL" -> Right InvalidURLProtocol
        "UNDECLARED_RESTRICTED_CONTENT" -> Right UndeclaredRestrictedContent
        "INVALID_REMARKETING_LIST_USAGE" -> Right InvalidRemarketingListUsage
        "DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT" -> Right DestinationSiteNotCrawlableRobotsTxt
        "CLICK_TO_DOWNLOAD_NOT_AN_APP" -> Right ClickToDownloadNotAnApp
        "INACCURATE_REVIEW_EXTENSION" -> Right InaccurateReviewExtension
        "SEXUALLY_EXPLICIT_CONTENT" -> Right SexuallyExplicitContent
        "GAINING_AN_UNFAIR_ADVANTAGE" -> Right GainingAnUnfairAdvantage
        "GAMING_THE_GOOGLE_NETWORK" -> Right GamingTheGoogleNetwork
        "DANGEROUS_PRODUCTS_KNIVES" -> Right DangerousProductsKnives
        "DANGEROUS_PRODUCTS_EXPLOSIVES" -> Right DangerousProductsExplosives
        "DANGEROUS_PRODUCTS_GUNS" -> Right DangerousProductsGuns
        "DANGEROUS_PRODUCTS_DRUGS" -> Right DangerousProductsDrugs
        "DANGEROUS_PRODUCTS_TOBACCO" -> Right DangerousProductsTobacco
        "DANGEROUS_PRODUCTS_WEAPONS" -> Right DangerousProductsWeapons
        "UNCLEAR_OR_IRRELEVANT_AD" -> Right UnclearOrIrrelevantAd
        "PROFESSIONAL_STANDARDS" -> Right ProfessionalStandards
        "DYSFUNCTIONAL_PROMOTION" -> Right DysfunctionalPromotion
        "INVALID_INTEREST_BASED_AD" -> Right InvalidInterestBasedAd
        "MISUSE_OF_PERSONAL_INFORMATION" -> Right MisuseOfPersonalInformation
        "OMISSION_OF_RELEVANT_INFORMATION" -> Right OmissionOfRelevantInformation
        "UNAVAILABLE_PROMOTIONS" -> Right UnavailablePromotions
        "MISLEADING_PROMOTIONS" -> Right MisleadingPromotions
        "INAPPROPRIATE_CONTENT" -> Right InAppropriateContent
        "SENSITIVE_EVENTS" -> Right SensitiveEvents
        "SHOCKING_CONTENT" -> Right ShockingContent
        "ENABLING_DISHONEST_BEHAVIOR" -> Right EnablingDishonestBehavior
        "TECHNICAL_REQUIREMENTS" -> Right TechnicalRequirements
        "RESTRICTED_POLITICAL_CONTENT" -> Right RestrictedPoliticalContent
        "UNSUPPORTED_CONTENT" -> Right UnsupportedContent
        "INVALID_BIDDING_METHOD" -> Right InvalidBiddingMethod
        "VIDEO_TOO_LONG" -> Right VideoTooLong
        "VIOLATES_JAPANESE_PHARMACY_LAW" -> Right ViolatesJapanesePharmacyLaw
        "UNACCREDITED_PET_PHARMACY" -> Right UnaccreditedPetPharmacy
        "ABORTION" -> Right Abortion
        "CONTRACEPTIVES" -> Right Contraceptives
        "NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA" -> Right NeedCertificatesToAdvertiseInChina
        "KCDSP_REGISTRATION" -> Right KcdspRegistration
        "NOT_FAMILY_SAFE" -> Right NotFamilySafe
        "CLINICAL_TRIAL_RECRUITMENT" -> Right ClinicalTrialRecruitment
        "MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED" -> Right MaximumNumberOfHTTPCallsExceeded
        "MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED" -> Right MaximumNumberOfCookiesExceeded
        "PERSONAL_LOANS" -> Right PersonalLoans
        "UNSUPPORTED_FLASH_CONTENT" -> Right UnsupportedFlashContent
        "MISUSE_BY_OMID_SCRIPT" -> Right MisuseByOmidScript
        "NON_WHITELISTED_OMID_VENDOR" -> Right NonWhiteListedOmidVendor
        "DESTINATION_EXPERIENCE" -> Right DestinationExperience
        "UNSUPPORTED_LANGUAGE" -> Right UnsupportedLanguage
        "NON_SSL_COMPLIANT" -> Right NonSSLCompliant
        "TEMPORARY_PAUSE" -> Right TemporaryPause
        "BAIL_BONDS" -> Right BailBonds
        x -> Left ("Unable to parse DisApprovalReason from: " <> x)

instance ToHttpApiData DisApprovalReason where
    toQueryParam = \case
        LengthOfImageAnimation -> "LENGTH_OF_IMAGE_ANIMATION"
        BrokenURL -> "BROKEN_URL"
        MediaNotFunctional -> "MEDIA_NOT_FUNCTIONAL"
        InvalidFourthPartyCall -> "INVALID_FOURTH_PARTY_CALL"
        IncorrectRemarketingDeclaration -> "INCORRECT_REMARKETING_DECLARATION"
        LandingPageError -> "LANDING_PAGE_ERROR"
        AdSizeDoesNotMatchAdSlot -> "AD_SIZE_DOES_NOT_MATCH_AD_SLOT"
        NoBOrder -> "NO_BORDER"
        FourthPartyBrowserCookies -> "FOURTH_PARTY_BROWSER_COOKIES"
        LsoObjects -> "LSO_OBJECTS"
        BlankCreative -> "BLANK_CREATIVE"
        DestinationURLsUndeclared -> "DESTINATION_URLS_UNDECLARED"
        ProblemWithClickMacro -> "PROBLEM_WITH_CLICK_MACRO"
        IncorrectAdTechnologyDeclaration -> "INCORRECT_AD_TECHNOLOGY_DECLARATION"
        IncorrectDestinationURLDeclaration -> "INCORRECT_DESTINATION_URL_DECLARATION"
        ExpandableIncorrectDirection -> "EXPANDABLE_INCORRECT_DIRECTION"
        ExpandableDirectionNotSupported -> "EXPANDABLE_DIRECTION_NOT_SUPPORTED"
        ExpandableInvalidVendor -> "EXPANDABLE_INVALID_VENDOR"
        ExpandableFunctionality -> "EXPANDABLE_FUNCTIONALITY"
        VideoInvalidVendor -> "VIDEO_INVALID_VENDOR"
        VideoUnsupportedLength -> "VIDEO_UNSUPPORTED_LENGTH"
        VideoUnsupportedFormat -> "VIDEO_UNSUPPORTED_FORMAT"
        VideoFunctionality -> "VIDEO_FUNCTIONALITY"
        LandingPageDisabled -> "LANDING_PAGE_DISABLED"
        MalwareSuspected -> "MALWARE_SUSPECTED"
        AdultImageOrVideo -> "ADULT_IMAGE_OR_VIDEO"
        InaccurateAdText -> "INACCURATE_AD_TEXT"
        CounterfeitDesignerGoods -> "COUNTERFEIT_DESIGNER_GOODS"
        PopUp -> "POP_UP"
        InvalidRtbProtocolUsage -> "INVALID_RTB_PROTOCOL_USAGE"
        RawIPAddressInSnippet -> "RAW_IP_ADDRESS_IN_SNIPPET"
        UnacceptableContentSoftware -> "UNACCEPTABLE_CONTENT_SOFTWARE"
        UnauthorizedCookieOnGoogleDomain -> "UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN"
        UndeclaredFlashObjects -> "UNDECLARED_FLASH_OBJECTS"
        InvalidSSLDeclaration -> "INVALID_SSL_DECLARATION"
        DirectDownloadInAd -> "DIRECT_DOWNLOAD_IN_AD"
        MaximumDownloadSizeExceeded -> "MAXIMUM_DOWNLOAD_SIZE_EXCEEDED"
        DestinationURLSiteNotCrawlable -> "DESTINATION_URL_SITE_NOT_CRAWLABLE"
        BadURLLegalDisApproval -> "BAD_URL_LEGAL_DISAPPROVAL"
        PharmaGamblingAlcoholNotAllowed -> "PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED"
        DynamicDNSAtDestinationURL -> "DYNAMIC_DNS_AT_DESTINATION_URL"
        PoorImageOrVideoQuality -> "POOR_IMAGE_OR_VIDEO_QUALITY"
        UnacceptableImageContent -> "UNACCEPTABLE_IMAGE_CONTENT"
        IncorrectImageLayout -> "INCORRECT_IMAGE_LAYOUT"
        IrrelevantImageOrVideo -> "IRRELEVANT_IMAGE_OR_VIDEO"
        DestinationSiteDoesNotAllowGoingBack -> "DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK"
        MisleadingClaimsInAd -> "MISLEADING_CLAIMS_IN_AD"
        RestrictedProducts -> "RESTRICTED_PRODUCTS"
        UnacceptableContent -> "UNACCEPTABLE_CONTENT"
        AutomatedAdClicking -> "AUTOMATED_AD_CLICKING"
        InvalidURLProtocol -> "INVALID_URL_PROTOCOL"
        UndeclaredRestrictedContent -> "UNDECLARED_RESTRICTED_CONTENT"
        InvalidRemarketingListUsage -> "INVALID_REMARKETING_LIST_USAGE"
        DestinationSiteNotCrawlableRobotsTxt -> "DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT"
        ClickToDownloadNotAnApp -> "CLICK_TO_DOWNLOAD_NOT_AN_APP"
        InaccurateReviewExtension -> "INACCURATE_REVIEW_EXTENSION"
        SexuallyExplicitContent -> "SEXUALLY_EXPLICIT_CONTENT"
        GainingAnUnfairAdvantage -> "GAINING_AN_UNFAIR_ADVANTAGE"
        GamingTheGoogleNetwork -> "GAMING_THE_GOOGLE_NETWORK"
        DangerousProductsKnives -> "DANGEROUS_PRODUCTS_KNIVES"
        DangerousProductsExplosives -> "DANGEROUS_PRODUCTS_EXPLOSIVES"
        DangerousProductsGuns -> "DANGEROUS_PRODUCTS_GUNS"
        DangerousProductsDrugs -> "DANGEROUS_PRODUCTS_DRUGS"
        DangerousProductsTobacco -> "DANGEROUS_PRODUCTS_TOBACCO"
        DangerousProductsWeapons -> "DANGEROUS_PRODUCTS_WEAPONS"
        UnclearOrIrrelevantAd -> "UNCLEAR_OR_IRRELEVANT_AD"
        ProfessionalStandards -> "PROFESSIONAL_STANDARDS"
        DysfunctionalPromotion -> "DYSFUNCTIONAL_PROMOTION"
        InvalidInterestBasedAd -> "INVALID_INTEREST_BASED_AD"
        MisuseOfPersonalInformation -> "MISUSE_OF_PERSONAL_INFORMATION"
        OmissionOfRelevantInformation -> "OMISSION_OF_RELEVANT_INFORMATION"
        UnavailablePromotions -> "UNAVAILABLE_PROMOTIONS"
        MisleadingPromotions -> "MISLEADING_PROMOTIONS"
        InAppropriateContent -> "INAPPROPRIATE_CONTENT"
        SensitiveEvents -> "SENSITIVE_EVENTS"
        ShockingContent -> "SHOCKING_CONTENT"
        EnablingDishonestBehavior -> "ENABLING_DISHONEST_BEHAVIOR"
        TechnicalRequirements -> "TECHNICAL_REQUIREMENTS"
        RestrictedPoliticalContent -> "RESTRICTED_POLITICAL_CONTENT"
        UnsupportedContent -> "UNSUPPORTED_CONTENT"
        InvalidBiddingMethod -> "INVALID_BIDDING_METHOD"
        VideoTooLong -> "VIDEO_TOO_LONG"
        ViolatesJapanesePharmacyLaw -> "VIOLATES_JAPANESE_PHARMACY_LAW"
        UnaccreditedPetPharmacy -> "UNACCREDITED_PET_PHARMACY"
        Abortion -> "ABORTION"
        Contraceptives -> "CONTRACEPTIVES"
        NeedCertificatesToAdvertiseInChina -> "NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA"
        KcdspRegistration -> "KCDSP_REGISTRATION"
        NotFamilySafe -> "NOT_FAMILY_SAFE"
        ClinicalTrialRecruitment -> "CLINICAL_TRIAL_RECRUITMENT"
        MaximumNumberOfHTTPCallsExceeded -> "MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED"
        MaximumNumberOfCookiesExceeded -> "MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED"
        PersonalLoans -> "PERSONAL_LOANS"
        UnsupportedFlashContent -> "UNSUPPORTED_FLASH_CONTENT"
        MisuseByOmidScript -> "MISUSE_BY_OMID_SCRIPT"
        NonWhiteListedOmidVendor -> "NON_WHITELISTED_OMID_VENDOR"
        DestinationExperience -> "DESTINATION_EXPERIENCE"
        UnsupportedLanguage -> "UNSUPPORTED_LANGUAGE"
        NonSSLCompliant -> "NON_SSL_COMPLIANT"
        TemporaryPause -> "TEMPORARY_PAUSE"
        BailBonds -> "BAIL_BONDS"

instance FromJSON DisApprovalReason where
    parseJSON = parseJSONText "DisApprovalReason"

instance ToJSON DisApprovalReason where
    toJSON = toJSONText

-- | The role which is assigned to the client buyer. Each role implies a set
-- of permissions granted to the client. Must be one of
-- \`CLIENT_DEAL_VIEWER\`, \`CLIENT_DEAL_NEGOTIATOR\` or
-- \`CLIENT_DEAL_APPROVER\`.
data ClientRole
    = ClientRoleUnspecified
      -- ^ @CLIENT_ROLE_UNSPECIFIED@
      -- A placeholder for an undefined client role.
    | ClientDealViewer
      -- ^ @CLIENT_DEAL_VIEWER@
      -- Users associated with this client can see publisher deal offers in the
      -- Marketplace. They can neither negotiate proposals nor approve deals. If
      -- this client is visible to publishers, they can send deal proposals to
      -- this client.
    | ClientDealNegotiator
      -- ^ @CLIENT_DEAL_NEGOTIATOR@
      -- Users associated with this client can respond to deal proposals sent to
      -- them by publishers. They can also initiate deal proposals of their own.
    | ClientDealApprover
      -- ^ @CLIENT_DEAL_APPROVER@
      -- Users associated with this client can approve eligible deals on your
      -- behalf. Some deals may still explicitly require publisher finalization.
      -- If this role is not selected, the sponsor buyer will need to manually
      -- approve each of their deals.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClientRole

instance FromHttpApiData ClientRole where
    parseQueryParam = \case
        "CLIENT_ROLE_UNSPECIFIED" -> Right ClientRoleUnspecified
        "CLIENT_DEAL_VIEWER" -> Right ClientDealViewer
        "CLIENT_DEAL_NEGOTIATOR" -> Right ClientDealNegotiator
        "CLIENT_DEAL_APPROVER" -> Right ClientDealApprover
        x -> Left ("Unable to parse ClientRole from: " <> x)

instance ToHttpApiData ClientRole where
    toQueryParam = \case
        ClientRoleUnspecified -> "CLIENT_ROLE_UNSPECIFIED"
        ClientDealViewer -> "CLIENT_DEAL_VIEWER"
        ClientDealNegotiator -> "CLIENT_DEAL_NEGOTIATOR"
        ClientDealApprover -> "CLIENT_DEAL_APPROVER"

instance FromJSON ClientRole where
    parseJSON = parseJSONText "ClientRole"

instance ToJSON ClientRole where
    toJSON = toJSONText

-- | Specifies whether the creative is safeFrame compatible. \'OutputOnly
data DealCreativeSafeFrameCompatibility
    = CreativeSafeFrameCompatibilityUnspecified
      -- ^ @CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED@
      -- A placeholder for an undefined creative safe-frame compatibility.
    | Compatible
      -- ^ @COMPATIBLE@
      -- The creatives need to be compatible with the safe frame option.
    | Incompatible
      -- ^ @INCOMPATIBLE@
      -- The creatives can be incompatible with the safe frame option.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DealCreativeSafeFrameCompatibility

instance FromHttpApiData DealCreativeSafeFrameCompatibility where
    parseQueryParam = \case
        "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED" -> Right CreativeSafeFrameCompatibilityUnspecified
        "COMPATIBLE" -> Right Compatible
        "INCOMPATIBLE" -> Right Incompatible
        x -> Left ("Unable to parse DealCreativeSafeFrameCompatibility from: " <> x)

instance ToHttpApiData DealCreativeSafeFrameCompatibility where
    toQueryParam = \case
        CreativeSafeFrameCompatibilityUnspecified -> "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED"
        Compatible -> "COMPATIBLE"
        Incompatible -> "INCOMPATIBLE"

instance FromJSON DealCreativeSafeFrameCompatibility where
    parseJSON = parseJSONText "DealCreativeSafeFrameCompatibility"

instance ToJSON DealCreativeSafeFrameCompatibility where
    toJSON = toJSONText

-- | Specifies how the impression delivery will be paced. \'OutputOnly
data DeliveryControlDeliveryRateType
    = DeliveryRateTypeUnspecified
      -- ^ @DELIVERY_RATE_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined delivery rate type.
    | Evenly
      -- ^ @EVENLY@
      -- Impressions are served uniformly over the life of the deal.
    | FrontLoaded
      -- ^ @FRONT_LOADED@
      -- Impressions are served front-loaded.
    | AsFastAsPossible
      -- ^ @AS_FAST_AS_POSSIBLE@
      -- Impressions are served as fast as possible.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeliveryControlDeliveryRateType

instance FromHttpApiData DeliveryControlDeliveryRateType where
    parseQueryParam = \case
        "DELIVERY_RATE_TYPE_UNSPECIFIED" -> Right DeliveryRateTypeUnspecified
        "EVENLY" -> Right Evenly
        "FRONT_LOADED" -> Right FrontLoaded
        "AS_FAST_AS_POSSIBLE" -> Right AsFastAsPossible
        x -> Left ("Unable to parse DeliveryControlDeliveryRateType from: " <> x)

instance ToHttpApiData DeliveryControlDeliveryRateType where
    toQueryParam = \case
        DeliveryRateTypeUnspecified -> "DELIVERY_RATE_TYPE_UNSPECIFIED"
        Evenly -> "EVENLY"
        FrontLoaded -> "FRONT_LOADED"
        AsFastAsPossible -> "AS_FAST_AS_POSSIBLE"

instance FromJSON DeliveryControlDeliveryRateType where
    parseJSON = parseJSONText "DeliveryControlDeliveryRateType"

instance ToJSON DeliveryControlDeliveryRateType where
    toJSON = toJSONText

-- | The role of the person who first paused this deal.
data DealPauseStatusFirstPausedBy
    = DPSFPBBuyerSellerRoleUnspecified
      -- ^ @BUYER_SELLER_ROLE_UNSPECIFIED@
      -- A placeholder for an undefined buyer\/seller role.
    | DPSFPBBuyer
      -- ^ @BUYER@
      -- Specifies the role as buyer.
    | DPSFPBSeller
      -- ^ @SELLER@
      -- Specifies the role as seller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DealPauseStatusFirstPausedBy

instance FromHttpApiData DealPauseStatusFirstPausedBy where
    parseQueryParam = \case
        "BUYER_SELLER_ROLE_UNSPECIFIED" -> Right DPSFPBBuyerSellerRoleUnspecified
        "BUYER" -> Right DPSFPBBuyer
        "SELLER" -> Right DPSFPBSeller
        x -> Left ("Unable to parse DealPauseStatusFirstPausedBy from: " <> x)

instance ToHttpApiData DealPauseStatusFirstPausedBy where
    toQueryParam = \case
        DPSFPBBuyerSellerRoleUnspecified -> "BUYER_SELLER_ROLE_UNSPECIFIED"
        DPSFPBBuyer -> "BUYER"
        DPSFPBSeller -> "SELLER"

instance FromJSON DealPauseStatusFirstPausedBy where
    parseJSON = parseJSONText "DealPauseStatusFirstPausedBy"

instance ToJSON DealPauseStatusFirstPausedBy where
    toJSON = toJSONText

-- | \'OutputOnly The top-level open auction status of this creative. If
-- disapproved, an entry for \'auctionType = OPEN_AUCTION\' (or \'ALL\') in
-- serving_restrictions will also exist. Note that this may be nuanced with
-- other contextual restrictions, in which case, it may be preferable to
-- read from serving_restrictions directly. Can be used to filter the
-- response of the creatives.list method.
data CreativeOpenAuctionStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- The status is unknown.
    | NotChecked
      -- ^ @NOT_CHECKED@
      -- The creative has not been checked.
    | ConditionallyApproved
      -- ^ @CONDITIONALLY_APPROVED@
      -- The creative has been conditionally approved. See serving_restrictions
      -- for details.
    | Approved
      -- ^ @APPROVED@
      -- The creative has been approved.
    | DisApproved
      -- ^ @DISAPPROVED@
      -- The creative has been disapproved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeOpenAuctionStatus

instance FromHttpApiData CreativeOpenAuctionStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "NOT_CHECKED" -> Right NotChecked
        "CONDITIONALLY_APPROVED" -> Right ConditionallyApproved
        "APPROVED" -> Right Approved
        "DISAPPROVED" -> Right DisApproved
        x -> Left ("Unable to parse CreativeOpenAuctionStatus from: " <> x)

instance ToHttpApiData CreativeOpenAuctionStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        NotChecked -> "NOT_CHECKED"
        ConditionallyApproved -> "CONDITIONALLY_APPROVED"
        Approved -> "APPROVED"
        DisApproved -> "DISAPPROVED"

instance FromJSON CreativeOpenAuctionStatus where
    parseJSON = parseJSONText "CreativeOpenAuctionStatus"

instance ToJSON CreativeOpenAuctionStatus where
    toJSON = toJSONText

-- | The syndication product associated with the deal. Note: This field may
-- be set only when creating the resource. Modifying this field while
-- updating the resource will result in an error.
data DealSyndicationProduct
    = DSPSyndicationProductUnspecified
      -- ^ @SYNDICATION_PRODUCT_UNSPECIFIED@
      -- A placeholder for an undefined syndication product.
    | DSPContent
      -- ^ @CONTENT@
      -- This typically represents a web page.
    | DSPMobile
      -- ^ @MOBILE@
      -- This represents a mobile property.
    | DSPVideo
      -- ^ @VIDEO@
      -- This represents video ad formats.
    | DSPGames
      -- ^ @GAMES@
      -- This represents ads shown within games.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DealSyndicationProduct

instance FromHttpApiData DealSyndicationProduct where
    parseQueryParam = \case
        "SYNDICATION_PRODUCT_UNSPECIFIED" -> Right DSPSyndicationProductUnspecified
        "CONTENT" -> Right DSPContent
        "MOBILE" -> Right DSPMobile
        "VIDEO" -> Right DSPVideo
        "GAMES" -> Right DSPGames
        x -> Left ("Unable to parse DealSyndicationProduct from: " <> x)

instance ToHttpApiData DealSyndicationProduct where
    toQueryParam = \case
        DSPSyndicationProductUnspecified -> "SYNDICATION_PRODUCT_UNSPECIFIED"
        DSPContent -> "CONTENT"
        DSPMobile -> "MOBILE"
        DSPVideo -> "VIDEO"
        DSPGames -> "GAMES"

instance FromJSON DealSyndicationProduct where
    parseJSON = parseJSONText "DealSyndicationProduct"

instance ToJSON DealSyndicationProduct where
    toJSON = toJSONText

-- | The granularity of time intervals if a time series breakdown is desired;
-- optional.
data FilterSetTimeSeriesGranularity
    = TimeSeriesGranularityUnspecified
      -- ^ @TIME_SERIES_GRANULARITY_UNSPECIFIED@
      -- A placeholder for an unspecified interval; no time series is applied.
      -- All rows in response will contain data for the entire requested time
      -- range.
    | Hourly
      -- ^ @HOURLY@
      -- Indicates that data will be broken down by the hour.
    | Daily
      -- ^ @DAILY@
      -- Indicates that data will be broken down by the day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilterSetTimeSeriesGranularity

instance FromHttpApiData FilterSetTimeSeriesGranularity where
    parseQueryParam = \case
        "TIME_SERIES_GRANULARITY_UNSPECIFIED" -> Right TimeSeriesGranularityUnspecified
        "HOURLY" -> Right Hourly
        "DAILY" -> Right Daily
        x -> Left ("Unable to parse FilterSetTimeSeriesGranularity from: " <> x)

instance ToHttpApiData FilterSetTimeSeriesGranularity where
    toQueryParam = \case
        TimeSeriesGranularityUnspecified -> "TIME_SERIES_GRANULARITY_UNSPECIFIED"
        Hourly -> "HOURLY"
        Daily -> "DAILY"

instance FromJSON FilterSetTimeSeriesGranularity where
    parseJSON = parseJSONText "FilterSetTimeSeriesGranularity"

instance ToJSON FilterSetTimeSeriesGranularity where
    toJSON = toJSONText

-- | The type of detail that the detail IDs represent.
data ListCreativeStatusBreakdownByDetailResponseDetailType
    = DetailTypeUnspecified
      -- ^ @DETAIL_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined status. This value will never be returned
      -- in responses.
    | CreativeAttribute
      -- ^ @CREATIVE_ATTRIBUTE@
      -- Indicates that the detail ID refers to a creative attribute; see
      -- [publisher-excludable-creative-attributes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/publisher-excludable-creative-attributes).
    | Vendor
      -- ^ @VENDOR@
      -- Indicates that the detail ID refers to a vendor; see
      -- [vendors](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/vendors).
    | SensitiveCategory
      -- ^ @SENSITIVE_CATEGORY@
      -- Indicates that the detail ID refers to a sensitive category; see
      -- [ad-sensitive-categories](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/ad-sensitive-categories).
    | ProductCategory
      -- ^ @PRODUCT_CATEGORY@
      -- Indicates that the detail ID refers to a product category; see
      -- [ad-product-categories](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/ad-product-categories).
    | DisApprovalReason
      -- ^ @DISAPPROVAL_REASON@
      -- Indicates that the detail ID refers to a disapproval reason; see
      -- DisapprovalReason enum in
      -- [snippet-status-report-proto](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/snippet-status-report-proto).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListCreativeStatusBreakdownByDetailResponseDetailType

instance FromHttpApiData ListCreativeStatusBreakdownByDetailResponseDetailType where
    parseQueryParam = \case
        "DETAIL_TYPE_UNSPECIFIED" -> Right DetailTypeUnspecified
        "CREATIVE_ATTRIBUTE" -> Right CreativeAttribute
        "VENDOR" -> Right Vendor
        "SENSITIVE_CATEGORY" -> Right SensitiveCategory
        "PRODUCT_CATEGORY" -> Right ProductCategory
        "DISAPPROVAL_REASON" -> Right DisApprovalReason
        x -> Left ("Unable to parse ListCreativeStatusBreakdownByDetailResponseDetailType from: " <> x)

instance ToHttpApiData ListCreativeStatusBreakdownByDetailResponseDetailType where
    toQueryParam = \case
        DetailTypeUnspecified -> "DETAIL_TYPE_UNSPECIFIED"
        CreativeAttribute -> "CREATIVE_ATTRIBUTE"
        Vendor -> "VENDOR"
        SensitiveCategory -> "SENSITIVE_CATEGORY"
        ProductCategory -> "PRODUCT_CATEGORY"
        DisApprovalReason -> "DISAPPROVAL_REASON"

instance FromJSON ListCreativeStatusBreakdownByDetailResponseDetailType where
    parseJSON = parseJSONText "ListCreativeStatusBreakdownByDetailResponseDetailType"

instance ToJSON ListCreativeStatusBreakdownByDetailResponseDetailType where
    toJSON = toJSONText

-- | The status specifying why the bid responses were considered to have no
-- applicable bids.
data BidResponseWithoutBidsStatusRowStatus
    = BRWBSRSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- A placeholder for an undefined status. This value will never be returned
      -- in responses.
    | BRWBSRSResponsesWithoutBids
      -- ^ @RESPONSES_WITHOUT_BIDS@
      -- The response had no bids.
    | BRWBSRSResponsesWithoutBidsForAccount
      -- ^ @RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT@
      -- The response had no bids for the specified account, though it may have
      -- included bids on behalf of other accounts.
    | BRWBSRSResponsesWithoutBidsForDeal
      -- ^ @RESPONSES_WITHOUT_BIDS_FOR_DEAL@
      -- The response had no bids for the specified deal, though it may have
      -- included bids on other deals on behalf of the account to which the deal
      -- belongs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BidResponseWithoutBidsStatusRowStatus

instance FromHttpApiData BidResponseWithoutBidsStatusRowStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right BRWBSRSStatusUnspecified
        "RESPONSES_WITHOUT_BIDS" -> Right BRWBSRSResponsesWithoutBids
        "RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT" -> Right BRWBSRSResponsesWithoutBidsForAccount
        "RESPONSES_WITHOUT_BIDS_FOR_DEAL" -> Right BRWBSRSResponsesWithoutBidsForDeal
        x -> Left ("Unable to parse BidResponseWithoutBidsStatusRowStatus from: " <> x)

instance ToHttpApiData BidResponseWithoutBidsStatusRowStatus where
    toQueryParam = \case
        BRWBSRSStatusUnspecified -> "STATUS_UNSPECIFIED"
        BRWBSRSResponsesWithoutBids -> "RESPONSES_WITHOUT_BIDS"
        BRWBSRSResponsesWithoutBidsForAccount -> "RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT"
        BRWBSRSResponsesWithoutBidsForDeal -> "RESPONSES_WITHOUT_BIDS_FOR_DEAL"

instance FromJSON BidResponseWithoutBidsStatusRowStatus where
    parseJSON = parseJSONText "BidResponseWithoutBidsStatusRowStatus"

instance ToJSON BidResponseWithoutBidsStatusRowStatus where
    toJSON = toJSONText

-- | The timezone to use for interpreting the day part targeting.
data DayPartTargetingTimeZoneType
    = DPTTZTTimeZoneSourceUnspecified
      -- ^ @TIME_ZONE_SOURCE_UNSPECIFIED@
      -- A placeholder for an undefined time zone source.
    | DPTTZTPublisher
      -- ^ @PUBLISHER@
      -- Use publisher\'s time zone setting.
    | DPTTZTUser
      -- ^ @USER@
      -- Use the user\'s time zone setting.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DayPartTargetingTimeZoneType

instance FromHttpApiData DayPartTargetingTimeZoneType where
    parseQueryParam = \case
        "TIME_ZONE_SOURCE_UNSPECIFIED" -> Right DPTTZTTimeZoneSourceUnspecified
        "PUBLISHER" -> Right DPTTZTPublisher
        "USER" -> Right DPTTZTUser
        x -> Left ("Unable to parse DayPartTargetingTimeZoneType from: " <> x)

instance ToHttpApiData DayPartTargetingTimeZoneType where
    toQueryParam = \case
        DPTTZTTimeZoneSourceUnspecified -> "TIME_ZONE_SOURCE_UNSPECIFIED"
        DPTTZTPublisher -> "PUBLISHER"
        DPTTZTUser -> "USER"

instance FromJSON DayPartTargetingTimeZoneType where
    parseJSON = parseJSONText "DayPartTargetingTimeZoneType"

instance ToJSON DayPartTargetingTimeZoneType where
    toJSON = toJSONText

-- | The status of the client user.
data ClientUserStatus
    = UserStatusUnspecified
      -- ^ @USER_STATUS_UNSPECIFIED@
      -- A placeholder for an undefined user status.
    | Pending
      -- ^ @PENDING@
      -- A user who was already created but hasn\'t accepted the invitation yet.
    | Active
      -- ^ @ACTIVE@
      -- A user that is currently active.
    | Disabled
      -- ^ @DISABLED@
      -- A user that is currently disabled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClientUserStatus

instance FromHttpApiData ClientUserStatus where
    parseQueryParam = \case
        "USER_STATUS_UNSPECIFIED" -> Right UserStatusUnspecified
        "PENDING" -> Right Pending
        "ACTIVE" -> Right Active
        "DISABLED" -> Right Disabled
        x -> Left ("Unable to parse ClientUserStatus from: " <> x)

instance ToHttpApiData ClientUserStatus where
    toQueryParam = \case
        UserStatusUnspecified -> "USER_STATUS_UNSPECIFIED"
        Pending -> "PENDING"
        Active -> "ACTIVE"
        Disabled -> "DISABLED"

instance FromJSON ClientUserStatus where
    parseJSON = parseJSONText "ClientUserStatus"

instance ToJSON ClientUserStatus where
    toJSON = toJSONText

-- | Matches all contexts.
data ServingContextAll
    = SimpleContext
      -- ^ @SIMPLE_CONTEXT@
      -- A simple context.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServingContextAll

instance FromHttpApiData ServingContextAll where
    parseQueryParam = \case
        "SIMPLE_CONTEXT" -> Right SimpleContext
        x -> Left ("Unable to parse ServingContextAll from: " <> x)

instance ToHttpApiData ServingContextAll where
    toQueryParam = \case
        SimpleContext -> "SIMPLE_CONTEXT"

instance FromJSON ServingContextAll where
    parseJSON = parseJSONText "ServingContextAll"

instance ToJSON ServingContextAll where
    toJSON = toJSONText

-- | The format of the environment that the creatives will be displayed in.
data CreativeRestrictionsCreativeFormat
    = CRCFCreativeFormatUnspecified
      -- ^ @CREATIVE_FORMAT_UNSPECIFIED@
      -- A placeholder for an undefined creative format.
    | CRCFDisplay
      -- ^ @DISPLAY@
      -- A creative that will be displayed in environments such as a browser.
    | CRCFVideo
      -- ^ @VIDEO@
      -- A video creative that will be displayed in environments such as a video
      -- player.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeRestrictionsCreativeFormat

instance FromHttpApiData CreativeRestrictionsCreativeFormat where
    parseQueryParam = \case
        "CREATIVE_FORMAT_UNSPECIFIED" -> Right CRCFCreativeFormatUnspecified
        "DISPLAY" -> Right CRCFDisplay
        "VIDEO" -> Right CRCFVideo
        x -> Left ("Unable to parse CreativeRestrictionsCreativeFormat from: " <> x)

instance ToHttpApiData CreativeRestrictionsCreativeFormat where
    toQueryParam = \case
        CRCFCreativeFormatUnspecified -> "CREATIVE_FORMAT_UNSPECIFIED"
        CRCFDisplay -> "DISPLAY"
        CRCFVideo -> "VIDEO"

instance FromJSON CreativeRestrictionsCreativeFormat where
    parseJSON = parseJSONText "CreativeRestrictionsCreativeFormat"

instance ToJSON CreativeRestrictionsCreativeFormat where
    toJSON = toJSONText

-- | Indicates whether the buyer\/seller created the proposal. \'OutputOnly
data ProposalOriginatorRole
    = PORBuyerSellerRoleUnspecified
      -- ^ @BUYER_SELLER_ROLE_UNSPECIFIED@
      -- A placeholder for an undefined buyer\/seller role.
    | PORBuyer
      -- ^ @BUYER@
      -- Specifies the role as buyer.
    | PORSeller
      -- ^ @SELLER@
      -- Specifies the role as seller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProposalOriginatorRole

instance FromHttpApiData ProposalOriginatorRole where
    parseQueryParam = \case
        "BUYER_SELLER_ROLE_UNSPECIFIED" -> Right PORBuyerSellerRoleUnspecified
        "BUYER" -> Right PORBuyer
        "SELLER" -> Right PORSeller
        x -> Left ("Unable to parse ProposalOriginatorRole from: " <> x)

instance ToHttpApiData ProposalOriginatorRole where
    toQueryParam = \case
        PORBuyerSellerRoleUnspecified -> "BUYER_SELLER_ROLE_UNSPECIFIED"
        PORBuyer -> "BUYER"
        PORSeller -> "SELLER"

instance FromJSON ProposalOriginatorRole where
    parseJSON = parseJSONText "ProposalOriginatorRole"

instance ToJSON ProposalOriginatorRole where
    toJSON = toJSONText

-- | The native template for this creative. It will have a value only if
-- creative_size_type = CreativeSizeType.NATIVE. \'OutputOnly
data CreativeSizeNATiveTemplate
    = UnknownNATiveTemplate
      -- ^ @UNKNOWN_NATIVE_TEMPLATE@
      -- A placeholder for an undefined native template.
    | NATiveContentAd
      -- ^ @NATIVE_CONTENT_AD@
      -- The creative is linked to native content ad.
    | NATiveAppInstallAd
      -- ^ @NATIVE_APP_INSTALL_AD@
      -- The creative is linked to native app install ad.
    | NATiveVideoContentAd
      -- ^ @NATIVE_VIDEO_CONTENT_AD@
      -- The creative is linked to native video content ad.
    | NATiveVideoAppInstallAd
      -- ^ @NATIVE_VIDEO_APP_INSTALL_AD@
      -- The creative is linked to native video app install ad.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeSizeNATiveTemplate

instance FromHttpApiData CreativeSizeNATiveTemplate where
    parseQueryParam = \case
        "UNKNOWN_NATIVE_TEMPLATE" -> Right UnknownNATiveTemplate
        "NATIVE_CONTENT_AD" -> Right NATiveContentAd
        "NATIVE_APP_INSTALL_AD" -> Right NATiveAppInstallAd
        "NATIVE_VIDEO_CONTENT_AD" -> Right NATiveVideoContentAd
        "NATIVE_VIDEO_APP_INSTALL_AD" -> Right NATiveVideoAppInstallAd
        x -> Left ("Unable to parse CreativeSizeNATiveTemplate from: " <> x)

instance ToHttpApiData CreativeSizeNATiveTemplate where
    toQueryParam = \case
        UnknownNATiveTemplate -> "UNKNOWN_NATIVE_TEMPLATE"
        NATiveContentAd -> "NATIVE_CONTENT_AD"
        NATiveAppInstallAd -> "NATIVE_APP_INSTALL_AD"
        NATiveVideoContentAd -> "NATIVE_VIDEO_CONTENT_AD"
        NATiveVideoAppInstallAd -> "NATIVE_VIDEO_APP_INSTALL_AD"

instance FromJSON CreativeSizeNATiveTemplate where
    parseJSON = parseJSONText "CreativeSizeNATiveTemplate"

instance ToJSON CreativeSizeNATiveTemplate where
    toJSON = toJSONText

-- | The environment on which to filter; optional.
data FilterSetEnvironment
    = EnvironmentUnspecified
      -- ^ @ENVIRONMENT_UNSPECIFIED@
      -- A placeholder for an undefined environment; indicates that no
      -- environment filter will be applied.
    | Web
      -- ^ @WEB@
      -- The ad impression appears on the web.
    | App
      -- ^ @APP@
      -- The ad impression appears in an app.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilterSetEnvironment

instance FromHttpApiData FilterSetEnvironment where
    parseQueryParam = \case
        "ENVIRONMENT_UNSPECIFIED" -> Right EnvironmentUnspecified
        "WEB" -> Right Web
        "APP" -> Right App
        x -> Left ("Unable to parse FilterSetEnvironment from: " <> x)

instance ToHttpApiData FilterSetEnvironment where
    toQueryParam = \case
        EnvironmentUnspecified -> "ENVIRONMENT_UNSPECIFIED"
        Web -> "WEB"
        App -> "APP"

instance FromJSON FilterSetEnvironment where
    parseJSON = parseJSONText "FilterSetEnvironment"

instance ToJSON FilterSetEnvironment where
    toJSON = toJSONText

-- | The day of the week to target. If unspecified, applicable to all days.
data DayPartDayOfWeek
    = DayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- A placeholder for when the day of the week is not specified.
    | Monday
      -- ^ @MONDAY@
      -- Monday
    | Tuesday
      -- ^ @TUESDAY@
      -- Tuesday
    | Wednesday
      -- ^ @WEDNESDAY@
      -- Wednesday
    | Thursday
      -- ^ @THURSDAY@
      -- Thursday
    | Friday
      -- ^ @FRIDAY@
      -- Friday
    | Saturday
      -- ^ @SATURDAY@
      -- Saturday
    | Sunday
      -- ^ @SUNDAY@
      -- Sunday
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DayPartDayOfWeek

instance FromHttpApiData DayPartDayOfWeek where
    parseQueryParam = \case
        "DAY_OF_WEEK_UNSPECIFIED" -> Right DayOfWeekUnspecified
        "MONDAY" -> Right Monday
        "TUESDAY" -> Right Tuesday
        "WEDNESDAY" -> Right Wednesday
        "THURSDAY" -> Right Thursday
        "FRIDAY" -> Right Friday
        "SATURDAY" -> Right Saturday
        "SUNDAY" -> Right Sunday
        x -> Left ("Unable to parse DayPartDayOfWeek from: " <> x)

instance ToHttpApiData DayPartDayOfWeek where
    toQueryParam = \case
        DayOfWeekUnspecified -> "DAY_OF_WEEK_UNSPECIFIED"
        Monday -> "MONDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"
        Thursday -> "THURSDAY"
        Friday -> "FRIDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"

instance FromJSON DayPartDayOfWeek where
    parseJSON = parseJSONText "DayPartDayOfWeek"

instance ToJSON DayPartDayOfWeek where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Visibility of the URL in bid requests. (default: BRANDED)
data DealTermsBrandingType
    = BrandingTypeUnspecified
      -- ^ @BRANDING_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined branding type.
    | Branded
      -- ^ @BRANDED@
      -- Full URL is included in bid requests.
    | SemiTransparent
      -- ^ @SEMI_TRANSPARENT@
      -- A TopLevelDomain or masked URL is sent in bid requests rather than the
      -- full one.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DealTermsBrandingType

instance FromHttpApiData DealTermsBrandingType where
    parseQueryParam = \case
        "BRANDING_TYPE_UNSPECIFIED" -> Right BrandingTypeUnspecified
        "BRANDED" -> Right Branded
        "SEMI_TRANSPARENT" -> Right SemiTransparent
        x -> Left ("Unable to parse DealTermsBrandingType from: " <> x)

instance ToHttpApiData DealTermsBrandingType where
    toQueryParam = \case
        BrandingTypeUnspecified -> "BRANDING_TYPE_UNSPECIFIED"
        Branded -> "BRANDED"
        SemiTransparent -> "SEMI_TRANSPARENT"

instance FromJSON DealTermsBrandingType where
    parseJSON = parseJSONText "DealTermsBrandingType"

instance ToJSON DealTermsBrandingType where
    toJSON = toJSONText

-- | The role of the last user that either updated the proposal or left a
-- comment. \'OutputOnly
data ProposalLastUpdaterOrCommentorRole
    = PLUOCRBuyerSellerRoleUnspecified
      -- ^ @BUYER_SELLER_ROLE_UNSPECIFIED@
      -- A placeholder for an undefined buyer\/seller role.
    | PLUOCRBuyer
      -- ^ @BUYER@
      -- Specifies the role as buyer.
    | PLUOCRSeller
      -- ^ @SELLER@
      -- Specifies the role as seller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProposalLastUpdaterOrCommentorRole

instance FromHttpApiData ProposalLastUpdaterOrCommentorRole where
    parseQueryParam = \case
        "BUYER_SELLER_ROLE_UNSPECIFIED" -> Right PLUOCRBuyerSellerRoleUnspecified
        "BUYER" -> Right PLUOCRBuyer
        "SELLER" -> Right PLUOCRSeller
        x -> Left ("Unable to parse ProposalLastUpdaterOrCommentorRole from: " <> x)

instance ToHttpApiData ProposalLastUpdaterOrCommentorRole where
    toQueryParam = \case
        PLUOCRBuyerSellerRoleUnspecified -> "BUYER_SELLER_ROLE_UNSPECIFIED"
        PLUOCRBuyer -> "BUYER"
        PLUOCRSeller -> "SELLER"

instance FromJSON ProposalLastUpdaterOrCommentorRole where
    parseJSON = parseJSONText "ProposalLastUpdaterOrCommentorRole"

instance ToJSON ProposalLastUpdaterOrCommentorRole where
    toJSON = toJSONText

-- | The type of the client entity: \`ADVERTISER\`, \`BRAND\`, or \`AGENCY\`.
data ClientEntityType
    = CETEntityTypeUnspecified
      -- ^ @ENTITY_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined client entity type. Should not be used.
    | CETAdvertiser
      -- ^ @ADVERTISER@
      -- An advertiser.
    | CETBrand
      -- ^ @BRAND@
      -- A brand.
    | CETAgency
      -- ^ @AGENCY@
      -- An advertising agency.
    | CETEntityTypeUnclassified
      -- ^ @ENTITY_TYPE_UNCLASSIFIED@
      -- An explicit value for a client that was not yet classified as any
      -- particular entity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClientEntityType

instance FromHttpApiData ClientEntityType where
    parseQueryParam = \case
        "ENTITY_TYPE_UNSPECIFIED" -> Right CETEntityTypeUnspecified
        "ADVERTISER" -> Right CETAdvertiser
        "BRAND" -> Right CETBrand
        "AGENCY" -> Right CETAgency
        "ENTITY_TYPE_UNCLASSIFIED" -> Right CETEntityTypeUnclassified
        x -> Left ("Unable to parse ClientEntityType from: " <> x)

instance ToHttpApiData ClientEntityType where
    toQueryParam = \case
        CETEntityTypeUnspecified -> "ENTITY_TYPE_UNSPECIFIED"
        CETAdvertiser -> "ADVERTISER"
        CETBrand -> "BRAND"
        CETAgency -> "AGENCY"
        CETEntityTypeUnclassified -> "ENTITY_TYPE_UNCLASSIFIED"

instance FromJSON ClientEntityType where
    parseJSON = parseJSONText "ClientEntityType"

instance ToJSON ClientEntityType where
    toJSON = toJSONText

-- | The time unit. Along with num_time_units defines the amount of time over
-- which impressions per user are counted and capped.
data FrequencyCapTimeUnitType
    = TimeUnitTypeUnspecified
      -- ^ @TIME_UNIT_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined time unit type. This just indicates the
      -- variable with this value hasn\'t been initialized.
    | Minute
      -- ^ @MINUTE@
      -- Minute
    | Hour
      -- ^ @HOUR@
      -- Hour
    | Day
      -- ^ @DAY@
      -- Day
    | Week
      -- ^ @WEEK@
      -- Week
    | Month
      -- ^ @MONTH@
      -- Month
    | Lifetime
      -- ^ @LIFETIME@
      -- Lifetime
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FrequencyCapTimeUnitType

instance FromHttpApiData FrequencyCapTimeUnitType where
    parseQueryParam = \case
        "TIME_UNIT_TYPE_UNSPECIFIED" -> Right TimeUnitTypeUnspecified
        "MINUTE" -> Right Minute
        "HOUR" -> Right Hour
        "DAY" -> Right Day
        "WEEK" -> Right Week
        "MONTH" -> Right Month
        "LIFETIME" -> Right Lifetime
        x -> Left ("Unable to parse FrequencyCapTimeUnitType from: " <> x)

instance ToHttpApiData FrequencyCapTimeUnitType where
    toQueryParam = \case
        TimeUnitTypeUnspecified -> "TIME_UNIT_TYPE_UNSPECIFIED"
        Minute -> "MINUTE"
        Hour -> "HOUR"
        Day -> "DAY"
        Week -> "WEEK"
        Month -> "MONTH"
        Lifetime -> "LIFETIME"

instance FromJSON FrequencyCapTimeUnitType where
    parseJSON = parseJSONText "FrequencyCapTimeUnitType"

instance ToJSON FrequencyCapTimeUnitType where
    toJSON = toJSONText

-- | The pricing type for the deal\/product. (default: CPM)
data PricePricingType
    = PricingTypeUnspecified
      -- ^ @PRICING_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined pricing type. If the pricing type is
      -- unpsecified, \`COST_PER_MILLE\` will be used instead.
    | CostPerMille
      -- ^ @COST_PER_MILLE@
      -- Cost per thousand impressions.
    | CostPerDay
      -- ^ @COST_PER_DAY@
      -- Cost per day
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PricePricingType

instance FromHttpApiData PricePricingType where
    parseQueryParam = \case
        "PRICING_TYPE_UNSPECIFIED" -> Right PricingTypeUnspecified
        "COST_PER_MILLE" -> Right CostPerMille
        "COST_PER_DAY" -> Right CostPerDay
        x -> Left ("Unable to parse PricePricingType from: " <> x)

instance ToHttpApiData PricePricingType where
    toQueryParam = \case
        PricingTypeUnspecified -> "PRICING_TYPE_UNSPECIFIED"
        CostPerMille -> "COST_PER_MILLE"
        CostPerDay -> "COST_PER_DAY"

instance FromJSON PricePricingType where
    parseJSON = parseJSONText "PricePricingType"

instance ToJSON PricePricingType where
    toJSON = toJSONText

-- | The status specifying why the winning bids were not billed.
data NonBillableWinningBidStatusRowStatus
    = NBWBSRSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- A placeholder for an undefined status. This value will never be returned
      -- in responses.
    | NBWBSRSAdNotRendered
      -- ^ @AD_NOT_RENDERED@
      -- The buyer was not billed because the ad was not rendered by the
      -- publisher.
    | NBWBSRSInvalidImpression
      -- ^ @INVALID_IMPRESSION@
      -- The buyer was not billed because the impression won by the bid was
      -- determined to be invalid.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NonBillableWinningBidStatusRowStatus

instance FromHttpApiData NonBillableWinningBidStatusRowStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right NBWBSRSStatusUnspecified
        "AD_NOT_RENDERED" -> Right NBWBSRSAdNotRendered
        "INVALID_IMPRESSION" -> Right NBWBSRSInvalidImpression
        x -> Left ("Unable to parse NonBillableWinningBidStatusRowStatus from: " <> x)

instance ToHttpApiData NonBillableWinningBidStatusRowStatus where
    toQueryParam = \case
        NBWBSRSStatusUnspecified -> "STATUS_UNSPECIFIED"
        NBWBSRSAdNotRendered -> "AD_NOT_RENDERED"
        NBWBSRSInvalidImpression -> "INVALID_IMPRESSION"

instance FromJSON NonBillableWinningBidStatusRowStatus where
    parseJSON = parseJSONText "NonBillableWinningBidStatusRowStatus"

instance ToJSON NonBillableWinningBidStatusRowStatus where
    toJSON = toJSONText

-- | The status of the client buyer.
data ClientStatus
    = CSClientStatusUnspecified
      -- ^ @CLIENT_STATUS_UNSPECIFIED@
      -- A placeholder for an undefined client status.
    | CSDisabled
      -- ^ @DISABLED@
      -- A client that is currently disabled.
    | CSActive
      -- ^ @ACTIVE@
      -- A client that is currently active.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClientStatus

instance FromHttpApiData ClientStatus where
    parseQueryParam = \case
        "CLIENT_STATUS_UNSPECIFIED" -> Right CSClientStatusUnspecified
        "DISABLED" -> Right CSDisabled
        "ACTIVE" -> Right CSActive
        x -> Left ("Unable to parse ClientStatus from: " <> x)

instance ToHttpApiData ClientStatus where
    toQueryParam = \case
        CSClientStatusUnspecified -> "CLIENT_STATUS_UNSPECIFIED"
        CSDisabled -> "DISABLED"
        CSActive -> "ACTIVE"

instance FromJSON ClientStatus where
    parseJSON = parseJSONText "ClientStatus"

instance ToJSON ClientStatus where
    toJSON = toJSONText

-- | The size type of the ad slot.
data AdSizeSizeType
    = SizeTypeUnspecified
      -- ^ @SIZE_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined size type.
    | Pixel
      -- ^ @PIXEL@
      -- Ad slot with size specified by height and width in pixels.
    | Interstitial
      -- ^ @INTERSTITIAL@
      -- Special size to describe an interstitial ad slot.
    | NATive
      -- ^ @NATIVE@
      -- Native (mobile) ads rendered by the publisher.
    | Fluid
      -- ^ @FLUID@
      -- Fluid size (i.e., responsive size) can be resized automatically with the
      -- change of outside environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdSizeSizeType

instance FromHttpApiData AdSizeSizeType where
    parseQueryParam = \case
        "SIZE_TYPE_UNSPECIFIED" -> Right SizeTypeUnspecified
        "PIXEL" -> Right Pixel
        "INTERSTITIAL" -> Right Interstitial
        "NATIVE" -> Right NATive
        "FLUID" -> Right Fluid
        x -> Left ("Unable to parse AdSizeSizeType from: " <> x)

instance ToHttpApiData AdSizeSizeType where
    toQueryParam = \case
        SizeTypeUnspecified -> "SIZE_TYPE_UNSPECIFIED"
        Pixel -> "PIXEL"
        Interstitial -> "INTERSTITIAL"
        NATive -> "NATIVE"
        Fluid -> "FLUID"

instance FromJSON AdSizeSizeType where
    parseJSON = parseJSONText "AdSizeSizeType"

instance ToJSON AdSizeSizeType where
    toJSON = toJSONText

-- | \'OutputOnly The top-level deals status of this creative. If
-- disapproved, an entry for \'auctionType=DIRECT_DEALS\' (or \'ALL\') in
-- serving_restrictions will also exist. Note that this may be nuanced with
-- other contextual restrictions, in which case, it may be preferable to
-- read from serving_restrictions directly. Can be used to filter the
-- response of the creatives.list method.
data CreativeDealsStatus
    = CDSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- The status is unknown.
    | CDSNotChecked
      -- ^ @NOT_CHECKED@
      -- The creative has not been checked.
    | CDSConditionallyApproved
      -- ^ @CONDITIONALLY_APPROVED@
      -- The creative has been conditionally approved. See serving_restrictions
      -- for details.
    | CDSApproved
      -- ^ @APPROVED@
      -- The creative has been approved.
    | CDSDisApproved
      -- ^ @DISAPPROVED@
      -- The creative has been disapproved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeDealsStatus

instance FromHttpApiData CreativeDealsStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right CDSStatusUnspecified
        "NOT_CHECKED" -> Right CDSNotChecked
        "CONDITIONALLY_APPROVED" -> Right CDSConditionallyApproved
        "APPROVED" -> Right CDSApproved
        "DISAPPROVED" -> Right CDSDisApproved
        x -> Left ("Unable to parse CreativeDealsStatus from: " <> x)

instance ToHttpApiData CreativeDealsStatus where
    toQueryParam = \case
        CDSStatusUnspecified -> "STATUS_UNSPECIFIED"
        CDSNotChecked -> "NOT_CHECKED"
        CDSConditionallyApproved -> "CONDITIONALLY_APPROVED"
        CDSApproved -> "APPROVED"
        CDSDisApproved -> "DISAPPROVED"

instance FromJSON CreativeDealsStatus where
    parseJSON = parseJSONText "CreativeDealsStatus"

instance ToJSON CreativeDealsStatus where
    toJSON = toJSONText

-- | The type of skippable ad for this creative. It will have a value only if
-- creative_size_type = CreativeSizeType.VIDEO.
data CreativeSizeSkippableAdType
    = CSSATSkippableAdTypeUnspecified
      -- ^ @SKIPPABLE_AD_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined skippable ad type.
    | CSSATGeneric
      -- ^ @GENERIC@
      -- This video ad can be skipped after 5 seconds.
    | CSSATInstreamSelect
      -- ^ @INSTREAM_SELECT@
      -- This video ad can be skipped after 5 seconds, and count as engaged view
      -- after 30 seconds. The creative is hosted on YouTube only, and viewcount
      -- of the YouTube video increments after the engaged view.
    | CSSATNotSkippable
      -- ^ @NOT_SKIPPABLE@
      -- This video ad is not skippable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeSizeSkippableAdType

instance FromHttpApiData CreativeSizeSkippableAdType where
    parseQueryParam = \case
        "SKIPPABLE_AD_TYPE_UNSPECIFIED" -> Right CSSATSkippableAdTypeUnspecified
        "GENERIC" -> Right CSSATGeneric
        "INSTREAM_SELECT" -> Right CSSATInstreamSelect
        "NOT_SKIPPABLE" -> Right CSSATNotSkippable
        x -> Left ("Unable to parse CreativeSizeSkippableAdType from: " <> x)

instance ToHttpApiData CreativeSizeSkippableAdType where
    toQueryParam = \case
        CSSATSkippableAdTypeUnspecified -> "SKIPPABLE_AD_TYPE_UNSPECIFIED"
        CSSATGeneric -> "GENERIC"
        CSSATInstreamSelect -> "INSTREAM_SELECT"
        CSSATNotSkippable -> "NOT_SKIPPABLE"

instance FromJSON CreativeSizeSkippableAdType where
    parseJSON = parseJSONText "CreativeSizeSkippableAdType"

instance ToJSON CreativeSizeSkippableAdType where
    toJSON = toJSONText

-- | The role of the person (buyer\/seller) creating the note. \'OutputOnly
data NoteCreatorRole
    = NCRBuyerSellerRoleUnspecified
      -- ^ @BUYER_SELLER_ROLE_UNSPECIFIED@
      -- A placeholder for an undefined buyer\/seller role.
    | NCRBuyer
      -- ^ @BUYER@
      -- Specifies the role as buyer.
    | NCRSeller
      -- ^ @SELLER@
      -- Specifies the role as seller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NoteCreatorRole

instance FromHttpApiData NoteCreatorRole where
    parseQueryParam = \case
        "BUYER_SELLER_ROLE_UNSPECIFIED" -> Right NCRBuyerSellerRoleUnspecified
        "BUYER" -> Right NCRBuyer
        "SELLER" -> Right NCRSeller
        x -> Left ("Unable to parse NoteCreatorRole from: " <> x)

instance ToHttpApiData NoteCreatorRole where
    toQueryParam = \case
        NCRBuyerSellerRoleUnspecified -> "BUYER_SELLER_ROLE_UNSPECIFIED"
        NCRBuyer -> "BUYER"
        NCRSeller -> "SELLER"

instance FromJSON NoteCreatorRole where
    parseJSON = parseJSONText "NoteCreatorRole"

instance ToJSON NoteCreatorRole where
    toJSON = toJSONText

-- | The creative size type.
data CreativeSizeCreativeSizeType
    = CSCSTCreativeSizeTypeUnspecified
      -- ^ @CREATIVE_SIZE_TYPE_UNSPECIFIED@
      -- A placeholder for an undefined creative size type.
    | CSCSTRegular
      -- ^ @REGULAR@
      -- The creative is a regular desktop creative.
    | CSCSTInterstitial
      -- ^ @INTERSTITIAL@
      -- The creative is an interstitial creative.
    | CSCSTVideo
      -- ^ @VIDEO@
      -- The creative is a video creative.
    | CSCSTNATive
      -- ^ @NATIVE@
      -- The creative is a native (mobile) creative.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeSizeCreativeSizeType

instance FromHttpApiData CreativeSizeCreativeSizeType where
    parseQueryParam = \case
        "CREATIVE_SIZE_TYPE_UNSPECIFIED" -> Right CSCSTCreativeSizeTypeUnspecified
        "REGULAR" -> Right CSCSTRegular
        "INTERSTITIAL" -> Right CSCSTInterstitial
        "VIDEO" -> Right CSCSTVideo
        "NATIVE" -> Right CSCSTNATive
        x -> Left ("Unable to parse CreativeSizeCreativeSizeType from: " <> x)

instance ToHttpApiData CreativeSizeCreativeSizeType where
    toQueryParam = \case
        CSCSTCreativeSizeTypeUnspecified -> "CREATIVE_SIZE_TYPE_UNSPECIFIED"
        CSCSTRegular -> "REGULAR"
        CSCSTInterstitial -> "INTERSTITIAL"
        CSCSTVideo -> "VIDEO"
        CSCSTNATive -> "NATIVE"

instance FromJSON CreativeSizeCreativeSizeType where
    parseJSON = parseJSONText "CreativeSizeCreativeSizeType"

instance ToJSON CreativeSizeCreativeSizeType where
    toJSON = toJSONText

-- | The type of correction that was applied to the creative.
data CorrectionType
    = CorrectionTypeUnspecified
      -- ^ @CORRECTION_TYPE_UNSPECIFIED@
      -- The correction type is unknown. Refer to the details for more
      -- information.
    | VendorIdsAdded
      -- ^ @VENDOR_IDS_ADDED@
      -- The ad\'s declared vendors did not match the vendors that were detected.
      -- The detected vendors were added.
    | SSLAttributeRemoved
      -- ^ @SSL_ATTRIBUTE_REMOVED@
      -- The ad had the SSL attribute declared but was not SSL-compliant. The SSL
      -- attribute was removed.
    | FlashFreeAttributeRemoved
      -- ^ @FLASH_FREE_ATTRIBUTE_REMOVED@
      -- The ad was declared as Flash-free but contained Flash, so the Flash-free
      -- attribute was removed.
    | FlashFreeAttributeAdded
      -- ^ @FLASH_FREE_ATTRIBUTE_ADDED@
      -- The ad was not declared as Flash-free but it did not reference any flash
      -- content, so the Flash-free attribute was added.
    | RequiredAttributeAdded
      -- ^ @REQUIRED_ATTRIBUTE_ADDED@
      -- The ad did not declare a required creative attribute. The attribute was
      -- added.
    | RequiredVendorAdded
      -- ^ @REQUIRED_VENDOR_ADDED@
      -- The ad did not declare a required technology vendor. The technology
      -- vendor was added.
    | SSLAttributeAdded
      -- ^ @SSL_ATTRIBUTE_ADDED@
      -- The ad did not declare the SSL attribute but was SSL-compliant, so the
      -- SSL attribute was added.
    | InBannerVideoAttributeAdded
      -- ^ @IN_BANNER_VIDEO_ATTRIBUTE_ADDED@
      -- Properties consistent with In-banner video were found, so an In-Banner
      -- Video attribute was added.
    | MraidAttributeAdded
      -- ^ @MRAID_ATTRIBUTE_ADDED@
      -- The ad makes calls to the MRAID API so the MRAID attribute was added.
    | FlashAttributeRemoved
      -- ^ @FLASH_ATTRIBUTE_REMOVED@
      -- The ad unnecessarily declared the Flash attribute, so the Flash
      -- attribute was removed.
    | VideoInSnippetAttributeAdded
      -- ^ @VIDEO_IN_SNIPPET_ATTRIBUTE_ADDED@
      -- The ad contains video content.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CorrectionType

instance FromHttpApiData CorrectionType where
    parseQueryParam = \case
        "CORRECTION_TYPE_UNSPECIFIED" -> Right CorrectionTypeUnspecified
        "VENDOR_IDS_ADDED" -> Right VendorIdsAdded
        "SSL_ATTRIBUTE_REMOVED" -> Right SSLAttributeRemoved
        "FLASH_FREE_ATTRIBUTE_REMOVED" -> Right FlashFreeAttributeRemoved
        "FLASH_FREE_ATTRIBUTE_ADDED" -> Right FlashFreeAttributeAdded
        "REQUIRED_ATTRIBUTE_ADDED" -> Right RequiredAttributeAdded
        "REQUIRED_VENDOR_ADDED" -> Right RequiredVendorAdded
        "SSL_ATTRIBUTE_ADDED" -> Right SSLAttributeAdded
        "IN_BANNER_VIDEO_ATTRIBUTE_ADDED" -> Right InBannerVideoAttributeAdded
        "MRAID_ATTRIBUTE_ADDED" -> Right MraidAttributeAdded
        "FLASH_ATTRIBUTE_REMOVED" -> Right FlashAttributeRemoved
        "VIDEO_IN_SNIPPET_ATTRIBUTE_ADDED" -> Right VideoInSnippetAttributeAdded
        x -> Left ("Unable to parse CorrectionType from: " <> x)

instance ToHttpApiData CorrectionType where
    toQueryParam = \case
        CorrectionTypeUnspecified -> "CORRECTION_TYPE_UNSPECIFIED"
        VendorIdsAdded -> "VENDOR_IDS_ADDED"
        SSLAttributeRemoved -> "SSL_ATTRIBUTE_REMOVED"
        FlashFreeAttributeRemoved -> "FLASH_FREE_ATTRIBUTE_REMOVED"
        FlashFreeAttributeAdded -> "FLASH_FREE_ATTRIBUTE_ADDED"
        RequiredAttributeAdded -> "REQUIRED_ATTRIBUTE_ADDED"
        RequiredVendorAdded -> "REQUIRED_VENDOR_ADDED"
        SSLAttributeAdded -> "SSL_ATTRIBUTE_ADDED"
        InBannerVideoAttributeAdded -> "IN_BANNER_VIDEO_ATTRIBUTE_ADDED"
        MraidAttributeAdded -> "MRAID_ATTRIBUTE_ADDED"
        FlashAttributeRemoved -> "FLASH_ATTRIBUTE_REMOVED"
        VideoInSnippetAttributeAdded -> "VIDEO_IN_SNIPPET_ATTRIBUTE_ADDED"

instance FromJSON CorrectionType where
    parseJSON = parseJSONText "CorrectionType"

instance ToJSON CorrectionType where
    toJSON = toJSONText
