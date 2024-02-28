{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAMCredentials.Projects.ServiceAccounts.SignJwt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a JWT using a service account\'s system-managed private key.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.signJwt@.
module Gogol.IAMCredentials.Projects.ServiceAccounts.SignJwt
    (
    -- * Resource
      IAMCredentialsProjectsServiceAccountsSignJwtResource

    -- ** Constructing a Request
    , IAMCredentialsProjectsServiceAccountsSignJwt (..)
    , newIAMCredentialsProjectsServiceAccountsSignJwt
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAMCredentials.Types

-- | A resource alias for @iamcredentials.projects.serviceAccounts.signJwt@ method which the
-- 'IAMCredentialsProjectsServiceAccountsSignJwt' request conforms to.
type IAMCredentialsProjectsServiceAccountsSignJwtResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "signJwt" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SignJwtRequest Core.:>
                       Core.Post '[Core.JSON] SignJwtResponse

-- | Signs a JWT using a service account\'s system-managed private key.
--
-- /See:/ 'newIAMCredentialsProjectsServiceAccountsSignJwt' smart constructor.
data IAMCredentialsProjectsServiceAccountsSignJwt = IAMCredentialsProjectsServiceAccountsSignJwt
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the service account for which the credentials are requested, in the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SignJwtRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMCredentialsProjectsServiceAccountsSignJwt' with the minimum fields required to make a request.
newIAMCredentialsProjectsServiceAccountsSignJwt 
    ::  Core.Text
       -- ^  Required. The resource name of the service account for which the credentials are requested, in the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid. See 'name'.
    -> SignJwtRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMCredentialsProjectsServiceAccountsSignJwt
newIAMCredentialsProjectsServiceAccountsSignJwt name payload =
  IAMCredentialsProjectsServiceAccountsSignJwt
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           IAMCredentialsProjectsServiceAccountsSignJwt
         where
        type Rs IAMCredentialsProjectsServiceAccountsSignJwt
             = SignJwtResponse
        type Scopes
               IAMCredentialsProjectsServiceAccountsSignJwt
             = '[CloudPlatform'FullControl]
        requestClient
          IAMCredentialsProjectsServiceAccountsSignJwt{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              iAMCredentialsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMCredentialsProjectsServiceAccountsSignJwtResource)
                      Core.mempty
