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
-- Module      : Gogol.ServiceControl.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ServiceControl.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * V2LogEntry_Severity
    V2LogEntry_Severity
      (
        V2LogEntry_Severity_Default,
        V2LogEntry_Severity_Debug,
        V2LogEntry_Severity_Info,
        V2LogEntry_Severity_Notice,
        V2LogEntry_Severity_Warning,
        V2LogEntry_Severity_Error',
        V2LogEntry_Severity_Critical,
        V2LogEntry_Severity_Alert,
        V2LogEntry_Severity_Emergency,
        ..
      ),

    -- * ViolationInfo_PolicyType
    ViolationInfo_PolicyType
      (
        ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED,
        ViolationInfo_PolicyType_BOOLEANCONSTRAINT,
        ViolationInfo_PolicyType_LISTCONSTRAINT,
        ViolationInfo_PolicyType_CUSTOMCONSTRAINT,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The severity of the log entry. The default value is @LogSeverity.DEFAULT@.
newtype V2LogEntry_Severity = V2LogEntry_Severity { fromV2LogEntry_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | (0) The log entry has no assigned severity level.
pattern V2LogEntry_Severity_Default :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Default = V2LogEntry_Severity "DEFAULT"

-- | (100) Debug or trace information.
pattern V2LogEntry_Severity_Debug :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Debug = V2LogEntry_Severity "DEBUG"

-- | (200) Routine information, such as ongoing status or performance.
pattern V2LogEntry_Severity_Info :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Info = V2LogEntry_Severity "INFO"

-- | (300) Normal but significant events, such as start up, shut down, or a configuration change.
pattern V2LogEntry_Severity_Notice :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Notice = V2LogEntry_Severity "NOTICE"

-- | (400) Warning events might cause problems.
pattern V2LogEntry_Severity_Warning :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Warning = V2LogEntry_Severity "WARNING"

-- | (500) Error events are likely to cause problems.
pattern V2LogEntry_Severity_Error' :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Error' = V2LogEntry_Severity "ERROR"

-- | (600) Critical events cause more severe problems or outages.
pattern V2LogEntry_Severity_Critical :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Critical = V2LogEntry_Severity "CRITICAL"

-- | (700) A person must take an action immediately.
pattern V2LogEntry_Severity_Alert :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Alert = V2LogEntry_Severity "ALERT"

-- | (800) One or more systems are unusable.
pattern V2LogEntry_Severity_Emergency :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Emergency = V2LogEntry_Severity "EMERGENCY"

{-# COMPLETE
  V2LogEntry_Severity_Default,
  V2LogEntry_Severity_Debug,
  V2LogEntry_Severity_Info,
  V2LogEntry_Severity_Notice,
  V2LogEntry_Severity_Warning,
  V2LogEntry_Severity_Error',
  V2LogEntry_Severity_Critical,
  V2LogEntry_Severity_Alert,
  V2LogEntry_Severity_Emergency,
  V2LogEntry_Severity #-}

-- | Optional. Indicates the type of the policy.
newtype ViolationInfo_PolicyType = ViolationInfo_PolicyType { fromViolationInfo_PolicyType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This value should not be used.
pattern ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED = ViolationInfo_PolicyType "POLICY_TYPE_UNSPECIFIED"

-- | Indicates boolean policy constraint
pattern ViolationInfo_PolicyType_BOOLEANCONSTRAINT :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_BOOLEANCONSTRAINT = ViolationInfo_PolicyType "BOOLEAN_CONSTRAINT"

-- | Indicates list policy constraint
pattern ViolationInfo_PolicyType_LISTCONSTRAINT :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_LISTCONSTRAINT = ViolationInfo_PolicyType "LIST_CONSTRAINT"

-- | Indicates custom policy constraint
pattern ViolationInfo_PolicyType_CUSTOMCONSTRAINT :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_CUSTOMCONSTRAINT = ViolationInfo_PolicyType "CUSTOM_CONSTRAINT"

{-# COMPLETE
  ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED,
  ViolationInfo_PolicyType_BOOLEANCONSTRAINT,
  ViolationInfo_PolicyType_LISTCONSTRAINT,
  ViolationInfo_PolicyType_CUSTOMCONSTRAINT,
  ViolationInfo_PolicyType #-}
