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
-- Module      : Gogol.Storage.BucketAccessControls.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.update@.
module Gogol.Storage.BucketAccessControls.Update
    (
    -- * Resource
      StorageBucketAccessControlsUpdateResource

    -- ** Constructing a Request
    , StorageBucketAccessControlsUpdate (..)
    , newStorageBucketAccessControlsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.update@ method which the
-- 'StorageBucketAccessControlsUpdate' request conforms to.
type StorageBucketAccessControlsUpdateResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "acl" Core.:>
               Core.Capture "entity" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "userProject" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BucketAccessControl Core.:>
                         Core.Put '[Core.JSON] BucketAccessControl

-- | Updates an ACL entry on the specified bucket.
--
-- /See:/ 'newStorageBucketAccessControlsUpdate' smart constructor.
data StorageBucketAccessControlsUpdate = StorageBucketAccessControlsUpdate
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    , entity :: Core.Text
      -- | Multipart request metadata.
    , payload :: BucketAccessControl
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketAccessControlsUpdate' with the minimum fields required to make a request.
newStorageBucketAccessControlsUpdate 
    ::  Core.Text
       -- ^  Name of a bucket. See 'bucket'.
    -> Core.Text
       -- ^  The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers. See 'entity'.
    -> BucketAccessControl
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageBucketAccessControlsUpdate
newStorageBucketAccessControlsUpdate bucket entity payload =
  StorageBucketAccessControlsUpdate
    { bucket = bucket
    , entity = entity
    , payload = payload
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageBucketAccessControlsUpdate
         where
        type Rs StorageBucketAccessControlsUpdate =
             BucketAccessControl
        type Scopes StorageBucketAccessControlsUpdate =
             '[CloudPlatform'FullControl, Devstorage'FullControl]
        requestClient StorageBucketAccessControlsUpdate{..}
          = go bucket entity uploadType userProject
              (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketAccessControlsUpdateResource)
                      Core.mempty

