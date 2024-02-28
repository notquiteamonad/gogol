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
-- Module      : Gogol.AlertCenter.UpdateSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the customer-level settings.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.updateSettings@.
module Gogol.AlertCenter.UpdateSettings
    (
    -- * Resource
      AlertCenterUpdateSettingsResource

    -- ** Constructing a Request
    , AlertCenterUpdateSettings (..)
    , newAlertCenterUpdateSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AlertCenter.Types

-- | A resource alias for @alertcenter.updateSettings@ method which the
-- 'AlertCenterUpdateSettings' request conforms to.
type AlertCenterUpdateSettingsResource =
     "v1beta1" Core.:>
       "settings" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "customerId" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Settings Core.:>
                         Core.Patch '[Core.JSON] Settings

-- | Updates the customer-level settings.
--
-- /See:/ 'newAlertCenterUpdateSettings' smart constructor.
data AlertCenterUpdateSettings = AlertCenterUpdateSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The unique identifier of the Google Workspace account of the customer the alert settings are associated with. The @customer_id@ must have the initial \"C\" stripped (for example, @046psxkn@). Inferred from the caller identity if not provided. <https://support.google.com/cloudidentity/answer/10070793 Find your customer ID>.
    , customerId :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Settings
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterUpdateSettings' with the minimum fields required to make a request.
newAlertCenterUpdateSettings 
    ::  Settings
       -- ^  Multipart request metadata. See 'payload'.
    -> AlertCenterUpdateSettings
newAlertCenterUpdateSettings payload =
  AlertCenterUpdateSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AlertCenterUpdateSettings
         where
        type Rs AlertCenterUpdateSettings = Settings
        type Scopes AlertCenterUpdateSettings =
             '[Apps'Alerts]
        requestClient AlertCenterUpdateSettings{..}
          = go xgafv accessToken callback customerId uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              alertCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AlertCenterUpdateSettingsResource)
                      Core.mempty
