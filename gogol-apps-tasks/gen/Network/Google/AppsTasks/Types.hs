{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsTasks.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsTasks.Types
    (
    -- * Service URL
      appsTasksRequest

    -- * TaskLinksItem
    , TaskLinksItem
    , taskLinksItem
    , tliLink
    , tliType
    , tliDescription

    -- * Tasks
    , Tasks
    , tasks
    , tEtag
    , tNextPageToken
    , tKind
    , tItems

    -- * TaskLists
    , TaskLists
    , taskLists
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlItems

    -- * TaskList
    , TaskList
    , taskList
    , tasEtag
    , tasKind
    , tasSelfLink
    , tasId
    , tasUpdated
    , tasTitle

    -- * Task
    , Task
    , task
    , ttParent
    , ttStatus
    , ttDue
    , ttEtag
    , ttKind
    , ttSelfLink
    , ttHidden
    , ttCompleted
    , ttId
    , ttDeleted
    , ttUpdated
    , ttTitle
    , ttLinks
    , ttNotes
    , ttPosition
    ) where

import           Network.Google.AppsTasks.Types.Product
import           Network.Google.AppsTasks.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Tasks API.
appsTasksRequest :: RequestBuilder
appsTasksRequest
  = defaultRequest "https://www.googleapis.com/"
      "tasks/v1/"
