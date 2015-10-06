{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PubSub.Types
    (
    -- * Service URL
      pubSubRequest

    -- * PushConfig
    , PushConfig
    , pushConfig
    , pcAttributes
    , pcPushEndpoint

    -- * ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage

    -- * ModifyAckDeadlineRequest
    , ModifyAckDeadlineRequest
    , modifyAckDeadlineRequest
    , madrAckIds
    , madrAckId
    , madrAckDeadlineSeconds

    -- * ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- * Empty
    , Empty
    , empty

    -- * PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmAttributes
    , pmMessageId

    -- * ListTopicSubscriptionsResponse
    , ListTopicSubscriptionsResponse
    , listTopicSubscriptionsResponse
    , ltsrNextPageToken
    , ltsrSubscriptions

    -- * ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- * PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * Topic
    , Topic
    , topic
    , tName

    -- * PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- * PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- * PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes

    -- * Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- * ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- * AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types.Product
import           Network.Google.PubSub.Types.Sum

-- | Default request referring to version 'v1beta2' of the Google Cloud Pub/Sub API.
pubSubRequest :: RequestBuilder
pubSubRequest
  = defaultRequest "https://pubsub.googleapis.com/" ""
