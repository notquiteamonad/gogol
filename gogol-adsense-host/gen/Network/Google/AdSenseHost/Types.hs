{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSenseHost.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSenseHost.Types
    (
    -- * Service URL
      adSenseHostURL

    -- * AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- * AssociationSession
    , AssociationSession
    , associationSession
    , asStatus
    , asKind
    , asWebsiteLocale
    , asUserLocale
    , asAccountId
    , asProductCodes
    , asId
    , asWebsiteURL
    , asRedirectURL

    -- * AssociationSessionsStartProductCode
    , AssociationSessionsStartProductCode (..)

    -- * Accounts
    , Accounts
    , accounts
    , aEtag
    , aKind
    , aItems

    -- * AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

    -- * URLChannels
    , URLChannels
    , urlChannels
    , ucEtag
    , ucNextPageToken
    , ucKind
    , ucItems

    -- * CustomChannels
    , CustomChannels
    , customChannels
    , ccEtag
    , ccNextPageToken
    , ccKind
    , ccItems

    -- * AdUnit
    , AdUnit
    , adUnit
    , auuStatus
    , auuMobileContentAdsSettings
    , auuKind
    , auuCustomStyle
    , auuName
    , auuContentAdsSettings
    , auuCode
    , auuId

    -- * Report
    , Report
    , report
    , rKind
    , rAverages
    , rWarnings
    , rRows
    , rTotals
    , rHeaders
    , rTotalMatchedRows

    -- * AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- * Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId

    -- * AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- * AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascURL
    , ascBOrder
    , ascTitle
    , ascBackgRound

    -- * AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboURL
    , aucasboType

    -- * AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode

    -- * ReportHeadersItem
    , ReportHeadersItem
    , reportHeadersItem
    , rhiName
    , rhiCurrency
    , rhiType

    -- * AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

    -- * CustomChannel
    , CustomChannel
    , customChannel
    , cKind
    , cName
    , cCode
    , cId

    -- * URLChannel
    , URLChannel
    , urlChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- * AdCode
    , AdCode
    , adCode
    , aaKind
    , aaAdCode

    -- * AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType
    ) where

import           Network.Google.AdSenseHost.Types.Product
import           Network.Google.AdSenseHost.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v4.1' of the AdSense Host API.
adSenseHostURL :: BaseUrl
adSenseHostURL
  = BaseUrl Https
      "https://www.googleapis.com/adsensehost/v4.1/"
      443