{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of advertisers, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersList@.
module Network.Google.Resource.DFAReporting.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListResource

    -- * Creating a Request
    , advertisersList'
    , AdvertisersList'

    -- * Request Lenses
    , allStatus
    , allQuotaUser
    , allPrettyPrint
    , allUserIP
    , allOnlyParent
    , allSearchString
    , allIds
    , allIncludeAdvertisersWithoutGroupsOnly
    , allProFileId
    , allSortOrder
    , allAdvertiserGroupIds
    , allKey
    , allPageToken
    , allSortField
    , allSubAccountId
    , allOAuthToken
    , allFloodlightConfigurationIds
    , allMaxResults
    , allFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersList@ which the
-- 'AdvertisersList'' request conforms to.
type AdvertisersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "status" AdvertisersListStatus :>
             QueryParam "onlyParent" Bool :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "includeAdvertisersWithoutGroupsOnly" Bool
                     :>
                     QueryParam "sortOrder" AdvertisersListSortOrder :>
                       QueryParams "advertiserGroupIds" Int64 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" AdvertisersListSortField :>
                             QueryParam "subaccountId" Int64 :>
                               QueryParams "floodlightConfigurationIds" Int64 :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "quotaUser" Text :>
                                     QueryParam "prettyPrint" Bool :>
                                       QueryParam "userIp" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "key" AuthKey :>
                                             QueryParam "oauth_token" OAuthToken
                                               :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON]
                                                   AdvertisersListResponse

-- | Retrieves a list of advertisers, possibly filtered.
--
-- /See:/ 'advertisersList'' smart constructor.
data AdvertisersList' = AdvertisersList'
    { _allStatus                              :: !(Maybe AdvertisersListStatus)
    , _allQuotaUser                           :: !(Maybe Text)
    , _allPrettyPrint                         :: !Bool
    , _allUserIP                              :: !(Maybe Text)
    , _allOnlyParent                          :: !(Maybe Bool)
    , _allSearchString                        :: !(Maybe Text)
    , _allIds                                 :: !(Maybe [Int64])
    , _allIncludeAdvertisersWithoutGroupsOnly :: !(Maybe Bool)
    , _allProFileId                           :: !Int64
    , _allSortOrder                           :: !(Maybe AdvertisersListSortOrder)
    , _allAdvertiserGroupIds                  :: !(Maybe [Int64])
    , _allKey                                 :: !(Maybe AuthKey)
    , _allPageToken                           :: !(Maybe Text)
    , _allSortField                           :: !(Maybe AdvertisersListSortField)
    , _allSubAccountId                        :: !(Maybe Int64)
    , _allOAuthToken                          :: !(Maybe OAuthToken)
    , _allFloodlightConfigurationIds          :: !(Maybe [Int64])
    , _allMaxResults                          :: !(Maybe Int32)
    , _allFields                              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allStatus'
--
-- * 'allQuotaUser'
--
-- * 'allPrettyPrint'
--
-- * 'allUserIP'
--
-- * 'allOnlyParent'
--
-- * 'allSearchString'
--
-- * 'allIds'
--
-- * 'allIncludeAdvertisersWithoutGroupsOnly'
--
-- * 'allProFileId'
--
-- * 'allSortOrder'
--
-- * 'allAdvertiserGroupIds'
--
-- * 'allKey'
--
-- * 'allPageToken'
--
-- * 'allSortField'
--
-- * 'allSubAccountId'
--
-- * 'allOAuthToken'
--
-- * 'allFloodlightConfigurationIds'
--
-- * 'allMaxResults'
--
-- * 'allFields'
advertisersList'
    :: Int64 -- ^ 'profileId'
    -> AdvertisersList'
advertisersList' pAllProFileId_ =
    AdvertisersList'
    { _allStatus = Nothing
    , _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allUserIP = Nothing
    , _allOnlyParent = Nothing
    , _allSearchString = Nothing
    , _allIds = Nothing
    , _allIncludeAdvertisersWithoutGroupsOnly = Nothing
    , _allProFileId = pAllProFileId_
    , _allSortOrder = Nothing
    , _allAdvertiserGroupIds = Nothing
    , _allKey = Nothing
    , _allPageToken = Nothing
    , _allSortField = Nothing
    , _allSubAccountId = Nothing
    , _allOAuthToken = Nothing
    , _allFloodlightConfigurationIds = Nothing
    , _allMaxResults = Nothing
    , _allFields = Nothing
    }

-- | Select only advertisers with the specified status.
allStatus :: Lens' AdvertisersList' (Maybe AdvertisersListStatus)
allStatus
  = lens _allStatus (\ s a -> s{_allStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AdvertisersList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AdvertisersList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIP :: Lens' AdvertisersList' (Maybe Text)
allUserIP
  = lens _allUserIP (\ s a -> s{_allUserIP = a})

-- | Select only advertisers which use another advertiser\'s floodlight
-- configuration.
allOnlyParent :: Lens' AdvertisersList' (Maybe Bool)
allOnlyParent
  = lens _allOnlyParent
      (\ s a -> s{_allOnlyParent = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser June 2015\", \"advertiser April 2015\", or simply
-- \"advertiser 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"advertiser\" will match objects with name \"my advertiser\",
-- \"advertiser 2015\", or simply \"advertiser\".
allSearchString :: Lens' AdvertisersList' (Maybe Text)
allSearchString
  = lens _allSearchString
      (\ s a -> s{_allSearchString = a})

-- | Select only advertisers with these IDs.
allIds :: Lens' AdvertisersList' [Int64]
allIds
  = lens _allIds (\ s a -> s{_allIds = a}) . _Default .
      _Coerce

-- | Select only advertisers which do not belong to any advertiser group.
allIncludeAdvertisersWithoutGroupsOnly :: Lens' AdvertisersList' (Maybe Bool)
allIncludeAdvertisersWithoutGroupsOnly
  = lens _allIncludeAdvertisersWithoutGroupsOnly
      (\ s a ->
         s{_allIncludeAdvertisersWithoutGroupsOnly = a})

-- | User profile ID associated with this request.
allProFileId :: Lens' AdvertisersList' Int64
allProFileId
  = lens _allProFileId (\ s a -> s{_allProFileId = a})

-- | Order of sorted results, default is ASCENDING.
allSortOrder :: Lens' AdvertisersList' (Maybe AdvertisersListSortOrder)
allSortOrder
  = lens _allSortOrder (\ s a -> s{_allSortOrder = a})

-- | Select only advertisers with these advertiser group IDs.
allAdvertiserGroupIds :: Lens' AdvertisersList' [Int64]
allAdvertiserGroupIds
  = lens _allAdvertiserGroupIds
      (\ s a -> s{_allAdvertiserGroupIds = a})
      . _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AdvertisersList' (Maybe AuthKey)
allKey = lens _allKey (\ s a -> s{_allKey = a})

-- | Value of the nextPageToken from the previous result page.
allPageToken :: Lens' AdvertisersList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | Field by which to sort the list.
allSortField :: Lens' AdvertisersList' (Maybe AdvertisersListSortField)
allSortField
  = lens _allSortField (\ s a -> s{_allSortField = a})

-- | Select only advertisers with these subaccount IDs.
allSubAccountId :: Lens' AdvertisersList' (Maybe Int64)
allSubAccountId
  = lens _allSubAccountId
      (\ s a -> s{_allSubAccountId = a})

-- | OAuth 2.0 token for the current user.
allOAuthToken :: Lens' AdvertisersList' (Maybe OAuthToken)
allOAuthToken
  = lens _allOAuthToken
      (\ s a -> s{_allOAuthToken = a})

-- | Select only advertisers with these floodlight configuration IDs.
allFloodlightConfigurationIds :: Lens' AdvertisersList' [Int64]
allFloodlightConfigurationIds
  = lens _allFloodlightConfigurationIds
      (\ s a -> s{_allFloodlightConfigurationIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
allMaxResults :: Lens' AdvertisersList' (Maybe Int32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AdvertisersList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

instance GoogleAuth AdvertisersList' where
        authKey = allKey . _Just
        authToken = allOAuthToken . _Just

instance GoogleRequest AdvertisersList' where
        type Rs AdvertisersList' = AdvertisersListResponse
        request = requestWith dFAReportingRequest
        requestWith rq AdvertisersList'{..}
          = go _allProFileId _allStatus _allOnlyParent
              _allSearchString
              (_allIds ^. _Default)
              _allIncludeAdvertisersWithoutGroupsOnly
              _allSortOrder
              (_allAdvertiserGroupIds ^. _Default)
              _allPageToken
              _allSortField
              _allSubAccountId
              (_allFloodlightConfigurationIds ^. _Default)
              _allMaxResults
              _allQuotaUser
              (Just _allPrettyPrint)
              _allUserIP
              _allFields
              _allKey
              _allOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AdvertisersListResource)
                      rq
