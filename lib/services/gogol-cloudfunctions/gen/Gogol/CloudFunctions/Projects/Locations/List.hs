{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudFunctions.Projects.Locations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.list@.
module Gogol.CloudFunctions.Projects.Locations.List
  ( -- * Resource
    CloudFunctionsProjectsLocationsListResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsList (..),
    newCloudFunctionsProjectsLocationsList,
  )
where

import Gogol.CloudFunctions.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudfunctions.projects.locations.list@ method which the
-- 'CloudFunctionsProjectsLocationsList' request conforms to.
type CloudFunctionsProjectsLocationsListResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "locations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsList' smart constructor.
data CloudFunctionsProjectsLocationsList = CloudFunctionsProjectsLocationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter to narrow down results to a preferred subset. The filtering language accepts strings like @\"displayName=tokyo\"@, and is documented in more detail in <https://google.aip.dev/160 AIP-160>.
    filter :: (Core.Maybe Core.Text),
    -- | The resource that owns the locations collection, if applicable.
    name :: Core.Text,
    -- | The maximum number of results to return. If not set, the service selects a default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token received from the @next_page_token@ field in the response. Send that page token to receive the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsList' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsList ::
  -- |  The resource that owns the locations collection, if applicable. See 'name'.
  Core.Text ->
  CloudFunctionsProjectsLocationsList
newCloudFunctionsProjectsLocationsList name =
  CloudFunctionsProjectsLocationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsList
  where
  type
    Rs CloudFunctionsProjectsLocationsList =
      ListLocationsResponse
  type
    Scopes CloudFunctionsProjectsLocationsList =
      '[CloudPlatform'FullControl]
  requestClient CloudFunctionsProjectsLocationsList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudFunctionsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudFunctionsProjectsLocationsListResource
          )
          Core.mempty
