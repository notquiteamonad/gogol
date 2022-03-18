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
-- Module      : Gogol.People.UpdateContactPhoto
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a contact\'s photo. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.updateContactPhoto@.
module Gogol.People.UpdateContactPhoto
    (
    -- * Resource
      PeoplePeopleUpdateContactPhotoResource

    -- ** Constructing a Request
    , newPeoplePeopleUpdateContactPhoto
    , PeoplePeopleUpdateContactPhoto
    ) where

import qualified Gogol.Prelude as Core
import Gogol.People.Types

-- | A resource alias for @people.people.updateContactPhoto@ method which the
-- 'PeoplePeopleUpdateContactPhoto' request conforms to.
type PeoplePeopleUpdateContactPhotoResource =
     "v1" Core.:>
       Core.CaptureMode "resourceName" "updateContactPhoto"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] UpdateContactPhotoRequest
                       Core.:>
                       Core.Patch '[Core.JSON] UpdateContactPhotoResponse

-- | Update a contact\'s photo. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeoplePeopleUpdateContactPhoto' smart constructor.
data PeoplePeopleUpdateContactPhoto = PeoplePeopleUpdateContactPhoto
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: UpdateContactPhotoRequest
      -- | Required. Person resource name
    , resourceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleUpdateContactPhoto' with the minimum fields required to make a request.
newPeoplePeopleUpdateContactPhoto 
    ::  UpdateContactPhotoRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. Person resource name See 'resourceName'.
    -> PeoplePeopleUpdateContactPhoto
newPeoplePeopleUpdateContactPhoto payload resourceName =
  PeoplePeopleUpdateContactPhoto
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resourceName = resourceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           PeoplePeopleUpdateContactPhoto
         where
        type Rs PeoplePeopleUpdateContactPhoto =
             UpdateContactPhotoResponse
        type Scopes PeoplePeopleUpdateContactPhoto =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeoplePeopleUpdateContactPhoto{..}
          = go resourceName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              peopleService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PeoplePeopleUpdateContactPhotoResource)
                      Core.mempty

