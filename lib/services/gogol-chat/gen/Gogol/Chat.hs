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
-- Module      : Gogol.Chat
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables apps to fetch information and perform actions in Google Chat. Authentication is a prerequisite for using the Google Chat REST API.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference>
module Gogol.Chat
    (
    -- * Configuration
      chatService

    -- * OAuth Scopes
    , Chat'Bot
    , Chat'Delete
    , Chat'Memberships
    , Chat'Memberships'App
    , Chat'Memberships'Readonly
    , Chat'Messages
    , Chat'Messages'Create
    , Chat'Messages'Reactions
    , Chat'Messages'Reactions'Create
    , Chat'Messages'Reactions'Readonly
    , Chat'Messages'Readonly
    , Chat'Spaces
    , Chat'Spaces'Create
    , Chat'Spaces'Readonly

    -- * Resources

    -- ** chat.media.download
    , ChatMediaDownloadResource
    , ChatMediaDownload (..)
    , newChatMediaDownload

    -- ** chat.media.upload
    , ChatMediaUploadResource
    , ChatMediaUpload (..)
    , newChatMediaUpload

    -- ** chat.spaces.create
    , ChatSpacesCreateResource
    , ChatSpacesCreate (..)
    , newChatSpacesCreate

    -- ** chat.spaces.delete
    , ChatSpacesDeleteResource
    , ChatSpacesDelete (..)
    , newChatSpacesDelete

    -- ** chat.spaces.findDirectMessage
    , ChatSpacesFindDirectMessageResource
    , ChatSpacesFindDirectMessage (..)
    , newChatSpacesFindDirectMessage

    -- ** chat.spaces.get
    , ChatSpacesGetResource
    , ChatSpacesGet (..)
    , newChatSpacesGet

    -- ** chat.spaces.list
    , ChatSpacesListResource
    , ChatSpacesList (..)
    , newChatSpacesList

    -- ** chat.spaces.members.create
    , ChatSpacesMembersCreateResource
    , ChatSpacesMembersCreate (..)
    , newChatSpacesMembersCreate

    -- ** chat.spaces.members.delete
    , ChatSpacesMembersDeleteResource
    , ChatSpacesMembersDelete (..)
    , newChatSpacesMembersDelete

    -- ** chat.spaces.members.get
    , ChatSpacesMembersGetResource
    , ChatSpacesMembersGet (..)
    , newChatSpacesMembersGet

    -- ** chat.spaces.members.list
    , ChatSpacesMembersListResource
    , ChatSpacesMembersList (..)
    , newChatSpacesMembersList

    -- ** chat.spaces.messages.attachments.get
    , ChatSpacesMessagesAttachmentsGetResource
    , ChatSpacesMessagesAttachmentsGet (..)
    , newChatSpacesMessagesAttachmentsGet

    -- ** chat.spaces.messages.create
    , ChatSpacesMessagesCreateResource
    , ChatSpacesMessagesCreate (..)
    , newChatSpacesMessagesCreate

    -- ** chat.spaces.messages.delete
    , ChatSpacesMessagesDeleteResource
    , ChatSpacesMessagesDelete (..)
    , newChatSpacesMessagesDelete

    -- ** chat.spaces.messages.get
    , ChatSpacesMessagesGetResource
    , ChatSpacesMessagesGet (..)
    , newChatSpacesMessagesGet

    -- ** chat.spaces.messages.list
    , ChatSpacesMessagesListResource
    , ChatSpacesMessagesList (..)
    , newChatSpacesMessagesList

    -- ** chat.spaces.messages.patch
    , ChatSpacesMessagesPatchResource
    , ChatSpacesMessagesPatch (..)
    , newChatSpacesMessagesPatch

    -- ** chat.spaces.messages.reactions.create
    , ChatSpacesMessagesReactionsCreateResource
    , ChatSpacesMessagesReactionsCreate (..)
    , newChatSpacesMessagesReactionsCreate

    -- ** chat.spaces.messages.reactions.delete
    , ChatSpacesMessagesReactionsDeleteResource
    , ChatSpacesMessagesReactionsDelete (..)
    , newChatSpacesMessagesReactionsDelete

    -- ** chat.spaces.messages.reactions.list
    , ChatSpacesMessagesReactionsListResource
    , ChatSpacesMessagesReactionsList (..)
    , newChatSpacesMessagesReactionsList

    -- ** chat.spaces.messages.update
    , ChatSpacesMessagesUpdateResource
    , ChatSpacesMessagesUpdate (..)
    , newChatSpacesMessagesUpdate

    -- ** chat.spaces.patch
    , ChatSpacesPatchResource
    , ChatSpacesPatch (..)
    , newChatSpacesPatch

    -- ** chat.spaces.setup
    , ChatSpacesSetupResource
    , ChatSpacesSetup (..)
    , newChatSpacesSetup

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** ActionParameter
    , ActionParameter (..)
    , newActionParameter

    -- ** ActionResponse
    , ActionResponse (..)
    , newActionResponse

    -- ** ActionResponse_Type
    , ActionResponse_Type (..)

    -- ** ActionStatus
    , ActionStatus (..)
    , newActionStatus

    -- ** ActionStatus_StatusCode
    , ActionStatus_StatusCode (..)

    -- ** Annotation
    , Annotation (..)
    , newAnnotation

    -- ** Annotation_Type
    , Annotation_Type (..)

    -- ** Attachment
    , Attachment (..)
    , newAttachment

    -- ** Attachment_Source
    , Attachment_Source (..)

    -- ** AttachmentDataRef
    , AttachmentDataRef (..)
    , newAttachmentDataRef

    -- ** Button
    , Button (..)
    , newButton

    -- ** Card
    , Card (..)
    , newCard

    -- ** CardAction
    , CardAction (..)
    , newCardAction

    -- ** CardHeader
    , CardHeader (..)
    , newCardHeader

    -- ** CardHeader_ImageStyle
    , CardHeader_ImageStyle (..)

    -- ** CardWithId
    , CardWithId (..)
    , newCardWithId

    -- ** ChatAppLogEntry
    , ChatAppLogEntry (..)
    , newChatAppLogEntry

    -- ** Color
    , Color (..)
    , newColor

    -- ** CommonEventObject
    , CommonEventObject (..)
    , newCommonEventObject

    -- ** CommonEventObject_FormInputs
    , CommonEventObject_FormInputs (..)
    , newCommonEventObject_FormInputs

    -- ** CommonEventObject_HostApp
    , CommonEventObject_HostApp (..)

    -- ** CommonEventObject_Parameters
    , CommonEventObject_Parameters (..)
    , newCommonEventObject_Parameters

    -- ** CommonEventObject_Platform
    , CommonEventObject_Platform (..)

    -- ** CustomEmoji
    , CustomEmoji (..)
    , newCustomEmoji

    -- ** DateInput
    , DateInput (..)
    , newDateInput

    -- ** DateTimeInput
    , DateTimeInput (..)
    , newDateTimeInput

    -- ** DeletionMetadata
    , DeletionMetadata (..)
    , newDeletionMetadata

    -- ** DeletionMetadata_DeletionType
    , DeletionMetadata_DeletionType (..)

    -- ** DeprecatedEvent
    , DeprecatedEvent (..)
    , newDeprecatedEvent

    -- ** DeprecatedEvent_DialogEventType
    , DeprecatedEvent_DialogEventType (..)

    -- ** DeprecatedEvent_Type
    , DeprecatedEvent_Type (..)

    -- ** Dialog
    , Dialog (..)
    , newDialog

    -- ** DialogAction
    , DialogAction (..)
    , newDialogAction

    -- ** DriveDataRef
    , DriveDataRef (..)
    , newDriveDataRef

    -- ** Emoji
    , Emoji (..)
    , newEmoji

    -- ** EmojiReactionSummary
    , EmojiReactionSummary (..)
    , newEmojiReactionSummary

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FormAction
    , FormAction (..)
    , newFormAction

    -- ** GoogleAppsCardV1Action
    , GoogleAppsCardV1Action (..)
    , newGoogleAppsCardV1Action

    -- ** GoogleAppsCardV1Action_Interaction
    , GoogleAppsCardV1Action_Interaction (..)

    -- ** GoogleAppsCardV1Action_LoadIndicator
    , GoogleAppsCardV1Action_LoadIndicator (..)

    -- ** GoogleAppsCardV1ActionParameter
    , GoogleAppsCardV1ActionParameter (..)
    , newGoogleAppsCardV1ActionParameter

    -- ** GoogleAppsCardV1BorderStyle
    , GoogleAppsCardV1BorderStyle (..)
    , newGoogleAppsCardV1BorderStyle

    -- ** GoogleAppsCardV1BorderStyle_Type
    , GoogleAppsCardV1BorderStyle_Type (..)

    -- ** GoogleAppsCardV1Button
    , GoogleAppsCardV1Button (..)
    , newGoogleAppsCardV1Button

    -- ** GoogleAppsCardV1ButtonList
    , GoogleAppsCardV1ButtonList (..)
    , newGoogleAppsCardV1ButtonList

    -- ** GoogleAppsCardV1Card
    , GoogleAppsCardV1Card (..)
    , newGoogleAppsCardV1Card

    -- ** GoogleAppsCardV1Card_DisplayStyle
    , GoogleAppsCardV1Card_DisplayStyle (..)

    -- ** GoogleAppsCardV1CardAction
    , GoogleAppsCardV1CardAction (..)
    , newGoogleAppsCardV1CardAction

    -- ** GoogleAppsCardV1CardFixedFooter
    , GoogleAppsCardV1CardFixedFooter (..)
    , newGoogleAppsCardV1CardFixedFooter

    -- ** GoogleAppsCardV1CardHeader
    , GoogleAppsCardV1CardHeader (..)
    , newGoogleAppsCardV1CardHeader

    -- ** GoogleAppsCardV1CardHeader_ImageType
    , GoogleAppsCardV1CardHeader_ImageType (..)

    -- ** GoogleAppsCardV1Column
    , GoogleAppsCardV1Column (..)
    , newGoogleAppsCardV1Column

    -- ** GoogleAppsCardV1Column_HorizontalAlignment
    , GoogleAppsCardV1Column_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Column_HorizontalSizeStyle
    , GoogleAppsCardV1Column_HorizontalSizeStyle (..)

    -- ** GoogleAppsCardV1Column_VerticalAlignment
    , GoogleAppsCardV1Column_VerticalAlignment (..)

    -- ** GoogleAppsCardV1Columns
    , GoogleAppsCardV1Columns (..)
    , newGoogleAppsCardV1Columns

    -- ** GoogleAppsCardV1DateTimePicker
    , GoogleAppsCardV1DateTimePicker (..)
    , newGoogleAppsCardV1DateTimePicker

    -- ** GoogleAppsCardV1DateTimePicker_Type
    , GoogleAppsCardV1DateTimePicker_Type (..)

    -- ** GoogleAppsCardV1DecoratedText
    , GoogleAppsCardV1DecoratedText (..)
    , newGoogleAppsCardV1DecoratedText

    -- ** GoogleAppsCardV1Divider
    , GoogleAppsCardV1Divider (..)
    , newGoogleAppsCardV1Divider

    -- ** GoogleAppsCardV1FooterWidget
    , GoogleAppsCardV1FooterWidget (..)
    , newGoogleAppsCardV1FooterWidget

    -- ** GoogleAppsCardV1Grid
    , GoogleAppsCardV1Grid (..)
    , newGoogleAppsCardV1Grid

    -- ** GoogleAppsCardV1GridItem
    , GoogleAppsCardV1GridItem (..)
    , newGoogleAppsCardV1GridItem

    -- ** GoogleAppsCardV1GridItem_Layout
    , GoogleAppsCardV1GridItem_Layout (..)

    -- ** GoogleAppsCardV1Icon
    , GoogleAppsCardV1Icon (..)
    , newGoogleAppsCardV1Icon

    -- ** GoogleAppsCardV1Icon_ImageType
    , GoogleAppsCardV1Icon_ImageType (..)

    -- ** GoogleAppsCardV1Image
    , GoogleAppsCardV1Image (..)
    , newGoogleAppsCardV1Image

    -- ** GoogleAppsCardV1ImageComponent
    , GoogleAppsCardV1ImageComponent (..)
    , newGoogleAppsCardV1ImageComponent

    -- ** GoogleAppsCardV1ImageCropStyle
    , GoogleAppsCardV1ImageCropStyle (..)
    , newGoogleAppsCardV1ImageCropStyle

    -- ** GoogleAppsCardV1ImageCropStyle_Type
    , GoogleAppsCardV1ImageCropStyle_Type (..)

    -- ** GoogleAppsCardV1OnClick
    , GoogleAppsCardV1OnClick (..)
    , newGoogleAppsCardV1OnClick

    -- ** GoogleAppsCardV1OpenLink
    , GoogleAppsCardV1OpenLink (..)
    , newGoogleAppsCardV1OpenLink

    -- ** GoogleAppsCardV1OpenLink_OnClose
    , GoogleAppsCardV1OpenLink_OnClose (..)

    -- ** GoogleAppsCardV1OpenLink_OpenAs
    , GoogleAppsCardV1OpenLink_OpenAs (..)

    -- ** GoogleAppsCardV1Section
    , GoogleAppsCardV1Section (..)
    , newGoogleAppsCardV1Section

    -- ** GoogleAppsCardV1SelectionInput
    , GoogleAppsCardV1SelectionInput (..)
    , newGoogleAppsCardV1SelectionInput

    -- ** GoogleAppsCardV1SelectionInput_Type
    , GoogleAppsCardV1SelectionInput_Type (..)

    -- ** GoogleAppsCardV1SelectionItem
    , GoogleAppsCardV1SelectionItem (..)
    , newGoogleAppsCardV1SelectionItem

    -- ** GoogleAppsCardV1SuggestionItem
    , GoogleAppsCardV1SuggestionItem (..)
    , newGoogleAppsCardV1SuggestionItem

    -- ** GoogleAppsCardV1Suggestions
    , GoogleAppsCardV1Suggestions (..)
    , newGoogleAppsCardV1Suggestions

    -- ** GoogleAppsCardV1SwitchControl
    , GoogleAppsCardV1SwitchControl (..)
    , newGoogleAppsCardV1SwitchControl

    -- ** GoogleAppsCardV1SwitchControl_ControlType
    , GoogleAppsCardV1SwitchControl_ControlType (..)

    -- ** GoogleAppsCardV1TextInput
    , GoogleAppsCardV1TextInput (..)
    , newGoogleAppsCardV1TextInput

    -- ** GoogleAppsCardV1TextInput_Type
    , GoogleAppsCardV1TextInput_Type (..)

    -- ** GoogleAppsCardV1TextParagraph
    , GoogleAppsCardV1TextParagraph (..)
    , newGoogleAppsCardV1TextParagraph

    -- ** GoogleAppsCardV1Widget
    , GoogleAppsCardV1Widget (..)
    , newGoogleAppsCardV1Widget

    -- ** GoogleAppsCardV1Widget_HorizontalAlignment
    , GoogleAppsCardV1Widget_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Widgets
    , GoogleAppsCardV1Widgets (..)
    , newGoogleAppsCardV1Widgets

    -- ** Image
    , Image (..)
    , newImage

    -- ** ImageButton
    , ImageButton (..)
    , newImageButton

    -- ** ImageButton_Icon
    , ImageButton_Icon (..)

    -- ** Inputs
    , Inputs (..)
    , newInputs

    -- ** KeyValue
    , KeyValue (..)
    , newKeyValue

    -- ** KeyValue_Icon
    , KeyValue_Icon (..)

    -- ** ListMembershipsResponse
    , ListMembershipsResponse (..)
    , newListMembershipsResponse

    -- ** ListMessagesResponse
    , ListMessagesResponse (..)
    , newListMessagesResponse

    -- ** ListReactionsResponse
    , ListReactionsResponse (..)
    , newListReactionsResponse

    -- ** ListSpacesResponse
    , ListSpacesResponse (..)
    , newListSpacesResponse

    -- ** MatchedUrl
    , MatchedUrl (..)
    , newMatchedUrl

    -- ** Media
    , Media (..)
    , newMedia

    -- ** Membership
    , Membership (..)
    , newMembership

    -- ** Membership_Role
    , Membership_Role (..)

    -- ** Membership_State
    , Membership_State (..)

    -- ** Message
    , Message (..)
    , newMessage

    -- ** OnClick
    , OnClick (..)
    , newOnClick

    -- ** OpenLink
    , OpenLink (..)
    , newOpenLink

    -- ** Reaction
    , Reaction (..)
    , newReaction

    -- ** Section
    , Section (..)
    , newSection

    -- ** SetUpSpaceRequest
    , SetUpSpaceRequest (..)
    , newSetUpSpaceRequest

    -- ** SlashCommand
    , SlashCommand (..)
    , newSlashCommand

    -- ** SlashCommandMetadata
    , SlashCommandMetadata (..)
    , newSlashCommandMetadata

    -- ** SlashCommandMetadata_Type
    , SlashCommandMetadata_Type (..)

    -- ** Space
    , Space (..)
    , newSpace

    -- ** Space_SpaceHistoryState
    , Space_SpaceHistoryState (..)

    -- ** Space_SpaceThreadingState
    , Space_SpaceThreadingState (..)

    -- ** Space_SpaceType
    , Space_SpaceType (..)

    -- ** Space_Type
    , Space_Type (..)

    -- ** SpaceDetails
    , SpaceDetails (..)
    , newSpaceDetails

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StringInputs
    , StringInputs (..)
    , newStringInputs

    -- ** TextButton
    , TextButton (..)
    , newTextButton

    -- ** TextParagraph
    , TextParagraph (..)
    , newTextParagraph

    -- ** Thread
    , Thread (..)
    , newThread

    -- ** TimeInput
    , TimeInput (..)
    , newTimeInput

    -- ** TimeZone
    , TimeZone (..)
    , newTimeZone

    -- ** UploadAttachmentRequest
    , UploadAttachmentRequest (..)
    , newUploadAttachmentRequest

    -- ** UploadAttachmentResponse
    , UploadAttachmentResponse (..)
    , newUploadAttachmentResponse

    -- ** User
    , User (..)
    , newUser

    -- ** User_Type
    , User_Type (..)

    -- ** UserMentionMetadata
    , UserMentionMetadata (..)
    , newUserMentionMetadata

    -- ** UserMentionMetadata_Type
    , UserMentionMetadata_Type (..)

    -- ** WidgetMarkup
    , WidgetMarkup (..)
    , newWidgetMarkup

    -- ** SpacesMessagesCreateMessageReplyOption
    , SpacesMessagesCreateMessageReplyOption (..)
    ) where

import Gogol.Chat.Media.Download
import Gogol.Chat.Media.Upload
import Gogol.Chat.Spaces.Create
import Gogol.Chat.Spaces.Delete
import Gogol.Chat.Spaces.FindDirectMessage
import Gogol.Chat.Spaces.Get
import Gogol.Chat.Spaces.List
import Gogol.Chat.Spaces.Members.Create
import Gogol.Chat.Spaces.Members.Delete
import Gogol.Chat.Spaces.Members.Get
import Gogol.Chat.Spaces.Members.List
import Gogol.Chat.Spaces.Messages.Attachments.Get
import Gogol.Chat.Spaces.Messages.Create
import Gogol.Chat.Spaces.Messages.Delete
import Gogol.Chat.Spaces.Messages.Get
import Gogol.Chat.Spaces.Messages.List
import Gogol.Chat.Spaces.Messages.Patch
import Gogol.Chat.Spaces.Messages.Reactions.Create
import Gogol.Chat.Spaces.Messages.Reactions.Delete
import Gogol.Chat.Spaces.Messages.Reactions.List
import Gogol.Chat.Spaces.Messages.Update
import Gogol.Chat.Spaces.Patch
import Gogol.Chat.Spaces.Setup
import Gogol.Chat.Types
