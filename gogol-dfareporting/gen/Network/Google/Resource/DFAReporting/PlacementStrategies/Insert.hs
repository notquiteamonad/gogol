{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesInsert@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
    (
    -- * REST Resource
      PlacementStrategiesInsertResource

    -- * Creating a Request
    , placementStrategiesInsert'
    , PlacementStrategiesInsert'

    -- * Request Lenses
    , psiQuotaUser
    , psiPrettyPrint
    , psiUserIP
    , psiProFileId
    , psiPayload
    , psiKey
    , psiOAuthToken
    , psiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesInsert@ which the
-- 'PlacementStrategiesInsert'' request conforms to.
type PlacementStrategiesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[OctetStream] PlacementStrategy :>
                           Post '[JSON] PlacementStrategy

-- | Inserts a new placement strategy.
--
-- /See:/ 'placementStrategiesInsert'' smart constructor.
data PlacementStrategiesInsert' = PlacementStrategiesInsert'
    { _psiQuotaUser   :: !(Maybe Text)
    , _psiPrettyPrint :: !Bool
    , _psiUserIP      :: !(Maybe Text)
    , _psiProFileId   :: !Int64
    , _psiPayload     :: !PlacementStrategy
    , _psiKey         :: !(Maybe Key)
    , _psiOAuthToken  :: !(Maybe OAuthToken)
    , _psiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiQuotaUser'
--
-- * 'psiPrettyPrint'
--
-- * 'psiUserIP'
--
-- * 'psiProFileId'
--
-- * 'psiPayload'
--
-- * 'psiKey'
--
-- * 'psiOAuthToken'
--
-- * 'psiFields'
placementStrategiesInsert'
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategy -- ^ 'payload'
    -> PlacementStrategiesInsert'
placementStrategiesInsert' pPsiProFileId_ pPsiPayload_ =
    PlacementStrategiesInsert'
    { _psiQuotaUser = Nothing
    , _psiPrettyPrint = True
    , _psiUserIP = Nothing
    , _psiProFileId = pPsiProFileId_
    , _psiPayload = pPsiPayload_
    , _psiKey = Nothing
    , _psiOAuthToken = Nothing
    , _psiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psiQuotaUser :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiQuotaUser
  = lens _psiQuotaUser (\ s a -> s{_psiQuotaUser = a})

-- | Returns response with indentations and line breaks.
psiPrettyPrint :: Lens' PlacementStrategiesInsert' Bool
psiPrettyPrint
  = lens _psiPrettyPrint
      (\ s a -> s{_psiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psiUserIP :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiUserIP
  = lens _psiUserIP (\ s a -> s{_psiUserIP = a})

-- | User profile ID associated with this request.
psiProFileId :: Lens' PlacementStrategiesInsert' Int64
psiProFileId
  = lens _psiProFileId (\ s a -> s{_psiProFileId = a})

-- | Multipart request metadata.
psiPayload :: Lens' PlacementStrategiesInsert' PlacementStrategy
psiPayload
  = lens _psiPayload (\ s a -> s{_psiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psiKey :: Lens' PlacementStrategiesInsert' (Maybe Key)
psiKey = lens _psiKey (\ s a -> s{_psiKey = a})

-- | OAuth 2.0 token for the current user.
psiOAuthToken :: Lens' PlacementStrategiesInsert' (Maybe OAuthToken)
psiOAuthToken
  = lens _psiOAuthToken
      (\ s a -> s{_psiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psiFields :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiFields
  = lens _psiFields (\ s a -> s{_psiFields = a})

instance GoogleAuth PlacementStrategiesInsert' where
        authKey = psiKey . _Just
        authToken = psiOAuthToken . _Just

instance GoogleRequest PlacementStrategiesInsert'
         where
        type Rs PlacementStrategiesInsert' =
             PlacementStrategy
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesInsert'{..}
          = go _psiProFileId _psiQuotaUser
              (Just _psiPrettyPrint)
              _psiUserIP
              _psiFields
              _psiKey
              _psiOAuthToken
              (Just AltJSON)
              _psiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesInsertResource)
                      r
                      u