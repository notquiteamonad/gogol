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
-- Module      : Gogol.GroupsSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages permission levels and related settings of a group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference>
module Gogol.GroupsSettings
    (
    -- * Configuration
      groupsSettingsService

    -- * OAuth Scopes
    , Apps'Groups'Settings

    -- * Resources

    -- ** groupsSettings.groups.get
    , GroupsSettingsGroupsGetResource
    , GroupsSettingsGroupsGet (..)
    , newGroupsSettingsGroupsGet

    -- ** groupsSettings.groups.patch
    , GroupsSettingsGroupsPatchResource
    , GroupsSettingsGroupsPatch (..)
    , newGroupsSettingsGroupsPatch

    -- ** groupsSettings.groups.update
    , GroupsSettingsGroupsUpdateResource
    , GroupsSettingsGroupsUpdate (..)
    , newGroupsSettingsGroupsUpdate

    -- * Types

    -- ** Groups
    , Groups (..)
    , newGroups
    ) where

import Gogol.GroupsSettings.Groups.Get
import Gogol.GroupsSettings.Groups.Patch
import Gogol.GroupsSettings.Groups.Update
import Gogol.GroupsSettings.Types
