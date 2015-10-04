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
-- Module      : Network.Google.Resource.Storage.Buckets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsInsert@.
module Network.Google.Resource.Storage.Buckets.Insert
    (
    -- * REST Resource
      BucketsInsertResource

    -- * Creating a Request
    , bucketsInsert'
    , BucketsInsert'

    -- * Request Lenses
    , biQuotaUser
    , biPrettyPrint
    , biProject
    , biUserIP
    , biPayload
    , biKey
    , biProjection
    , biOAuthToken
    , biFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsInsert@ which the
-- 'BucketsInsert'' request conforms to.
type BucketsInsertResource =
     "b" :>
       QueryParam "project" Text :>
         QueryParam "projection" BucketsInsertProjection :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[OctetStream] Bucket :> Post '[JSON] Bucket

-- | Creates a new bucket.
--
-- /See:/ 'bucketsInsert'' smart constructor.
data BucketsInsert' = BucketsInsert'
    { _biQuotaUser   :: !(Maybe Text)
    , _biPrettyPrint :: !Bool
    , _biProject     :: !Text
    , _biUserIP      :: !(Maybe Text)
    , _biPayload     :: !Bucket
    , _biKey         :: !(Maybe Key)
    , _biProjection  :: !(Maybe BucketsInsertProjection)
    , _biOAuthToken  :: !(Maybe OAuthToken)
    , _biFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biQuotaUser'
--
-- * 'biPrettyPrint'
--
-- * 'biProject'
--
-- * 'biUserIP'
--
-- * 'biPayload'
--
-- * 'biKey'
--
-- * 'biProjection'
--
-- * 'biOAuthToken'
--
-- * 'biFields'
bucketsInsert'
    :: Text -- ^ 'project'
    -> Bucket -- ^ 'payload'
    -> BucketsInsert'
bucketsInsert' pBiProject_ pBiPayload_ =
    BucketsInsert'
    { _biQuotaUser = Nothing
    , _biPrettyPrint = True
    , _biProject = pBiProject_
    , _biUserIP = Nothing
    , _biPayload = pBiPayload_
    , _biKey = Nothing
    , _biProjection = Nothing
    , _biOAuthToken = Nothing
    , _biFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
biQuotaUser :: Lens' BucketsInsert' (Maybe Text)
biQuotaUser
  = lens _biQuotaUser (\ s a -> s{_biQuotaUser = a})

-- | Returns response with indentations and line breaks.
biPrettyPrint :: Lens' BucketsInsert' Bool
biPrettyPrint
  = lens _biPrettyPrint
      (\ s a -> s{_biPrettyPrint = a})

-- | A valid API project identifier.
biProject :: Lens' BucketsInsert' Text
biProject
  = lens _biProject (\ s a -> s{_biProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
biUserIP :: Lens' BucketsInsert' (Maybe Text)
biUserIP = lens _biUserIP (\ s a -> s{_biUserIP = a})

-- | Multipart request metadata.
biPayload :: Lens' BucketsInsert' Bucket
biPayload
  = lens _biPayload (\ s a -> s{_biPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
biKey :: Lens' BucketsInsert' (Maybe Key)
biKey = lens _biKey (\ s a -> s{_biKey = a})

-- | Set of properties to return. Defaults to noAcl, unless the bucket
-- resource specifies acl or defaultObjectAcl properties, when it defaults
-- to full.
biProjection :: Lens' BucketsInsert' (Maybe BucketsInsertProjection)
biProjection
  = lens _biProjection (\ s a -> s{_biProjection = a})

-- | OAuth 2.0 token for the current user.
biOAuthToken :: Lens' BucketsInsert' (Maybe OAuthToken)
biOAuthToken
  = lens _biOAuthToken (\ s a -> s{_biOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
biFields :: Lens' BucketsInsert' (Maybe Text)
biFields = lens _biFields (\ s a -> s{_biFields = a})

instance GoogleAuth BucketsInsert' where
        authKey = biKey . _Just
        authToken = biOAuthToken . _Just

instance GoogleRequest BucketsInsert' where
        type Rs BucketsInsert' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsInsert'{..}
          = go (Just _biProject) _biProjection _biQuotaUser
              (Just _biPrettyPrint)
              _biUserIP
              _biFields
              _biKey
              _biOAuthToken
              (Just AltJSON)
              _biPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketsInsertResource)
                      r
                      u