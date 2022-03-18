{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DLP.Projects.StoredInfoTypes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.storedInfoTypes.patch@.
module Gogol.DLP.Projects.StoredInfoTypes.Patch
    (
    -- * Resource
      DLPProjectsStoredInfoTypesPatchResource

    -- ** Constructing a Request
    , newDLPProjectsStoredInfoTypesPatch
    , DLPProjectsStoredInfoTypesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.storedInfoTypes.patch@ method which the
-- 'DLPProjectsStoredInfoTypesPatch' request conforms to.
type DLPProjectsStoredInfoTypesPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
                       Core.:>
                       Core.Patch '[Core.JSON]
                         GooglePrivacyDlpV2StoredInfoType

-- | Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ 'newDLPProjectsStoredInfoTypesPatch' smart constructor.
data DLPProjectsStoredInfoTypesPatch = DLPProjectsStoredInfoTypesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of organization and storedInfoType to be updated, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsStoredInfoTypesPatch' with the minimum fields required to make a request.
newDLPProjectsStoredInfoTypesPatch 
    ::  Core.Text
       -- ^  Required. Resource name of organization and storedInfoType to be updated, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342. See 'name'.
    -> GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPProjectsStoredInfoTypesPatch
newDLPProjectsStoredInfoTypesPatch name payload =
  DLPProjectsStoredInfoTypesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsStoredInfoTypesPatch
         where
        type Rs DLPProjectsStoredInfoTypesPatch =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes DLPProjectsStoredInfoTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient DLPProjectsStoredInfoTypesPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DLPProjectsStoredInfoTypesPatchResource)
                      Core.mempty

