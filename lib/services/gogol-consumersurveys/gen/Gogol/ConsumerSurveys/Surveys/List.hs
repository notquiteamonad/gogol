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
-- Module      : Gogol.ConsumerSurveys.Surveys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the surveys owned by the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.list@.
module Gogol.ConsumerSurveys.Surveys.List
    (
    -- * Resource
      ConsumerSurveysSurveysListResource

    -- ** Constructing a Request
    , ConsumerSurveysSurveysList (..)
    , newConsumerSurveysSurveysList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ConsumerSurveys.Types

-- | A resource alias for @consumersurveys.surveys.list@ method which the
-- 'ConsumerSurveysSurveysList' request conforms to.
type ConsumerSurveysSurveysListResource =
     "consumersurveys" Core.:>
       "v2" Core.:>
         "surveys" Core.:>
           Core.QueryParam "maxResults" Core.Word32 Core.:>
             Core.QueryParam "startIndex" Core.Word32 Core.:>
               Core.QueryParam "token" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] SurveysListResponse

-- | Lists the surveys owned by the authenticated user.
--
-- /See:/ 'newConsumerSurveysSurveysList' smart constructor.
data ConsumerSurveysSurveysList = ConsumerSurveysSurveysList
    {
      -- | 
      maxResults :: (Core.Maybe Core.Word32)
      -- | 
    , startIndex :: (Core.Maybe Core.Word32)
      -- | 
    , token :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysSurveysList' with the minimum fields required to make a request.
newConsumerSurveysSurveysList 
    ::  ConsumerSurveysSurveysList
newConsumerSurveysSurveysList =
  ConsumerSurveysSurveysList
    {maxResults = Core.Nothing, startIndex = Core.Nothing, token = Core.Nothing}

instance Core.GoogleRequest
           ConsumerSurveysSurveysList
         where
        type Rs ConsumerSurveysSurveysList =
             SurveysListResponse
        type Scopes ConsumerSurveysSurveysList =
             '[Consumersurveys'FullControl,
               Consumersurveys'Readonly, Userinfo'Email]
        requestClient ConsumerSurveysSurveysList{..}
          = go maxResults startIndex token
              (Core.Just Core.AltJSON)
              consumerSurveysService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ConsumerSurveysSurveysListResource)
                      Core.mempty
