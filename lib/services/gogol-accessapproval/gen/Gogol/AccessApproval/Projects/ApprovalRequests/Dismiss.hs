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
-- Module      : Gogol.AccessApproval.Projects.ApprovalRequests.Dismiss
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT/FOUND if the request does not exist. Returns FAILED/PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.projects.approvalRequests.dismiss@.
module Gogol.AccessApproval.Projects.ApprovalRequests.Dismiss
    (
    -- * Resource
      AccessApprovalProjectsApprovalRequestsDismissResource

    -- ** Constructing a Request
    , AccessApprovalProjectsApprovalRequestsDismiss (..)
    , newAccessApprovalProjectsApprovalRequestsDismiss
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessApproval.Types

-- | A resource alias for @accessapproval.projects.approvalRequests.dismiss@ method which the
-- 'AccessApprovalProjectsApprovalRequestsDismiss' request conforms to.
type AccessApprovalProjectsApprovalRequestsDismissResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "dismiss" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       DismissApprovalRequestMessage
                       Core.:> Core.Post '[Core.JSON] ApprovalRequest

-- | Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT/FOUND if the request does not exist. Returns FAILED/PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ 'newAccessApprovalProjectsApprovalRequestsDismiss' smart constructor.
data AccessApprovalProjectsApprovalRequestsDismiss = AccessApprovalProjectsApprovalRequestsDismiss
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the ApprovalRequest to dismiss.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DismissApprovalRequestMessage
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalProjectsApprovalRequestsDismiss' with the minimum fields required to make a request.
newAccessApprovalProjectsApprovalRequestsDismiss 
    ::  Core.Text
       -- ^  Name of the ApprovalRequest to dismiss. See 'name'.
    -> DismissApprovalRequestMessage
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessApprovalProjectsApprovalRequestsDismiss
newAccessApprovalProjectsApprovalRequestsDismiss name payload =
  AccessApprovalProjectsApprovalRequestsDismiss
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessApprovalProjectsApprovalRequestsDismiss
         where
        type Rs AccessApprovalProjectsApprovalRequestsDismiss
             = ApprovalRequest
        type Scopes
               AccessApprovalProjectsApprovalRequestsDismiss
             = '[CloudPlatform'FullControl]
        requestClient
          AccessApprovalProjectsApprovalRequestsDismiss{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessApprovalService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessApprovalProjectsApprovalRequestsDismissResource)
                      Core.mempty
