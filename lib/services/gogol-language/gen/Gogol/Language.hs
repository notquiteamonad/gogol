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
-- Module      : Gogol.Language
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference>
module Gogol.Language
    (
    -- * Configuration
      languageService

    -- * OAuth Scopes
    , CloudLanguage'FullControl
    , CloudPlatform'FullControl

    -- * Resources

    -- ** language.documents.analyzeEntities
    , LanguageDocumentsAnalyzeEntitiesResource
    , LanguageDocumentsAnalyzeEntities (..)
    , newLanguageDocumentsAnalyzeEntities

    -- ** language.documents.analyzeEntitySentiment
    , LanguageDocumentsAnalyzeEntitySentimentResource
    , LanguageDocumentsAnalyzeEntitySentiment (..)
    , newLanguageDocumentsAnalyzeEntitySentiment

    -- ** language.documents.analyzeSentiment
    , LanguageDocumentsAnalyzeSentimentResource
    , LanguageDocumentsAnalyzeSentiment (..)
    , newLanguageDocumentsAnalyzeSentiment

    -- ** language.documents.analyzeSyntax
    , LanguageDocumentsAnalyzeSyntaxResource
    , LanguageDocumentsAnalyzeSyntax (..)
    , newLanguageDocumentsAnalyzeSyntax

    -- ** language.documents.annotateText
    , LanguageDocumentsAnnotateTextResource
    , LanguageDocumentsAnnotateText (..)
    , newLanguageDocumentsAnnotateText

    -- ** language.documents.classifyText
    , LanguageDocumentsClassifyTextResource
    , LanguageDocumentsClassifyText (..)
    , newLanguageDocumentsClassifyText

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AnalyzeEntitiesRequest
    , AnalyzeEntitiesRequest (..)
    , newAnalyzeEntitiesRequest

    -- ** AnalyzeEntitiesRequest_EncodingType
    , AnalyzeEntitiesRequest_EncodingType (..)

    -- ** AnalyzeEntitiesResponse
    , AnalyzeEntitiesResponse (..)
    , newAnalyzeEntitiesResponse

    -- ** AnalyzeEntitySentimentRequest
    , AnalyzeEntitySentimentRequest (..)
    , newAnalyzeEntitySentimentRequest

    -- ** AnalyzeEntitySentimentRequest_EncodingType
    , AnalyzeEntitySentimentRequest_EncodingType (..)

    -- ** AnalyzeEntitySentimentResponse
    , AnalyzeEntitySentimentResponse (..)
    , newAnalyzeEntitySentimentResponse

    -- ** AnalyzeSentimentRequest
    , AnalyzeSentimentRequest (..)
    , newAnalyzeSentimentRequest

    -- ** AnalyzeSentimentRequest_EncodingType
    , AnalyzeSentimentRequest_EncodingType (..)

    -- ** AnalyzeSentimentResponse
    , AnalyzeSentimentResponse (..)
    , newAnalyzeSentimentResponse

    -- ** AnalyzeSyntaxRequest
    , AnalyzeSyntaxRequest (..)
    , newAnalyzeSyntaxRequest

    -- ** AnalyzeSyntaxRequest_EncodingType
    , AnalyzeSyntaxRequest_EncodingType (..)

    -- ** AnalyzeSyntaxResponse
    , AnalyzeSyntaxResponse (..)
    , newAnalyzeSyntaxResponse

    -- ** AnnotateTextRequest
    , AnnotateTextRequest (..)
    , newAnnotateTextRequest

    -- ** AnnotateTextRequest_EncodingType
    , AnnotateTextRequest_EncodingType (..)

    -- ** AnnotateTextResponse
    , AnnotateTextResponse (..)
    , newAnnotateTextResponse

    -- ** ClassificationCategory
    , ClassificationCategory (..)
    , newClassificationCategory

    -- ** ClassificationModelOptions
    , ClassificationModelOptions (..)
    , newClassificationModelOptions

    -- ** ClassifyTextRequest
    , ClassifyTextRequest (..)
    , newClassifyTextRequest

    -- ** ClassifyTextResponse
    , ClassifyTextResponse (..)
    , newClassifyTextResponse

    -- ** DependencyEdge
    , DependencyEdge (..)
    , newDependencyEdge

    -- ** DependencyEdge_Label
    , DependencyEdge_Label (..)

    -- ** Document
    , Document (..)
    , newDocument

    -- ** Document_Type
    , Document_Type (..)

    -- ** Entity
    , Entity (..)
    , newEntity

    -- ** Entity_Metadata
    , Entity_Metadata (..)
    , newEntity_Metadata

    -- ** Entity_Type
    , Entity_Type (..)

    -- ** EntityMention
    , EntityMention (..)
    , newEntityMention

    -- ** EntityMention_Type
    , EntityMention_Type (..)

    -- ** Features
    , Features (..)
    , newFeatures

    -- ** PartOfSpeech
    , PartOfSpeech (..)
    , newPartOfSpeech

    -- ** PartOfSpeech_Aspect
    , PartOfSpeech_Aspect (..)

    -- ** PartOfSpeech_Case
    , PartOfSpeech_Case (..)

    -- ** PartOfSpeech_Form
    , PartOfSpeech_Form (..)

    -- ** PartOfSpeech_Gender
    , PartOfSpeech_Gender (..)

    -- ** PartOfSpeech_Mood
    , PartOfSpeech_Mood (..)

    -- ** PartOfSpeech_Number
    , PartOfSpeech_Number (..)

    -- ** PartOfSpeech_Person
    , PartOfSpeech_Person (..)

    -- ** PartOfSpeech_Proper
    , PartOfSpeech_Proper (..)

    -- ** PartOfSpeech_Reciprocity
    , PartOfSpeech_Reciprocity (..)

    -- ** PartOfSpeech_Tag
    , PartOfSpeech_Tag (..)

    -- ** PartOfSpeech_Tense
    , PartOfSpeech_Tense (..)

    -- ** PartOfSpeech_Voice
    , PartOfSpeech_Voice (..)

    -- ** Sentence
    , Sentence (..)
    , newSentence

    -- ** Sentiment
    , Sentiment (..)
    , newSentiment

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TextSpan
    , TextSpan (..)
    , newTextSpan

    -- ** Token
    , Token (..)
    , newToken

    -- ** V1Model
    , V1Model (..)
    , newV1Model

    -- ** V2Model
    , V2Model (..)
    , newV2Model

    -- ** V2Model_ContentCategoriesVersion
    , V2Model_ContentCategoriesVersion (..)
    ) where

import Gogol.Language.Documents.AnalyzeEntities
import Gogol.Language.Documents.AnalyzeEntitySentiment
import Gogol.Language.Documents.AnalyzeSentiment
import Gogol.Language.Documents.AnalyzeSyntax
import Gogol.Language.Documents.AnnotateText
import Gogol.Language.Documents.ClassifyText
import Gogol.Language.Types