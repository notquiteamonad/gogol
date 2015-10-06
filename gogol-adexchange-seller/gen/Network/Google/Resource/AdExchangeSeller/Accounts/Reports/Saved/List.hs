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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all saved reports in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsReportsSavedList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
    (
    -- * REST Resource
      AccountsReportsSavedListResource

    -- * Creating a Request
    , accountsReportsSavedList'
    , AccountsReportsSavedList'

    -- * Request Lenses
    , arslQuotaUser
    , arslPrettyPrint
    , arslUserIP
    , arslAccountId
    , arslKey
    , arslPageToken
    , arslOAuthToken
    , arslMaxResults
    , arslFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsReportsSavedList@ which the
-- 'AccountsReportsSavedList'' request conforms to.
type AccountsReportsSavedListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "reports" :>
           "saved" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SavedReports

-- | List all saved reports in this Ad Exchange account.
--
-- /See:/ 'accountsReportsSavedList'' smart constructor.
data AccountsReportsSavedList' = AccountsReportsSavedList'
    { _arslQuotaUser   :: !(Maybe Text)
    , _arslPrettyPrint :: !Bool
    , _arslUserIP      :: !(Maybe Text)
    , _arslAccountId   :: !Text
    , _arslKey         :: !(Maybe AuthKey)
    , _arslPageToken   :: !(Maybe Text)
    , _arslOAuthToken  :: !(Maybe OAuthToken)
    , _arslMaxResults  :: !(Maybe Int32)
    , _arslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsSavedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arslQuotaUser'
--
-- * 'arslPrettyPrint'
--
-- * 'arslUserIP'
--
-- * 'arslAccountId'
--
-- * 'arslKey'
--
-- * 'arslPageToken'
--
-- * 'arslOAuthToken'
--
-- * 'arslMaxResults'
--
-- * 'arslFields'
accountsReportsSavedList'
    :: Text -- ^ 'accountId'
    -> AccountsReportsSavedList'
accountsReportsSavedList' pArslAccountId_ =
    AccountsReportsSavedList'
    { _arslQuotaUser = Nothing
    , _arslPrettyPrint = True
    , _arslUserIP = Nothing
    , _arslAccountId = pArslAccountId_
    , _arslKey = Nothing
    , _arslPageToken = Nothing
    , _arslOAuthToken = Nothing
    , _arslMaxResults = Nothing
    , _arslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arslQuotaUser :: Lens' AccountsReportsSavedList' (Maybe Text)
arslQuotaUser
  = lens _arslQuotaUser
      (\ s a -> s{_arslQuotaUser = a})

-- | Returns response with indentations and line breaks.
arslPrettyPrint :: Lens' AccountsReportsSavedList' Bool
arslPrettyPrint
  = lens _arslPrettyPrint
      (\ s a -> s{_arslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arslUserIP :: Lens' AccountsReportsSavedList' (Maybe Text)
arslUserIP
  = lens _arslUserIP (\ s a -> s{_arslUserIP = a})

-- | Account owning the saved reports.
arslAccountId :: Lens' AccountsReportsSavedList' Text
arslAccountId
  = lens _arslAccountId
      (\ s a -> s{_arslAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arslKey :: Lens' AccountsReportsSavedList' (Maybe AuthKey)
arslKey = lens _arslKey (\ s a -> s{_arslKey = a})

-- | A continuation token, used to page through saved reports. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
arslPageToken :: Lens' AccountsReportsSavedList' (Maybe Text)
arslPageToken
  = lens _arslPageToken
      (\ s a -> s{_arslPageToken = a})

-- | OAuth 2.0 token for the current user.
arslOAuthToken :: Lens' AccountsReportsSavedList' (Maybe OAuthToken)
arslOAuthToken
  = lens _arslOAuthToken
      (\ s a -> s{_arslOAuthToken = a})

-- | The maximum number of saved reports to include in the response, used for
-- paging.
arslMaxResults :: Lens' AccountsReportsSavedList' (Maybe Int32)
arslMaxResults
  = lens _arslMaxResults
      (\ s a -> s{_arslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
arslFields :: Lens' AccountsReportsSavedList' (Maybe Text)
arslFields
  = lens _arslFields (\ s a -> s{_arslFields = a})

instance GoogleAuth AccountsReportsSavedList' where
        authKey = arslKey . _Just
        authToken = arslOAuthToken . _Just

instance GoogleRequest AccountsReportsSavedList'
         where
        type Rs AccountsReportsSavedList' = SavedReports
        request = requestWith adExchangeSellerRequest
        requestWith rq AccountsReportsSavedList'{..}
          = go _arslAccountId _arslPageToken _arslMaxResults
              _arslQuotaUser
              (Just _arslPrettyPrint)
              _arslUserIP
              _arslFields
              _arslKey
              _arslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsReportsSavedListResource)
                      rq
