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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a ServiceAccount. Currently, only the following fields are
-- updatable: \`display_name\` and \`description\`. Only fields specified
-- in the request are guaranteed to be returned in the response. Other
-- fields in the response may be empty. Note: The field mask is required.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.patch@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Patch
    (
    -- * REST Resource
      ProjectsServiceAccountsPatchResource

    -- * Creating a Request
    , projectsServiceAccountsPatch
    , ProjectsServiceAccountsPatch

    -- * Request Lenses
    , psapXgafv
    , psapUploadProtocol
    , psapAccessToken
    , psapUploadType
    , psapPayload
    , psapName
    , psapCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.patch@ method which the
-- 'ProjectsServiceAccountsPatch' request conforms to.
type ProjectsServiceAccountsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PatchServiceAccountRequest :>
                       Patch '[JSON] ServiceAccount

-- | Patches a ServiceAccount. Currently, only the following fields are
-- updatable: \`display_name\` and \`description\`. Only fields specified
-- in the request are guaranteed to be returned in the response. Other
-- fields in the response may be empty. Note: The field mask is required.
--
-- /See:/ 'projectsServiceAccountsPatch' smart constructor.
data ProjectsServiceAccountsPatch =
  ProjectsServiceAccountsPatch'
    { _psapXgafv :: !(Maybe Xgafv)
    , _psapUploadProtocol :: !(Maybe Text)
    , _psapAccessToken :: !(Maybe Text)
    , _psapUploadType :: !(Maybe Text)
    , _psapPayload :: !PatchServiceAccountRequest
    , _psapName :: !Text
    , _psapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psapXgafv'
--
-- * 'psapUploadProtocol'
--
-- * 'psapAccessToken'
--
-- * 'psapUploadType'
--
-- * 'psapPayload'
--
-- * 'psapName'
--
-- * 'psapCallback'
projectsServiceAccountsPatch
    :: PatchServiceAccountRequest -- ^ 'psapPayload'
    -> Text -- ^ 'psapName'
    -> ProjectsServiceAccountsPatch
projectsServiceAccountsPatch pPsapPayload_ pPsapName_ =
  ProjectsServiceAccountsPatch'
    { _psapXgafv = Nothing
    , _psapUploadProtocol = Nothing
    , _psapAccessToken = Nothing
    , _psapUploadType = Nothing
    , _psapPayload = pPsapPayload_
    , _psapName = pPsapName_
    , _psapCallback = Nothing
    }


-- | V1 error format.
psapXgafv :: Lens' ProjectsServiceAccountsPatch (Maybe Xgafv)
psapXgafv
  = lens _psapXgafv (\ s a -> s{_psapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psapUploadProtocol :: Lens' ProjectsServiceAccountsPatch (Maybe Text)
psapUploadProtocol
  = lens _psapUploadProtocol
      (\ s a -> s{_psapUploadProtocol = a})

-- | OAuth access token.
psapAccessToken :: Lens' ProjectsServiceAccountsPatch (Maybe Text)
psapAccessToken
  = lens _psapAccessToken
      (\ s a -> s{_psapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psapUploadType :: Lens' ProjectsServiceAccountsPatch (Maybe Text)
psapUploadType
  = lens _psapUploadType
      (\ s a -> s{_psapUploadType = a})

-- | Multipart request metadata.
psapPayload :: Lens' ProjectsServiceAccountsPatch PatchServiceAccountRequest
psapPayload
  = lens _psapPayload (\ s a -> s{_psapPayload = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Requests using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the \`account\` and the \`ACCOUNT\` value can be the \`email\` address
-- or the \`unique_id\` of the service account. In responses the resource
-- name will always be in the format
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`.
psapName :: Lens' ProjectsServiceAccountsPatch Text
psapName = lens _psapName (\ s a -> s{_psapName = a})

-- | JSONP
psapCallback :: Lens' ProjectsServiceAccountsPatch (Maybe Text)
psapCallback
  = lens _psapCallback (\ s a -> s{_psapCallback = a})

instance GoogleRequest ProjectsServiceAccountsPatch
         where
        type Rs ProjectsServiceAccountsPatch = ServiceAccount
        type Scopes ProjectsServiceAccountsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsPatch'{..}
          = go _psapName _psapXgafv _psapUploadProtocol
              _psapAccessToken
              _psapUploadType
              _psapCallback
              (Just AltJSON)
              _psapPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServiceAccountsPatchResource)
                      mempty
