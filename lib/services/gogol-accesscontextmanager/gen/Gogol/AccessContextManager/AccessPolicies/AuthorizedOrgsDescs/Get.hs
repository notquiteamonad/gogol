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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an authorized orgs desc based on the resource name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.get@.
module Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Get
    (
    -- * Resource
      AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGetResource

    -- ** Constructing a Request
    , AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet (..)
    , newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.get@ method which the
-- 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet' request conforms to.
type AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AuthorizedOrgsDesc

-- | Gets an authorized orgs desc based on the resource name.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet' smart constructor.
data AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet = AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the Authorized Orgs Desc. Format: @accessPolicies\/{policy_id}\/authorizedOrgsDescs\/{authorized_orgs_descs_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet 
    ::  Core.Text
       -- ^  Required. Resource name for the Authorized Orgs Desc. Format: @accessPolicies\/{policy_id}\/authorizedOrgsDescs\/{authorized_orgs_descs_id}@ See 'name'.
    -> AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet name =
  AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
         where
        type Rs
               AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
             = AuthorizedOrgsDesc
        type Scopes
               AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet
             = '[CloudPlatform'FullControl]
        requestClient
          AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGetResource)
                      Core.mempty
