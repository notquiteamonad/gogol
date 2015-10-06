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
-- Module      : Network.Google.Resource.Genomics.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a dataset. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsPatch@.
module Network.Google.Resource.Genomics.Datasets.Patch
    (
    -- * REST Resource
      DatasetsPatchResource

    -- * Creating a Request
    , datasetsPatch'
    , DatasetsPatch'

    -- * Request Lenses
    , dpQuotaUser
    , dpPrettyPrint
    , dpUserIP
    , dpPayload
    , dpKey
    , dpDatasetId
    , dpOAuthToken
    , dpFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsPatch@ which the
-- 'DatasetsPatch'' request conforms to.
type DatasetsPatchResource =
     "datasets" :>
       Capture "datasetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Dataset :> Patch '[JSON] Dataset

-- | Updates a dataset. This method supports patch semantics.
--
-- /See:/ 'datasetsPatch'' smart constructor.
data DatasetsPatch' = DatasetsPatch'
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpPrettyPrint :: !Bool
    , _dpUserIP      :: !(Maybe Text)
    , _dpPayload     :: !Dataset
    , _dpKey         :: !(Maybe AuthKey)
    , _dpDatasetId   :: !Text
    , _dpOAuthToken  :: !(Maybe OAuthToken)
    , _dpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpUserIP'
--
-- * 'dpPayload'
--
-- * 'dpKey'
--
-- * 'dpDatasetId'
--
-- * 'dpOAuthToken'
--
-- * 'dpFields'
datasetsPatch'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsPatch'
datasetsPatch' pDpPayload_ pDpDatasetId_ =
    DatasetsPatch'
    { _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpUserIP = Nothing
    , _dpPayload = pDpPayload_
    , _dpKey = Nothing
    , _dpDatasetId = pDpDatasetId_
    , _dpOAuthToken = Nothing
    , _dpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatasetsPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatasetsPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIP :: Lens' DatasetsPatch' (Maybe Text)
dpUserIP = lens _dpUserIP (\ s a -> s{_dpUserIP = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatasetsPatch' Dataset
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatasetsPatch' (Maybe AuthKey)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | The ID of the dataset to be updated.
dpDatasetId :: Lens' DatasetsPatch' Text
dpDatasetId
  = lens _dpDatasetId (\ s a -> s{_dpDatasetId = a})

-- | OAuth 2.0 token for the current user.
dpOAuthToken :: Lens' DatasetsPatch' (Maybe OAuthToken)
dpOAuthToken
  = lens _dpOAuthToken (\ s a -> s{_dpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatasetsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

instance GoogleAuth DatasetsPatch' where
        authKey = dpKey . _Just
        authToken = dpOAuthToken . _Just

instance GoogleRequest DatasetsPatch' where
        type Rs DatasetsPatch' = Dataset
        request = requestWith genomicsRequest
        requestWith rq DatasetsPatch'{..}
          = go _dpDatasetId _dpQuotaUser (Just _dpPrettyPrint)
              _dpUserIP
              _dpFields
              _dpKey
              _dpOAuthToken
              (Just AltJSON)
              _dpPayload
          where go
                  = clientBuild (Proxy :: Proxy DatasetsPatchResource)
                      rq
