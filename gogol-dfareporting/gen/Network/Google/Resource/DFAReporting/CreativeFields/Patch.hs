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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsPatch@.
module Network.Google.Resource.DFAReporting.CreativeFields.Patch
    (
    -- * REST Resource
      CreativeFieldsPatchResource

    -- * Creating a Request
    , creativeFieldsPatch'
    , CreativeFieldsPatch'

    -- * Request Lenses
    , cfpQuotaUser
    , cfpPrettyPrint
    , cfpUserIP
    , cfpProFileId
    , cfpPayload
    , cfpKey
    , cfpId
    , cfpOAuthToken
    , cfpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsPatch@ which the
-- 'CreativeFieldsPatch'' request conforms to.
type CreativeFieldsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] CreativeField :>
                             Patch '[JSON] CreativeField

-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ 'creativeFieldsPatch'' smart constructor.
data CreativeFieldsPatch' = CreativeFieldsPatch'
    { _cfpQuotaUser   :: !(Maybe Text)
    , _cfpPrettyPrint :: !Bool
    , _cfpUserIP      :: !(Maybe Text)
    , _cfpProFileId   :: !Int64
    , _cfpPayload     :: !CreativeField
    , _cfpKey         :: !(Maybe Key)
    , _cfpId          :: !Int64
    , _cfpOAuthToken  :: !(Maybe OAuthToken)
    , _cfpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfpQuotaUser'
--
-- * 'cfpPrettyPrint'
--
-- * 'cfpUserIP'
--
-- * 'cfpProFileId'
--
-- * 'cfpPayload'
--
-- * 'cfpKey'
--
-- * 'cfpId'
--
-- * 'cfpOAuthToken'
--
-- * 'cfpFields'
creativeFieldsPatch'
    :: Int64 -- ^ 'profileId'
    -> CreativeField -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> CreativeFieldsPatch'
creativeFieldsPatch' pCfpProFileId_ pCfpPayload_ pCfpId_ =
    CreativeFieldsPatch'
    { _cfpQuotaUser = Nothing
    , _cfpPrettyPrint = True
    , _cfpUserIP = Nothing
    , _cfpProFileId = pCfpProFileId_
    , _cfpPayload = pCfpPayload_
    , _cfpKey = Nothing
    , _cfpId = pCfpId_
    , _cfpOAuthToken = Nothing
    , _cfpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfpQuotaUser :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpQuotaUser
  = lens _cfpQuotaUser (\ s a -> s{_cfpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfpPrettyPrint :: Lens' CreativeFieldsPatch' Bool
cfpPrettyPrint
  = lens _cfpPrettyPrint
      (\ s a -> s{_cfpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfpUserIP :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpUserIP
  = lens _cfpUserIP (\ s a -> s{_cfpUserIP = a})

-- | User profile ID associated with this request.
cfpProFileId :: Lens' CreativeFieldsPatch' Int64
cfpProFileId
  = lens _cfpProFileId (\ s a -> s{_cfpProFileId = a})

-- | Multipart request metadata.
cfpPayload :: Lens' CreativeFieldsPatch' CreativeField
cfpPayload
  = lens _cfpPayload (\ s a -> s{_cfpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfpKey :: Lens' CreativeFieldsPatch' (Maybe Key)
cfpKey = lens _cfpKey (\ s a -> s{_cfpKey = a})

-- | Creative Field ID
cfpId :: Lens' CreativeFieldsPatch' Int64
cfpId = lens _cfpId (\ s a -> s{_cfpId = a})

-- | OAuth 2.0 token for the current user.
cfpOAuthToken :: Lens' CreativeFieldsPatch' (Maybe OAuthToken)
cfpOAuthToken
  = lens _cfpOAuthToken
      (\ s a -> s{_cfpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfpFields :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpFields
  = lens _cfpFields (\ s a -> s{_cfpFields = a})

instance GoogleAuth CreativeFieldsPatch' where
        authKey = cfpKey . _Just
        authToken = cfpOAuthToken . _Just

instance GoogleRequest CreativeFieldsPatch' where
        type Rs CreativeFieldsPatch' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsPatch'{..}
          = go _cfpProFileId (Just _cfpId) _cfpQuotaUser
              (Just _cfpPrettyPrint)
              _cfpUserIP
              _cfpFields
              _cfpKey
              _cfpOAuthToken
              (Just AltJSON)
              _cfpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsPatchResource)
                      r
                      u