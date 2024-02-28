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
-- Module      : Gogol.Run.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Run.Internal.Product
  (

    -- * GoogleCloudRunV2BinaryAuthorization
    GoogleCloudRunV2BinaryAuthorization (..),
    newGoogleCloudRunV2BinaryAuthorization,

    -- * GoogleCloudRunV2CloudSqlInstance
    GoogleCloudRunV2CloudSqlInstance (..),
    newGoogleCloudRunV2CloudSqlInstance,

    -- * GoogleCloudRunV2Condition
    GoogleCloudRunV2Condition (..),
    newGoogleCloudRunV2Condition,

    -- * GoogleCloudRunV2Container
    GoogleCloudRunV2Container (..),
    newGoogleCloudRunV2Container,

    -- * GoogleCloudRunV2ContainerPort
    GoogleCloudRunV2ContainerPort (..),
    newGoogleCloudRunV2ContainerPort,

    -- * GoogleCloudRunV2EmptyDirVolumeSource
    GoogleCloudRunV2EmptyDirVolumeSource (..),
    newGoogleCloudRunV2EmptyDirVolumeSource,

    -- * GoogleCloudRunV2EnvVar
    GoogleCloudRunV2EnvVar (..),
    newGoogleCloudRunV2EnvVar,

    -- * GoogleCloudRunV2EnvVarSource
    GoogleCloudRunV2EnvVarSource (..),
    newGoogleCloudRunV2EnvVarSource,

    -- * GoogleCloudRunV2Execution
    GoogleCloudRunV2Execution (..),
    newGoogleCloudRunV2Execution,

    -- * GoogleCloudRunV2Execution_Annotations
    GoogleCloudRunV2Execution_Annotations (..),
    newGoogleCloudRunV2Execution_Annotations,

    -- * GoogleCloudRunV2Execution_Labels
    GoogleCloudRunV2Execution_Labels (..),
    newGoogleCloudRunV2Execution_Labels,

    -- * GoogleCloudRunV2ExecutionReference
    GoogleCloudRunV2ExecutionReference (..),
    newGoogleCloudRunV2ExecutionReference,

    -- * GoogleCloudRunV2ExecutionTemplate
    GoogleCloudRunV2ExecutionTemplate (..),
    newGoogleCloudRunV2ExecutionTemplate,

    -- * GoogleCloudRunV2ExecutionTemplate_Annotations
    GoogleCloudRunV2ExecutionTemplate_Annotations (..),
    newGoogleCloudRunV2ExecutionTemplate_Annotations,

    -- * GoogleCloudRunV2ExecutionTemplate_Labels
    GoogleCloudRunV2ExecutionTemplate_Labels (..),
    newGoogleCloudRunV2ExecutionTemplate_Labels,

    -- * GoogleCloudRunV2GRPCAction
    GoogleCloudRunV2GRPCAction (..),
    newGoogleCloudRunV2GRPCAction,

    -- * GoogleCloudRunV2HTTPGetAction
    GoogleCloudRunV2HTTPGetAction (..),
    newGoogleCloudRunV2HTTPGetAction,

    -- * GoogleCloudRunV2HTTPHeader
    GoogleCloudRunV2HTTPHeader (..),
    newGoogleCloudRunV2HTTPHeader,

    -- * GoogleCloudRunV2Job
    GoogleCloudRunV2Job (..),
    newGoogleCloudRunV2Job,

    -- * GoogleCloudRunV2Job_Annotations
    GoogleCloudRunV2Job_Annotations (..),
    newGoogleCloudRunV2Job_Annotations,

    -- * GoogleCloudRunV2Job_Labels
    GoogleCloudRunV2Job_Labels (..),
    newGoogleCloudRunV2Job_Labels,

    -- * GoogleCloudRunV2ListExecutionsResponse
    GoogleCloudRunV2ListExecutionsResponse (..),
    newGoogleCloudRunV2ListExecutionsResponse,

    -- * GoogleCloudRunV2ListJobsResponse
    GoogleCloudRunV2ListJobsResponse (..),
    newGoogleCloudRunV2ListJobsResponse,

    -- * GoogleCloudRunV2ListRevisionsResponse
    GoogleCloudRunV2ListRevisionsResponse (..),
    newGoogleCloudRunV2ListRevisionsResponse,

    -- * GoogleCloudRunV2ListServicesResponse
    GoogleCloudRunV2ListServicesResponse (..),
    newGoogleCloudRunV2ListServicesResponse,

    -- * GoogleCloudRunV2ListTasksResponse
    GoogleCloudRunV2ListTasksResponse (..),
    newGoogleCloudRunV2ListTasksResponse,

    -- * GoogleCloudRunV2Probe
    GoogleCloudRunV2Probe (..),
    newGoogleCloudRunV2Probe,

    -- * GoogleCloudRunV2ResourceRequirements
    GoogleCloudRunV2ResourceRequirements (..),
    newGoogleCloudRunV2ResourceRequirements,

    -- * GoogleCloudRunV2ResourceRequirements_Limits
    GoogleCloudRunV2ResourceRequirements_Limits (..),
    newGoogleCloudRunV2ResourceRequirements_Limits,

    -- * GoogleCloudRunV2Revision
    GoogleCloudRunV2Revision (..),
    newGoogleCloudRunV2Revision,

    -- * GoogleCloudRunV2Revision_Annotations
    GoogleCloudRunV2Revision_Annotations (..),
    newGoogleCloudRunV2Revision_Annotations,

    -- * GoogleCloudRunV2Revision_Labels
    GoogleCloudRunV2Revision_Labels (..),
    newGoogleCloudRunV2Revision_Labels,

    -- * GoogleCloudRunV2RevisionScaling
    GoogleCloudRunV2RevisionScaling (..),
    newGoogleCloudRunV2RevisionScaling,

    -- * GoogleCloudRunV2RevisionTemplate
    GoogleCloudRunV2RevisionTemplate (..),
    newGoogleCloudRunV2RevisionTemplate,

    -- * GoogleCloudRunV2RevisionTemplate_Annotations
    GoogleCloudRunV2RevisionTemplate_Annotations (..),
    newGoogleCloudRunV2RevisionTemplate_Annotations,

    -- * GoogleCloudRunV2RevisionTemplate_Labels
    GoogleCloudRunV2RevisionTemplate_Labels (..),
    newGoogleCloudRunV2RevisionTemplate_Labels,

    -- * GoogleCloudRunV2RunJobRequest
    GoogleCloudRunV2RunJobRequest (..),
    newGoogleCloudRunV2RunJobRequest,

    -- * GoogleCloudRunV2SecretKeySelector
    GoogleCloudRunV2SecretKeySelector (..),
    newGoogleCloudRunV2SecretKeySelector,

    -- * GoogleCloudRunV2SecretVolumeSource
    GoogleCloudRunV2SecretVolumeSource (..),
    newGoogleCloudRunV2SecretVolumeSource,

    -- * GoogleCloudRunV2Service
    GoogleCloudRunV2Service (..),
    newGoogleCloudRunV2Service,

    -- * GoogleCloudRunV2Service_Annotations
    GoogleCloudRunV2Service_Annotations (..),
    newGoogleCloudRunV2Service_Annotations,

    -- * GoogleCloudRunV2Service_Labels
    GoogleCloudRunV2Service_Labels (..),
    newGoogleCloudRunV2Service_Labels,

    -- * GoogleCloudRunV2TCPSocketAction
    GoogleCloudRunV2TCPSocketAction (..),
    newGoogleCloudRunV2TCPSocketAction,

    -- * GoogleCloudRunV2Task
    GoogleCloudRunV2Task (..),
    newGoogleCloudRunV2Task,

    -- * GoogleCloudRunV2Task_Annotations
    GoogleCloudRunV2Task_Annotations (..),
    newGoogleCloudRunV2Task_Annotations,

    -- * GoogleCloudRunV2Task_Labels
    GoogleCloudRunV2Task_Labels (..),
    newGoogleCloudRunV2Task_Labels,

    -- * GoogleCloudRunV2TaskAttemptResult
    GoogleCloudRunV2TaskAttemptResult (..),
    newGoogleCloudRunV2TaskAttemptResult,

    -- * GoogleCloudRunV2TaskTemplate
    GoogleCloudRunV2TaskTemplate (..),
    newGoogleCloudRunV2TaskTemplate,

    -- * GoogleCloudRunV2TrafficTarget
    GoogleCloudRunV2TrafficTarget (..),
    newGoogleCloudRunV2TrafficTarget,

    -- * GoogleCloudRunV2TrafficTargetStatus
    GoogleCloudRunV2TrafficTargetStatus (..),
    newGoogleCloudRunV2TrafficTargetStatus,

    -- * GoogleCloudRunV2VersionToPath
    GoogleCloudRunV2VersionToPath (..),
    newGoogleCloudRunV2VersionToPath,

    -- * GoogleCloudRunV2Volume
    GoogleCloudRunV2Volume (..),
    newGoogleCloudRunV2Volume,

    -- * GoogleCloudRunV2VolumeMount
    GoogleCloudRunV2VolumeMount (..),
    newGoogleCloudRunV2VolumeMount,

    -- * GoogleCloudRunV2VpcAccess
    GoogleCloudRunV2VpcAccess (..),
    newGoogleCloudRunV2VpcAccess,

    -- * GoogleIamV1AuditConfig
    GoogleIamV1AuditConfig (..),
    newGoogleIamV1AuditConfig,

    -- * GoogleIamV1AuditLogConfig
    GoogleIamV1AuditLogConfig (..),
    newGoogleIamV1AuditLogConfig,

    -- * GoogleIamV1Binding
    GoogleIamV1Binding (..),
    newGoogleIamV1Binding,

    -- * GoogleIamV1Policy
    GoogleIamV1Policy (..),
    newGoogleIamV1Policy,

    -- * GoogleIamV1SetIamPolicyRequest
    GoogleIamV1SetIamPolicyRequest (..),
    newGoogleIamV1SetIamPolicyRequest,

    -- * GoogleIamV1TestIamPermissionsRequest
    GoogleIamV1TestIamPermissionsRequest (..),
    newGoogleIamV1TestIamPermissionsRequest,

    -- * GoogleIamV1TestIamPermissionsResponse
    GoogleIamV1TestIamPermissionsResponse (..),
    newGoogleIamV1TestIamPermissionsResponse,

    -- * GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- * GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- * GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- * GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- * GoogleLongrunningWaitOperationRequest
    GoogleLongrunningWaitOperationRequest (..),
    newGoogleLongrunningWaitOperationRequest,

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- * GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Internal.Sum

-- | Settings for Binary Authorization feature.
--
-- /See:/ 'newGoogleCloudRunV2BinaryAuthorization' smart constructor.
data GoogleCloudRunV2BinaryAuthorization = GoogleCloudRunV2BinaryAuthorization
    {
      -- | If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https:\/\/cloud.google.com\/binary-authorization\/docs\/using-breakglass
      breakglassJustification :: (Core.Maybe Core.Text)
      -- | If True, indicates to use the default project\'s binary authorization policy. If False, binary authorization will be disabled.
    , useDefault :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2BinaryAuthorization' with the minimum fields required to make a request.
newGoogleCloudRunV2BinaryAuthorization 
    ::  GoogleCloudRunV2BinaryAuthorization
newGoogleCloudRunV2BinaryAuthorization =
  GoogleCloudRunV2BinaryAuthorization
    {breakglassJustification = Core.Nothing, useDefault = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2BinaryAuthorization
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2BinaryAuthorization"
              (\ o ->
                 GoogleCloudRunV2BinaryAuthorization Core.<$>
                   (o Core..:? "breakglassJustification") Core.<*>
                     (o Core..:? "useDefault"))

instance Core.ToJSON
           GoogleCloudRunV2BinaryAuthorization
         where
        toJSON GoogleCloudRunV2BinaryAuthorization{..}
          = Core.object
              (Core.catMaybes
                 [("breakglassJustification" Core..=) Core.<$>
                    breakglassJustification,
                  ("useDefault" Core..=) Core.<$> useDefault])


-- | Represents a set of Cloud SQL instances. Each one will be available under \/cloudsql\/[instance]. Visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run for more information on how to connect Cloud SQL and Cloud Run.
--
-- /See:/ 'newGoogleCloudRunV2CloudSqlInstance' smart constructor.
newtype GoogleCloudRunV2CloudSqlInstance = GoogleCloudRunV2CloudSqlInstance
    {
      -- | The Cloud SQL instance connection names, as can be found in https:\/\/console.cloud.google.com\/sql\/instances. Visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
      instances :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2CloudSqlInstance' with the minimum fields required to make a request.
newGoogleCloudRunV2CloudSqlInstance 
    ::  GoogleCloudRunV2CloudSqlInstance
newGoogleCloudRunV2CloudSqlInstance =
  GoogleCloudRunV2CloudSqlInstance {instances = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2CloudSqlInstance
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2CloudSqlInstance"
              (\ o ->
                 GoogleCloudRunV2CloudSqlInstance Core.<$>
                   (o Core..:? "instances"))

instance Core.ToJSON GoogleCloudRunV2CloudSqlInstance
         where
        toJSON GoogleCloudRunV2CloudSqlInstance{..}
          = Core.object
              (Core.catMaybes
                 [("instances" Core..=) Core.<$> instances])


-- | Defines a status condition for a resource.
--
-- /See:/ 'newGoogleCloudRunV2Condition' smart constructor.
data GoogleCloudRunV2Condition = GoogleCloudRunV2Condition
    {
      -- | A reason for the execution condition.
      executionReason :: (Core.Maybe GoogleCloudRunV2Condition_ExecutionReason)
      -- | Last time the condition transitioned from one status to another.
    , lastTransitionTime :: (Core.Maybe Core.DateTime)
      -- | Human readable message indicating details about the current status.
    , message :: (Core.Maybe Core.Text)
      -- | A common (service-level) reason for this condition.
    , reason :: (Core.Maybe GoogleCloudRunV2Condition_Reason)
      -- | A reason for the revision condition.
    , revisionReason :: (Core.Maybe GoogleCloudRunV2Condition_RevisionReason)
      -- | How to interpret failures of this condition, one of Error, Warning, Info
    , severity :: (Core.Maybe GoogleCloudRunV2Condition_Severity)
      -- | State of the condition.
    , state :: (Core.Maybe GoogleCloudRunV2Condition_State)
      -- | type is used to communicate the status of the reconciliation process. See also: https:\/\/github.com\/knative\/serving\/blob\/main\/docs\/spec\/errors.md#error-conditions-and-reporting Types common to all resources include: * \"Ready\": True when the Resource is ready.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Condition' with the minimum fields required to make a request.
newGoogleCloudRunV2Condition 
    ::  GoogleCloudRunV2Condition
newGoogleCloudRunV2Condition =
  GoogleCloudRunV2Condition
    { executionReason = Core.Nothing
    , lastTransitionTime = Core.Nothing
    , message = Core.Nothing
    , reason = Core.Nothing
    , revisionReason = Core.Nothing
    , severity = Core.Nothing
    , state = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Condition
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Condition"
              (\ o ->
                 GoogleCloudRunV2Condition Core.<$>
                   (o Core..:? "executionReason") Core.<*>
                     (o Core..:? "lastTransitionTime")
                     Core.<*> (o Core..:? "message")
                     Core.<*> (o Core..:? "reason")
                     Core.<*> (o Core..:? "revisionReason")
                     Core.<*> (o Core..:? "severity")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleCloudRunV2Condition where
        toJSON GoogleCloudRunV2Condition{..}
          = Core.object
              (Core.catMaybes
                 [("executionReason" Core..=) Core.<$>
                    executionReason,
                  ("lastTransitionTime" Core..=) Core.<$>
                    lastTransitionTime,
                  ("message" Core..=) Core.<$> message,
                  ("reason" Core..=) Core.<$> reason,
                  ("revisionReason" Core..=) Core.<$> revisionReason,
                  ("severity" Core..=) Core.<$> severity,
                  ("state" Core..=) Core.<$> state,
                  ("type" Core..=) Core.<$> type'])


-- | A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.
--
-- /See:/ 'newGoogleCloudRunV2Container' smart constructor.
data GoogleCloudRunV2Container = GoogleCloudRunV2Container
    {
      -- | Arguments to the entrypoint. The docker image\'s CMD is used if this is not provided.
      args :: (Core.Maybe [Core.Text])
      -- | Entrypoint array. Not executed within a shell. The docker image\'s ENTRYPOINT is used if this is not provided.
    , command :: (Core.Maybe [Core.Text])
      -- | Container names which must start before this container.
    , dependsOn :: (Core.Maybe [Core.Text])
      -- | List of environment variables to set in the container.
    , env :: (Core.Maybe [GoogleCloudRunV2EnvVar])
      -- | Required. Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
    , image :: (Core.Maybe Core.Text)
      -- | Periodic probe of container liveness. Container will be restarted if the probe fails.
    , livenessProbe :: (Core.Maybe GoogleCloudRunV2Probe)
      -- | Name of the container specified as a DNS_LABEL (RFC 1123).
    , name :: (Core.Maybe Core.Text)
      -- | List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
    , ports :: (Core.Maybe [GoogleCloudRunV2ContainerPort])
      -- | Compute Resource requirements by this container.
    , resources :: (Core.Maybe GoogleCloudRunV2ResourceRequirements)
      -- | Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
    , startupProbe :: (Core.Maybe GoogleCloudRunV2Probe)
      -- | Volume to mount into the container\'s filesystem.
    , volumeMounts :: (Core.Maybe [GoogleCloudRunV2VolumeMount])
      -- | Container\'s working directory. If not specified, the container runtime\'s default will be used, which might be configured in the container image.
    , workingDir :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Container' with the minimum fields required to make a request.
newGoogleCloudRunV2Container 
    ::  GoogleCloudRunV2Container
newGoogleCloudRunV2Container =
  GoogleCloudRunV2Container
    { args = Core.Nothing
    , command = Core.Nothing
    , dependsOn = Core.Nothing
    , env = Core.Nothing
    , image = Core.Nothing
    , livenessProbe = Core.Nothing
    , name = Core.Nothing
    , ports = Core.Nothing
    , resources = Core.Nothing
    , startupProbe = Core.Nothing
    , volumeMounts = Core.Nothing
    , workingDir = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Container
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Container"
              (\ o ->
                 GoogleCloudRunV2Container Core.<$>
                   (o Core..:? "args") Core.<*> (o Core..:? "command")
                     Core.<*> (o Core..:? "dependsOn")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "livenessProbe")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "ports")
                     Core.<*> (o Core..:? "resources")
                     Core.<*> (o Core..:? "startupProbe")
                     Core.<*> (o Core..:? "volumeMounts")
                     Core.<*> (o Core..:? "workingDir"))

instance Core.ToJSON GoogleCloudRunV2Container where
        toJSON GoogleCloudRunV2Container{..}
          = Core.object
              (Core.catMaybes
                 [("args" Core..=) Core.<$> args,
                  ("command" Core..=) Core.<$> command,
                  ("dependsOn" Core..=) Core.<$> dependsOn,
                  ("env" Core..=) Core.<$> env,
                  ("image" Core..=) Core.<$> image,
                  ("livenessProbe" Core..=) Core.<$> livenessProbe,
                  ("name" Core..=) Core.<$> name,
                  ("ports" Core..=) Core.<$> ports,
                  ("resources" Core..=) Core.<$> resources,
                  ("startupProbe" Core..=) Core.<$> startupProbe,
                  ("volumeMounts" Core..=) Core.<$> volumeMounts,
                  ("workingDir" Core..=) Core.<$> workingDir])


-- | ContainerPort represents a network port in a single container.
--
-- /See:/ 'newGoogleCloudRunV2ContainerPort' smart constructor.
data GoogleCloudRunV2ContainerPort = GoogleCloudRunV2ContainerPort
    {
      -- | Port number the container listens on. This must be a valid TCP port number, 0 \< container_port \< 65536.
      containerPort :: (Core.Maybe Core.Int32)
      -- | If specified, used to specify which protocol to use. Allowed values are \"http1\" and \"h2c\".
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ContainerPort' with the minimum fields required to make a request.
newGoogleCloudRunV2ContainerPort 
    ::  GoogleCloudRunV2ContainerPort
newGoogleCloudRunV2ContainerPort =
  GoogleCloudRunV2ContainerPort
    {containerPort = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2ContainerPort
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ContainerPort"
              (\ o ->
                 GoogleCloudRunV2ContainerPort Core.<$>
                   (o Core..:? "containerPort") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON GoogleCloudRunV2ContainerPort
         where
        toJSON GoogleCloudRunV2ContainerPort{..}
          = Core.object
              (Core.catMaybes
                 [("containerPort" Core..=) Core.<$> containerPort,
                  ("name" Core..=) Core.<$> name])


-- | Ephemeral storage which can be backed by real disks (HD, SSD), network storage or memory (i.e. tmpfs). For now only in memory (tmpfs) is supported. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
--
-- /See:/ 'newGoogleCloudRunV2EmptyDirVolumeSource' smart constructor.
data GoogleCloudRunV2EmptyDirVolumeSource = GoogleCloudRunV2EmptyDirVolumeSource
    {
      -- | The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
      medium :: (Core.Maybe GoogleCloudRunV2EmptyDirVolumeSource_Medium)
      -- | Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field\'s values are of the \'Quantity\' k8s type: https:\/\/kubernetes.io\/docs\/reference\/kubernetes-api\/common-definitions\/quantity\/. The default is nil which means that the limit is undefined. More info: http:\/\/kubernetes.io\/docs\/user-guide\/volumes#emptydir +optional
    , sizeLimit :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2EmptyDirVolumeSource' with the minimum fields required to make a request.
newGoogleCloudRunV2EmptyDirVolumeSource 
    ::  GoogleCloudRunV2EmptyDirVolumeSource
newGoogleCloudRunV2EmptyDirVolumeSource =
  GoogleCloudRunV2EmptyDirVolumeSource
    {medium = Core.Nothing, sizeLimit = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2EmptyDirVolumeSource
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2EmptyDirVolumeSource"
              (\ o ->
                 GoogleCloudRunV2EmptyDirVolumeSource Core.<$>
                   (o Core..:? "medium") Core.<*>
                     (o Core..:? "sizeLimit"))

instance Core.ToJSON
           GoogleCloudRunV2EmptyDirVolumeSource
         where
        toJSON GoogleCloudRunV2EmptyDirVolumeSource{..}
          = Core.object
              (Core.catMaybes
                 [("medium" Core..=) Core.<$> medium,
                  ("sizeLimit" Core..=) Core.<$> sizeLimit])


-- | EnvVar represents an environment variable present in a Container.
--
-- /See:/ 'newGoogleCloudRunV2EnvVar' smart constructor.
data GoogleCloudRunV2EnvVar = GoogleCloudRunV2EnvVar
    {
      -- | Required. Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.
      name :: (Core.Maybe Core.Text)
      -- | Variable references $(VAR/NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR/NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\", and the maximum length is 32768 bytes.
    , value :: (Core.Maybe Core.Text)
      -- | Source for the environment variable\'s value.
    , valueSource :: (Core.Maybe GoogleCloudRunV2EnvVarSource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2EnvVar' with the minimum fields required to make a request.
newGoogleCloudRunV2EnvVar 
    ::  GoogleCloudRunV2EnvVar
newGoogleCloudRunV2EnvVar =
  GoogleCloudRunV2EnvVar
    {name = Core.Nothing, value = Core.Nothing, valueSource = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2EnvVar where
        parseJSON
          = Core.withObject "GoogleCloudRunV2EnvVar"
              (\ o ->
                 GoogleCloudRunV2EnvVar Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value")
                     Core.<*> (o Core..:? "valueSource"))

instance Core.ToJSON GoogleCloudRunV2EnvVar where
        toJSON GoogleCloudRunV2EnvVar{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value,
                  ("valueSource" Core..=) Core.<$> valueSource])


-- | EnvVarSource represents a source for the value of an EnvVar.
--
-- /See:/ 'newGoogleCloudRunV2EnvVarSource' smart constructor.
newtype GoogleCloudRunV2EnvVarSource = GoogleCloudRunV2EnvVarSource
    {
      -- | Selects a secret and a specific version from Cloud Secret Manager.
      secretKeyRef :: (Core.Maybe GoogleCloudRunV2SecretKeySelector)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2EnvVarSource' with the minimum fields required to make a request.
newGoogleCloudRunV2EnvVarSource 
    ::  GoogleCloudRunV2EnvVarSource
newGoogleCloudRunV2EnvVarSource =
  GoogleCloudRunV2EnvVarSource {secretKeyRef = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2EnvVarSource
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2EnvVarSource"
              (\ o ->
                 GoogleCloudRunV2EnvVarSource Core.<$>
                   (o Core..:? "secretKeyRef"))

instance Core.ToJSON GoogleCloudRunV2EnvVarSource
         where
        toJSON GoogleCloudRunV2EnvVarSource{..}
          = Core.object
              (Core.catMaybes
                 [("secretKeyRef" Core..=) Core.<$> secretKeyRef])


-- | Execution represents the configuration of a single execution. A execution an immutable resource that references a container image which is run to completion.
--
-- /See:/ 'newGoogleCloudRunV2Execution' smart constructor.
data GoogleCloudRunV2Execution = GoogleCloudRunV2Execution
    {
      -- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
      annotations :: (Core.Maybe GoogleCloudRunV2Execution_Annotations)
      -- | Output only. The number of tasks which reached phase Cancelled.
    , cancelledCount :: (Core.Maybe Core.Int32)
      -- | Output only. Represents time when the execution was completed. It is not guaranteed to be set in happens-before order across separate operations.
    , completionTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The Condition of this Execution, containing its readiness status, and detailed error information in case it did not reach the desired state.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Output only. Represents time when the execution was acknowledged by the execution controller. It is not guaranteed to be set in happens-before order across separate operations.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The number of tasks which reached phase Failed.
    , failedCount :: (Core.Maybe Core.Int32)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Output only. The name of the parent Job.
    , job :: (Core.Maybe Core.Text)
      -- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
    , labels :: (Core.Maybe GoogleCloudRunV2Execution_Labels)
      -- | The least stable launch stage needed to create this resource, as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Execution_LaunchStage)
      -- | Output only. URI where logs for this execution can be found in Cloud Console.
    , logUri :: (Core.Maybe Core.Text)
      -- | Output only. The unique name of this Execution.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Execution. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Specifies the maximum desired number of tasks the execution should run at any given time. Must be \<= task/count. The actual number of tasks running in steady state will be less than this number when ((.spec.task/count - .status.successful) \< .spec.parallelism), i.e. when the work left to do is less than max parallelism.
    , parallelism :: (Core.Maybe Core.Int32)
      -- | Output only. Indicates whether the resource\'s reconciliation is still in progress. See comments in @Job.reconciling@ for additional information on reconciliation process in Cloud Run.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. The number of tasks which have retried at least once.
    , retriedCount :: (Core.Maybe Core.Int32)
      -- | Output only. The number of actively running tasks.
    , runningCount :: (Core.Maybe Core.Int32)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Output only. Represents time when the execution started to run. It is not guaranteed to be set in happens-before order across separate operations.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The number of tasks which reached phase Succeeded.
    , succeededCount :: (Core.Maybe Core.Int32)
      -- | Output only. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution.
    , taskCount :: (Core.Maybe Core.Int32)
      -- | Output only. The template used to create tasks for this execution.
    , template :: (Core.Maybe GoogleCloudRunV2TaskTemplate)
      -- | Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Execution' with the minimum fields required to make a request.
newGoogleCloudRunV2Execution 
    ::  GoogleCloudRunV2Execution
newGoogleCloudRunV2Execution =
  GoogleCloudRunV2Execution
    { annotations = Core.Nothing
    , cancelledCount = Core.Nothing
    , completionTime = Core.Nothing
    , conditions = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , etag = Core.Nothing
    , expireTime = Core.Nothing
    , failedCount = Core.Nothing
    , generation = Core.Nothing
    , job = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , logUri = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , parallelism = Core.Nothing
    , reconciling = Core.Nothing
    , retriedCount = Core.Nothing
    , runningCount = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , startTime = Core.Nothing
    , succeededCount = Core.Nothing
    , taskCount = Core.Nothing
    , template = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Execution
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Execution"
              (\ o ->
                 GoogleCloudRunV2Execution Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "cancelledCount")
                     Core.<*> (o Core..:? "completionTime")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*> (o Core..:? "failedCount")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "job")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "logUri")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "parallelism")
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "retriedCount")
                     Core.<*> (o Core..:? "runningCount")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "succeededCount")
                     Core.<*> (o Core..:? "taskCount")
                     Core.<*> (o Core..:? "template")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON GoogleCloudRunV2Execution where
        toJSON GoogleCloudRunV2Execution{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("cancelledCount" Core..=) Core.<$> cancelledCount,
                  ("completionTime" Core..=) Core.<$> completionTime,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("etag" Core..=) Core.<$> etag,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("failedCount" Core..=) Core.<$> failedCount,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("job" Core..=) Core.<$> job,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("logUri" Core..=) Core.<$> logUri,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("parallelism" Core..=) Core.<$> parallelism,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("retriedCount" Core..=) Core.<$> retriedCount,
                  ("runningCount" Core..=) Core.<$> runningCount,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("succeededCount" Core..=) Core.<$> succeededCount,
                  ("taskCount" Core..=) Core.<$> taskCount,
                  ("template" Core..=) Core.<$> template,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
--
-- /See:/ 'newGoogleCloudRunV2Execution_Annotations' smart constructor.
newtype GoogleCloudRunV2Execution_Annotations = GoogleCloudRunV2Execution_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Execution_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Execution_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Execution_Annotations
newGoogleCloudRunV2Execution_Annotations additional =
  GoogleCloudRunV2Execution_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Execution_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2Execution_Annotations"
              (\ o ->
                 GoogleCloudRunV2Execution_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2Execution_Annotations
         where
        toJSON GoogleCloudRunV2Execution_Annotations{..}
          = Core.toJSON additional


-- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
--
-- /See:/ 'newGoogleCloudRunV2Execution_Labels' smart constructor.
newtype GoogleCloudRunV2Execution_Labels = GoogleCloudRunV2Execution_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Execution_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Execution_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Execution_Labels
newGoogleCloudRunV2Execution_Labels additional =
  GoogleCloudRunV2Execution_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Execution_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Execution_Labels"
              (\ o ->
                 GoogleCloudRunV2Execution_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Execution_Labels
         where
        toJSON GoogleCloudRunV2Execution_Labels{..}
          = Core.toJSON additional


-- | Reference to an Execution. Use \/Executions.GetExecution with the given name to get full execution including the latest status.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionReference' smart constructor.
data GoogleCloudRunV2ExecutionReference = GoogleCloudRunV2ExecutionReference
    {
      -- | Creation timestamp of the execution.
      completionTime :: (Core.Maybe Core.DateTime)
      -- | Creation timestamp of the execution.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Name of the execution.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionReference' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionReference 
    ::  GoogleCloudRunV2ExecutionReference
newGoogleCloudRunV2ExecutionReference =
  GoogleCloudRunV2ExecutionReference
    { completionTime = Core.Nothing
    , createTime = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ExecutionReference
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExecutionReference"
              (\ o ->
                 GoogleCloudRunV2ExecutionReference Core.<$>
                   (o Core..:? "completionTime") Core.<*>
                     (o Core..:? "createTime")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionReference
         where
        toJSON GoogleCloudRunV2ExecutionReference{..}
          = Core.object
              (Core.catMaybes
                 [("completionTime" Core..=) Core.<$> completionTime,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("name" Core..=) Core.<$> name])


-- | ExecutionTemplate describes the data an execution should have when created from a template.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionTemplate' smart constructor.
data GoogleCloudRunV2ExecutionTemplate = GoogleCloudRunV2ExecutionTemplate
    {
      -- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2ExecutionTemplate_Annotations)
      -- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
    , labels :: (Core.Maybe GoogleCloudRunV2ExecutionTemplate_Labels)
      -- | Specifies the maximum desired number of tasks the execution should run at given time. Must be \<= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
    , parallelism :: (Core.Maybe Core.Int32)
      -- | Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
    , taskCount :: (Core.Maybe Core.Int32)
      -- | Required. Describes the task(s) that will be created when executing an execution.
    , template :: (Core.Maybe GoogleCloudRunV2TaskTemplate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionTemplate' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionTemplate 
    ::  GoogleCloudRunV2ExecutionTemplate
newGoogleCloudRunV2ExecutionTemplate =
  GoogleCloudRunV2ExecutionTemplate
    { annotations = Core.Nothing
    , labels = Core.Nothing
    , parallelism = Core.Nothing
    , taskCount = Core.Nothing
    , template = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ExecutionTemplate
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ExecutionTemplate"
              (\ o ->
                 GoogleCloudRunV2ExecutionTemplate Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "parallelism")
                     Core.<*> (o Core..:? "taskCount")
                     Core.<*> (o Core..:? "template"))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionTemplate
         where
        toJSON GoogleCloudRunV2ExecutionTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("labels" Core..=) Core.<$> labels,
                  ("parallelism" Core..=) Core.<$> parallelism,
                  ("taskCount" Core..=) Core.<$> taskCount,
                  ("template" Core..=) Core.<$> template])


-- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionTemplate_Annotations' smart constructor.
newtype GoogleCloudRunV2ExecutionTemplate_Annotations = GoogleCloudRunV2ExecutionTemplate_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionTemplate_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionTemplate_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2ExecutionTemplate_Annotations
newGoogleCloudRunV2ExecutionTemplate_Annotations additional =
  GoogleCloudRunV2ExecutionTemplate_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2ExecutionTemplate_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExecutionTemplate_Annotations"
              (\ o ->
                 GoogleCloudRunV2ExecutionTemplate_Annotations
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionTemplate_Annotations
         where
        toJSON
          GoogleCloudRunV2ExecutionTemplate_Annotations{..}
          = Core.toJSON additional


-- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
--
-- /See:/ 'newGoogleCloudRunV2ExecutionTemplate_Labels' smart constructor.
newtype GoogleCloudRunV2ExecutionTemplate_Labels = GoogleCloudRunV2ExecutionTemplate_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ExecutionTemplate_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2ExecutionTemplate_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2ExecutionTemplate_Labels
newGoogleCloudRunV2ExecutionTemplate_Labels additional =
  GoogleCloudRunV2ExecutionTemplate_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2ExecutionTemplate_Labels
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ExecutionTemplate_Labels"
              (\ o ->
                 GoogleCloudRunV2ExecutionTemplate_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2ExecutionTemplate_Labels
         where
        toJSON GoogleCloudRunV2ExecutionTemplate_Labels{..}
          = Core.toJSON additional


-- | GRPCAction describes an action involving a GRPC port.
--
-- /See:/ 'newGoogleCloudRunV2GRPCAction' smart constructor.
data GoogleCloudRunV2GRPCAction = GoogleCloudRunV2GRPCAction
    {
      -- | Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
      port :: (Core.Maybe Core.Int32)
      -- | Service is the name of the service to place in the gRPC HealthCheckRequest (see https:\/\/github.com\/grpc\/grpc\/blob\/master\/doc\/health-checking.md). If this is not specified, the default behavior is defined by gRPC.
    , service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2GRPCAction' with the minimum fields required to make a request.
newGoogleCloudRunV2GRPCAction 
    ::  GoogleCloudRunV2GRPCAction
newGoogleCloudRunV2GRPCAction =
  GoogleCloudRunV2GRPCAction {port = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2GRPCAction
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2GRPCAction"
              (\ o ->
                 GoogleCloudRunV2GRPCAction Core.<$>
                   (o Core..:? "port") Core.<*> (o Core..:? "service"))

instance Core.ToJSON GoogleCloudRunV2GRPCAction where
        toJSON GoogleCloudRunV2GRPCAction{..}
          = Core.object
              (Core.catMaybes
                 [("port" Core..=) Core.<$> port,
                  ("service" Core..=) Core.<$> service])


-- | HTTPGetAction describes an action based on HTTP Get requests.
--
-- /See:/ 'newGoogleCloudRunV2HTTPGetAction' smart constructor.
data GoogleCloudRunV2HTTPGetAction = GoogleCloudRunV2HTTPGetAction
    {
      -- | Custom headers to set in the request. HTTP allows repeated headers.
      httpHeaders :: (Core.Maybe [GoogleCloudRunV2HTTPHeader])
      -- | Path to access on the HTTP server. Defaults to \'\/\'.
    , path :: (Core.Maybe Core.Text)
      -- | Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
    , port :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2HTTPGetAction' with the minimum fields required to make a request.
newGoogleCloudRunV2HTTPGetAction 
    ::  GoogleCloudRunV2HTTPGetAction
newGoogleCloudRunV2HTTPGetAction =
  GoogleCloudRunV2HTTPGetAction
    {httpHeaders = Core.Nothing, path = Core.Nothing, port = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2HTTPGetAction
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2HTTPGetAction"
              (\ o ->
                 GoogleCloudRunV2HTTPGetAction Core.<$>
                   (o Core..:? "httpHeaders") Core.<*>
                     (o Core..:? "path")
                     Core.<*> (o Core..:? "port"))

instance Core.ToJSON GoogleCloudRunV2HTTPGetAction
         where
        toJSON GoogleCloudRunV2HTTPGetAction{..}
          = Core.object
              (Core.catMaybes
                 [("httpHeaders" Core..=) Core.<$> httpHeaders,
                  ("path" Core..=) Core.<$> path,
                  ("port" Core..=) Core.<$> port])


-- | HTTPHeader describes a custom header to be used in HTTP probes
--
-- /See:/ 'newGoogleCloudRunV2HTTPHeader' smart constructor.
data GoogleCloudRunV2HTTPHeader = GoogleCloudRunV2HTTPHeader
    {
      -- | Required. The header field name
      name :: (Core.Maybe Core.Text)
      -- | The header field value
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2HTTPHeader' with the minimum fields required to make a request.
newGoogleCloudRunV2HTTPHeader 
    ::  GoogleCloudRunV2HTTPHeader
newGoogleCloudRunV2HTTPHeader =
  GoogleCloudRunV2HTTPHeader {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2HTTPHeader
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2HTTPHeader"
              (\ o ->
                 GoogleCloudRunV2HTTPHeader Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleCloudRunV2HTTPHeader where
        toJSON GoogleCloudRunV2HTTPHeader{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | Job represents the configuration of a single job, which references a container image that is run to completion.
--
-- /See:/ 'newGoogleCloudRunV2Job' smart constructor.
data GoogleCloudRunV2Job = GoogleCloudRunV2Job
    {
      -- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2Job_Annotations)
      -- | Settings for the Binary Authorization feature.
    , binaryAuthorization :: (Core.Maybe GoogleCloudRunV2BinaryAuthorization)
      -- | Arbitrary identifier for the API client.
    , client :: (Core.Maybe Core.Text)
      -- | Arbitrary version identifier for the API client.
    , clientVersion :: (Core.Maybe Core.Text)
      -- | Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Output only. The creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Email address of the authenticated creator.
    , creator :: (Core.Maybe Core.Text)
      -- | Output only. The deletion time.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. Number of executions created for this job.
    , executionCount :: (Core.Maybe Core.Int32)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
    , labels :: (Core.Maybe GoogleCloudRunV2Job_Labels)
      -- | Output only. Email address of the last authenticated modifier.
    , lastModifier :: (Core.Maybe Core.Text)
      -- | Output only. Name of the last created execution.
    , latestCreatedExecution :: (Core.Maybe GoogleCloudRunV2ExecutionReference)
      -- | The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Job_LaunchStage)
      -- | The fully qualified name of this Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Job. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, @observed_generation@ and @latest_succeeded_execution@, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in @terminal_condition.state@. If reconciliation succeeded, the following fields will match: @observed_generation@ and @generation@, @latest_succeeded_execution@ and @latest_created_execution@. If reconciliation failed, @observed_generation@ and @latest_succeeded_execution@ will have the state of the last succeeded execution or empty
      -- for newly created Job. Additional information on the failure can be found in @terminal_condition@ and @conditions@.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Required. The template used to create executions for this Job.
    , template :: (Core.Maybe GoogleCloudRunV2ExecutionTemplate)
      -- | Output only. The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.
    , terminalCondition :: (Core.Maybe GoogleCloudRunV2Condition)
      -- | Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Job' with the minimum fields required to make a request.
newGoogleCloudRunV2Job 
    ::  GoogleCloudRunV2Job
newGoogleCloudRunV2Job =
  GoogleCloudRunV2Job
    { annotations = Core.Nothing
    , binaryAuthorization = Core.Nothing
    , client = Core.Nothing
    , clientVersion = Core.Nothing
    , conditions = Core.Nothing
    , createTime = Core.Nothing
    , creator = Core.Nothing
    , deleteTime = Core.Nothing
    , etag = Core.Nothing
    , executionCount = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , labels = Core.Nothing
    , lastModifier = Core.Nothing
    , latestCreatedExecution = Core.Nothing
    , launchStage = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , template = Core.Nothing
    , terminalCondition = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Job where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Job"
              (\ o ->
                 GoogleCloudRunV2Job Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "binaryAuthorization")
                     Core.<*> (o Core..:? "client")
                     Core.<*> (o Core..:? "clientVersion")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "creator")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "executionCount")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "lastModifier")
                     Core.<*> (o Core..:? "latestCreatedExecution")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "template")
                     Core.<*> (o Core..:? "terminalCondition")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON GoogleCloudRunV2Job where
        toJSON GoogleCloudRunV2Job{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("binaryAuthorization" Core..=) Core.<$>
                    binaryAuthorization,
                  ("client" Core..=) Core.<$> client,
                  ("clientVersion" Core..=) Core.<$> clientVersion,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("creator" Core..=) Core.<$> creator,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("etag" Core..=) Core.<$> etag,
                  ("executionCount" Core..=) Core.<$> executionCount,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("labels" Core..=) Core.<$> labels,
                  ("lastModifier" Core..=) Core.<$> lastModifier,
                  ("latestCreatedExecution" Core..=) Core.<$>
                    latestCreatedExecution,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("template" Core..=) Core.<$> template,
                  ("terminalCondition" Core..=) Core.<$>
                    terminalCondition,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2Job_Annotations' smart constructor.
newtype GoogleCloudRunV2Job_Annotations = GoogleCloudRunV2Job_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Job_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Job_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Job_Annotations
newGoogleCloudRunV2Job_Annotations additional =
  GoogleCloudRunV2Job_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Job_Annotations
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Job_Annotations"
              (\ o ->
                 GoogleCloudRunV2Job_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Job_Annotations
         where
        toJSON GoogleCloudRunV2Job_Annotations{..}
          = Core.toJSON additional


-- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
--
-- /See:/ 'newGoogleCloudRunV2Job_Labels' smart constructor.
newtype GoogleCloudRunV2Job_Labels = GoogleCloudRunV2Job_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Job_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Job_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Job_Labels
newGoogleCloudRunV2Job_Labels additional =
  GoogleCloudRunV2Job_Labels {additional = additional}

instance Core.FromJSON GoogleCloudRunV2Job_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Job_Labels"
              (\ o ->
                 GoogleCloudRunV2Job_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Job_Labels where
        toJSON GoogleCloudRunV2Job_Labels{..}
          = Core.toJSON additional


-- | Response message containing a list of Executions.
--
-- /See:/ 'newGoogleCloudRunV2ListExecutionsResponse' smart constructor.
data GoogleCloudRunV2ListExecutionsResponse = GoogleCloudRunV2ListExecutionsResponse
    {
      -- | The resulting list of Executions.
      executions :: (Core.Maybe [GoogleCloudRunV2Execution])
      -- | A token indicating there are more items than page_size. Use it in the next ListExecutions request to continue.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListExecutionsResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListExecutionsResponse 
    ::  GoogleCloudRunV2ListExecutionsResponse
newGoogleCloudRunV2ListExecutionsResponse =
  GoogleCloudRunV2ListExecutionsResponse
    {executions = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListExecutionsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ListExecutionsResponse"
              (\ o ->
                 GoogleCloudRunV2ListExecutionsResponse Core.<$>
                   (o Core..:? "executions") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleCloudRunV2ListExecutionsResponse
         where
        toJSON GoogleCloudRunV2ListExecutionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("executions" Core..=) Core.<$> executions,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message containing a list of Jobs.
--
-- /See:/ 'newGoogleCloudRunV2ListJobsResponse' smart constructor.
data GoogleCloudRunV2ListJobsResponse = GoogleCloudRunV2ListJobsResponse
    {
      -- | The resulting list of Jobs.
      jobs :: (Core.Maybe [GoogleCloudRunV2Job])
      -- | A token indicating there are more items than page_size. Use it in the next ListJobs request to continue.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListJobsResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListJobsResponse 
    ::  GoogleCloudRunV2ListJobsResponse
newGoogleCloudRunV2ListJobsResponse =
  GoogleCloudRunV2ListJobsResponse
    {jobs = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListJobsResponse
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ListJobsResponse"
              (\ o ->
                 GoogleCloudRunV2ListJobsResponse Core.<$>
                   (o Core..:? "jobs") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON GoogleCloudRunV2ListJobsResponse
         where
        toJSON GoogleCloudRunV2ListJobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("jobs" Core..=) Core.<$> jobs,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message containing a list of Revisions.
--
-- /See:/ 'newGoogleCloudRunV2ListRevisionsResponse' smart constructor.
data GoogleCloudRunV2ListRevisionsResponse = GoogleCloudRunV2ListRevisionsResponse
    {
      -- | A token indicating there are more items than page_size. Use it in the next ListRevisions request to continue.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The resulting list of Revisions.
    , revisions :: (Core.Maybe [GoogleCloudRunV2Revision])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListRevisionsResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListRevisionsResponse 
    ::  GoogleCloudRunV2ListRevisionsResponse
newGoogleCloudRunV2ListRevisionsResponse =
  GoogleCloudRunV2ListRevisionsResponse
    {nextPageToken = Core.Nothing, revisions = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListRevisionsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ListRevisionsResponse"
              (\ o ->
                 GoogleCloudRunV2ListRevisionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "revisions"))

instance Core.ToJSON
           GoogleCloudRunV2ListRevisionsResponse
         where
        toJSON GoogleCloudRunV2ListRevisionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("revisions" Core..=) Core.<$> revisions])


-- | Response message containing a list of Services.
--
-- /See:/ 'newGoogleCloudRunV2ListServicesResponse' smart constructor.
data GoogleCloudRunV2ListServicesResponse = GoogleCloudRunV2ListServicesResponse
    {
      -- | A token indicating there are more items than page_size. Use it in the next ListServices request to continue.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The resulting list of Services.
    , services :: (Core.Maybe [GoogleCloudRunV2Service])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListServicesResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListServicesResponse 
    ::  GoogleCloudRunV2ListServicesResponse
newGoogleCloudRunV2ListServicesResponse =
  GoogleCloudRunV2ListServicesResponse
    {nextPageToken = Core.Nothing, services = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListServicesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ListServicesResponse"
              (\ o ->
                 GoogleCloudRunV2ListServicesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "services"))

instance Core.ToJSON
           GoogleCloudRunV2ListServicesResponse
         where
        toJSON GoogleCloudRunV2ListServicesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("services" Core..=) Core.<$> services])


-- | Response message containing a list of Tasks.
--
-- /See:/ 'newGoogleCloudRunV2ListTasksResponse' smart constructor.
data GoogleCloudRunV2ListTasksResponse = GoogleCloudRunV2ListTasksResponse
    {
      -- | A token indicating there are more items than page_size. Use it in the next ListTasks request to continue.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The resulting list of Tasks.
    , tasks :: (Core.Maybe [GoogleCloudRunV2Task])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ListTasksResponse' with the minimum fields required to make a request.
newGoogleCloudRunV2ListTasksResponse 
    ::  GoogleCloudRunV2ListTasksResponse
newGoogleCloudRunV2ListTasksResponse =
  GoogleCloudRunV2ListTasksResponse
    {nextPageToken = Core.Nothing, tasks = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2ListTasksResponse
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2ListTasksResponse"
              (\ o ->
                 GoogleCloudRunV2ListTasksResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "tasks"))

instance Core.ToJSON
           GoogleCloudRunV2ListTasksResponse
         where
        toJSON GoogleCloudRunV2ListTasksResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("tasks" Core..=) Core.<$> tasks])


-- | Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
--
-- /See:/ 'newGoogleCloudRunV2Probe' smart constructor.
data GoogleCloudRunV2Probe = GoogleCloudRunV2Probe
    {
      -- | Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
      failureThreshold :: (Core.Maybe Core.Int32)
      -- | GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
    , grpc :: (Core.Maybe GoogleCloudRunV2GRPCAction)
      -- | HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
    , httpGet :: (Core.Maybe GoogleCloudRunV2HTTPGetAction)
      -- | Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
    , initialDelaySeconds :: (Core.Maybe Core.Int32)
      -- | How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
    , periodSeconds :: (Core.Maybe Core.Int32)
      -- | TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
    , tcpSocket :: (Core.Maybe GoogleCloudRunV2TCPSocketAction)
      -- | Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
    , timeoutSeconds :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Probe' with the minimum fields required to make a request.
newGoogleCloudRunV2Probe 
    ::  GoogleCloudRunV2Probe
newGoogleCloudRunV2Probe =
  GoogleCloudRunV2Probe
    { failureThreshold = Core.Nothing
    , grpc = Core.Nothing
    , httpGet = Core.Nothing
    , initialDelaySeconds = Core.Nothing
    , periodSeconds = Core.Nothing
    , tcpSocket = Core.Nothing
    , timeoutSeconds = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Probe where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Probe"
              (\ o ->
                 GoogleCloudRunV2Probe Core.<$>
                   (o Core..:? "failureThreshold") Core.<*>
                     (o Core..:? "grpc")
                     Core.<*> (o Core..:? "httpGet")
                     Core.<*> (o Core..:? "initialDelaySeconds")
                     Core.<*> (o Core..:? "periodSeconds")
                     Core.<*> (o Core..:? "tcpSocket")
                     Core.<*> (o Core..:? "timeoutSeconds"))

instance Core.ToJSON GoogleCloudRunV2Probe where
        toJSON GoogleCloudRunV2Probe{..}
          = Core.object
              (Core.catMaybes
                 [("failureThreshold" Core..=) Core.<$>
                    failureThreshold,
                  ("grpc" Core..=) Core.<$> grpc,
                  ("httpGet" Core..=) Core.<$> httpGet,
                  ("initialDelaySeconds" Core..=) Core.<$>
                    initialDelaySeconds,
                  ("periodSeconds" Core..=) Core.<$> periodSeconds,
                  ("tcpSocket" Core..=) Core.<$> tcpSocket,
                  ("timeoutSeconds" Core..=) Core.<$> timeoutSeconds])


-- | ResourceRequirements describes the compute resource requirements.
--
-- /See:/ 'newGoogleCloudRunV2ResourceRequirements' smart constructor.
data GoogleCloudRunV2ResourceRequirements = GoogleCloudRunV2ResourceRequirements
    {
      -- | Determines whether CPU should be throttled or not outside of requests.
      cpuIdle :: (Core.Maybe Core.Bool)
      -- | Only ´memory´ and \'cpu\' are supported. Notes: * The only supported values for CPU are \'1\', \'2\', \'4\', and \'8\'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/cpu. * For supported \'memory\' values and syntax, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/memory-limits
    , limits :: (Core.Maybe GoogleCloudRunV2ResourceRequirements_Limits)
      -- | Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
    , startupCpuBoost :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ResourceRequirements' with the minimum fields required to make a request.
newGoogleCloudRunV2ResourceRequirements 
    ::  GoogleCloudRunV2ResourceRequirements
newGoogleCloudRunV2ResourceRequirements =
  GoogleCloudRunV2ResourceRequirements
    { cpuIdle = Core.Nothing
    , limits = Core.Nothing
    , startupCpuBoost = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2ResourceRequirements
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ResourceRequirements"
              (\ o ->
                 GoogleCloudRunV2ResourceRequirements Core.<$>
                   (o Core..:? "cpuIdle") Core.<*> (o Core..:? "limits")
                     Core.<*> (o Core..:? "startupCpuBoost"))

instance Core.ToJSON
           GoogleCloudRunV2ResourceRequirements
         where
        toJSON GoogleCloudRunV2ResourceRequirements{..}
          = Core.object
              (Core.catMaybes
                 [("cpuIdle" Core..=) Core.<$> cpuIdle,
                  ("limits" Core..=) Core.<$> limits,
                  ("startupCpuBoost" Core..=) Core.<$>
                    startupCpuBoost])


-- | Only ´memory´ and \'cpu\' are supported. Notes: * The only supported values for CPU are \'1\', \'2\', \'4\', and \'8\'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/cpu. * For supported \'memory\' values and syntax, go to https:\/\/cloud.google.com\/run\/docs\/configuring\/memory-limits
--
-- /See:/ 'newGoogleCloudRunV2ResourceRequirements_Limits' smart constructor.
newtype GoogleCloudRunV2ResourceRequirements_Limits = GoogleCloudRunV2ResourceRequirements_Limits
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2ResourceRequirements_Limits' with the minimum fields required to make a request.
newGoogleCloudRunV2ResourceRequirements_Limits 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2ResourceRequirements_Limits
newGoogleCloudRunV2ResourceRequirements_Limits additional =
  GoogleCloudRunV2ResourceRequirements_Limits {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2ResourceRequirements_Limits
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2ResourceRequirements_Limits"
              (\ o ->
                 GoogleCloudRunV2ResourceRequirements_Limits Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2ResourceRequirements_Limits
         where
        toJSON
          GoogleCloudRunV2ResourceRequirements_Limits{..}
          = Core.toJSON additional


-- | A Revision is an immutable snapshot of code and configuration. A Revision references a container image. Revisions are only created by updates to its parent Service.
--
-- /See:/ 'newGoogleCloudRunV2Revision' smart constructor.
data GoogleCloudRunV2Revision = GoogleCloudRunV2Revision
    {
      -- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
      annotations :: (Core.Maybe GoogleCloudRunV2Revision_Annotations)
      -- | Output only. The Condition of this Revision, containing its readiness status, and detailed error information in case it did not reach a serving state.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Holds the single container that defines the unit of execution for this Revision.
    , containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | Output only. The creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | The action to take if the encryption key is revoked.
    , encryptionKeyRevocationAction :: (Core.Maybe GoogleCloudRunV2Revision_EncryptionKeyRevocationAction)
      -- | If encryption/key/revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
    , encryptionKeyShutdownDuration :: (Core.Maybe Core.Duration)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | The execution environment being used to host this Revision.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2Revision_ExecutionEnvironment)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels.
    , labels :: (Core.Maybe GoogleCloudRunV2Revision_Labels)
      -- | The least stable launch stage needed to create this resource, as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Revision_LaunchStage)
      -- | Output only. The Google Console URI to obtain logs for the Revision.
    , logUri :: (Core.Maybe Core.Text)
      -- | Sets the maximum number of requests that each serving instance can receive.
    , maxInstanceRequestConcurrency :: (Core.Maybe Core.Int32)
      -- | Output only. The unique name of this Revision.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Revision currently serving traffic. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Indicates whether the resource\'s reconciliation is still in progress. See comments in @Service.reconciling@ for additional information on reconciliation process in Cloud Run.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Scaling settings for this revision.
    , scaling :: (Core.Maybe GoogleCloudRunV2RevisionScaling)
      -- | Output only. The name of the parent service.
    , service :: (Core.Maybe Core.Text)
      -- | Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Enable session affinity.
    , sessionAffinity :: (Core.Maybe Core.Bool)
      -- | Max allowed time for an instance to respond to a request.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Server assigned unique identifier for the Revision. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | VPC Access configuration for this Revision. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Revision' with the minimum fields required to make a request.
newGoogleCloudRunV2Revision 
    ::  GoogleCloudRunV2Revision
newGoogleCloudRunV2Revision =
  GoogleCloudRunV2Revision
    { annotations = Core.Nothing
    , conditions = Core.Nothing
    , containers = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , encryptionKey = Core.Nothing
    , encryptionKeyRevocationAction = Core.Nothing
    , encryptionKeyShutdownDuration = Core.Nothing
    , etag = Core.Nothing
    , executionEnvironment = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , logUri = Core.Nothing
    , maxInstanceRequestConcurrency = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , scaling = Core.Nothing
    , service = Core.Nothing
    , serviceAccount = Core.Nothing
    , sessionAffinity = Core.Nothing
    , timeout = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Revision where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Revision"
              (\ o ->
                 GoogleCloudRunV2Revision Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "conditions")
                     Core.<*> (o Core..:? "containers")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "encryptionKeyRevocationAction")
                     Core.<*> (o Core..:? "encryptionKeyShutdownDuration")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "logUri")
                     Core.<*> (o Core..:? "maxInstanceRequestConcurrency")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "scaling")
                     Core.<*> (o Core..:? "service")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "sessionAffinity")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2Revision where
        toJSON GoogleCloudRunV2Revision{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("containers" Core..=) Core.<$> containers,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("encryptionKeyRevocationAction" Core..=) Core.<$>
                    encryptionKeyRevocationAction,
                  ("encryptionKeyShutdownDuration" Core..=) Core.<$>
                    encryptionKeyShutdownDuration,
                  ("etag" Core..=) Core.<$> etag,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("logUri" Core..=) Core.<$> logUri,
                  ("maxInstanceRequestConcurrency" Core..=) Core.<$>
                    maxInstanceRequestConcurrency,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("scaling" Core..=) Core.<$> scaling,
                  ("service" Core..=) Core.<$> service,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("sessionAffinity" Core..=) Core.<$> sessionAffinity,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
--
-- /See:/ 'newGoogleCloudRunV2Revision_Annotations' smart constructor.
newtype GoogleCloudRunV2Revision_Annotations = GoogleCloudRunV2Revision_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Revision_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Revision_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Revision_Annotations
newGoogleCloudRunV2Revision_Annotations additional =
  GoogleCloudRunV2Revision_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Revision_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2Revision_Annotations"
              (\ o ->
                 GoogleCloudRunV2Revision_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2Revision_Annotations
         where
        toJSON GoogleCloudRunV2Revision_Annotations{..}
          = Core.toJSON additional


-- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels.
--
-- /See:/ 'newGoogleCloudRunV2Revision_Labels' smart constructor.
newtype GoogleCloudRunV2Revision_Labels = GoogleCloudRunV2Revision_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Revision_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Revision_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Revision_Labels
newGoogleCloudRunV2Revision_Labels additional =
  GoogleCloudRunV2Revision_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Revision_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Revision_Labels"
              (\ o ->
                 GoogleCloudRunV2Revision_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Revision_Labels
         where
        toJSON GoogleCloudRunV2Revision_Labels{..}
          = Core.toJSON additional


-- | Settings for revision-level scaling settings.
--
-- /See:/ 'newGoogleCloudRunV2RevisionScaling' smart constructor.
data GoogleCloudRunV2RevisionScaling = GoogleCloudRunV2RevisionScaling
    {
      -- | Maximum number of serving instances that this resource should have.
      maxInstanceCount :: (Core.Maybe Core.Int32)
      -- | Minimum number of serving instances that this resource should have.
    , minInstanceCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionScaling' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionScaling 
    ::  GoogleCloudRunV2RevisionScaling
newGoogleCloudRunV2RevisionScaling =
  GoogleCloudRunV2RevisionScaling
    {maxInstanceCount = Core.Nothing, minInstanceCount = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2RevisionScaling
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2RevisionScaling"
              (\ o ->
                 GoogleCloudRunV2RevisionScaling Core.<$>
                   (o Core..:? "maxInstanceCount") Core.<*>
                     (o Core..:? "minInstanceCount"))

instance Core.ToJSON GoogleCloudRunV2RevisionScaling
         where
        toJSON GoogleCloudRunV2RevisionScaling{..}
          = Core.object
              (Core.catMaybes
                 [("maxInstanceCount" Core..=) Core.<$>
                    maxInstanceCount,
                  ("minInstanceCount" Core..=) Core.<$>
                    minInstanceCount])


-- | RevisionTemplate describes the data a revision should have when created from a template.
--
-- /See:/ 'newGoogleCloudRunV2RevisionTemplate' smart constructor.
data GoogleCloudRunV2RevisionTemplate = GoogleCloudRunV2RevisionTemplate
    {
      -- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2RevisionTemplate_Annotations)
      -- | Holds the single container that defines the unit of execution for this Revision.
    , containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | The sandbox environment to host this Revision.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment)
      -- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
    , labels :: (Core.Maybe GoogleCloudRunV2RevisionTemplate_Labels)
      -- | Sets the maximum number of requests that each serving instance can receive.
    , maxInstanceRequestConcurrency :: (Core.Maybe Core.Int32)
      -- | The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
    , revision :: (Core.Maybe Core.Text)
      -- | Scaling settings for this Revision.
    , scaling :: (Core.Maybe GoogleCloudRunV2RevisionScaling)
      -- | Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project\'s default service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Enable session affinity.
    , sessionAffinity :: (Core.Maybe Core.Bool)
      -- | Max allowed time for an instance to respond to a request.
    , timeout :: (Core.Maybe Core.Duration)
      -- | A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | VPC Access configuration to use for this Revision. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionTemplate' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionTemplate 
    ::  GoogleCloudRunV2RevisionTemplate
newGoogleCloudRunV2RevisionTemplate =
  GoogleCloudRunV2RevisionTemplate
    { annotations = Core.Nothing
    , containers = Core.Nothing
    , encryptionKey = Core.Nothing
    , executionEnvironment = Core.Nothing
    , labels = Core.Nothing
    , maxInstanceRequestConcurrency = Core.Nothing
    , revision = Core.Nothing
    , scaling = Core.Nothing
    , serviceAccount = Core.Nothing
    , sessionAffinity = Core.Nothing
    , timeout = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2RevisionTemplate
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2RevisionTemplate"
              (\ o ->
                 GoogleCloudRunV2RevisionTemplate Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "containers")
                     Core.<*> (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "maxInstanceRequestConcurrency")
                     Core.<*> (o Core..:? "revision")
                     Core.<*> (o Core..:? "scaling")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "sessionAffinity")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2RevisionTemplate
         where
        toJSON GoogleCloudRunV2RevisionTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("containers" Core..=) Core.<$> containers,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("labels" Core..=) Core.<$> labels,
                  ("maxInstanceRequestConcurrency" Core..=) Core.<$>
                    maxInstanceRequestConcurrency,
                  ("revision" Core..=) Core.<$> revision,
                  ("scaling" Core..=) Core.<$> scaling,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("sessionAffinity" Core..=) Core.<$> sessionAffinity,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2RevisionTemplate_Annotations' smart constructor.
newtype GoogleCloudRunV2RevisionTemplate_Annotations = GoogleCloudRunV2RevisionTemplate_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionTemplate_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionTemplate_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2RevisionTemplate_Annotations
newGoogleCloudRunV2RevisionTemplate_Annotations additional =
  GoogleCloudRunV2RevisionTemplate_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2RevisionTemplate_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2RevisionTemplate_Annotations"
              (\ o ->
                 GoogleCloudRunV2RevisionTemplate_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2RevisionTemplate_Annotations
         where
        toJSON
          GoogleCloudRunV2RevisionTemplate_Annotations{..}
          = Core.toJSON additional


-- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
--
-- /See:/ 'newGoogleCloudRunV2RevisionTemplate_Labels' smart constructor.
newtype GoogleCloudRunV2RevisionTemplate_Labels = GoogleCloudRunV2RevisionTemplate_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RevisionTemplate_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2RevisionTemplate_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2RevisionTemplate_Labels
newGoogleCloudRunV2RevisionTemplate_Labels additional =
  GoogleCloudRunV2RevisionTemplate_Labels {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2RevisionTemplate_Labels
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2RevisionTemplate_Labels"
              (\ o ->
                 GoogleCloudRunV2RevisionTemplate_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2RevisionTemplate_Labels
         where
        toJSON GoogleCloudRunV2RevisionTemplate_Labels{..}
          = Core.toJSON additional


-- | Request message to create a new Execution of a Job.
--
-- /See:/ 'newGoogleCloudRunV2RunJobRequest' smart constructor.
data GoogleCloudRunV2RunJobRequest = GoogleCloudRunV2RunJobRequest
    {
      -- | A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
      etag :: (Core.Maybe Core.Text)
      -- | Indicates that the request should be validated without actually deleting any resources.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2RunJobRequest' with the minimum fields required to make a request.
newGoogleCloudRunV2RunJobRequest 
    ::  GoogleCloudRunV2RunJobRequest
newGoogleCloudRunV2RunJobRequest =
  GoogleCloudRunV2RunJobRequest
    {etag = Core.Nothing, validateOnly = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2RunJobRequest
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2RunJobRequest"
              (\ o ->
                 GoogleCloudRunV2RunJobRequest Core.<$>
                   (o Core..:? "etag") Core.<*>
                     (o Core..:? "validateOnly"))

instance Core.ToJSON GoogleCloudRunV2RunJobRequest
         where
        toJSON GoogleCloudRunV2RunJobRequest{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("validateOnly" Core..=) Core.<$> validateOnly])


-- | SecretEnvVarSource represents a source for the value of an EnvVar.
--
-- /See:/ 'newGoogleCloudRunV2SecretKeySelector' smart constructor.
data GoogleCloudRunV2SecretKeySelector = GoogleCloudRunV2SecretKeySelector
    {
      -- | Required. The name of the secret in Cloud Secret Manager. Format: {secret/name} if the secret is in the same project. projects\/{project}\/secrets\/{secret/name} if the secret is in a different project.
      secret :: (Core.Maybe Core.Text)
      -- | The Cloud Secret Manager secret version. Can be \'latest\' for the latest version, an integer for a specific version, or a version alias.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2SecretKeySelector' with the minimum fields required to make a request.
newGoogleCloudRunV2SecretKeySelector 
    ::  GoogleCloudRunV2SecretKeySelector
newGoogleCloudRunV2SecretKeySelector =
  GoogleCloudRunV2SecretKeySelector
    {secret = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2SecretKeySelector
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2SecretKeySelector"
              (\ o ->
                 GoogleCloudRunV2SecretKeySelector Core.<$>
                   (o Core..:? "secret") Core.<*>
                     (o Core..:? "version"))

instance Core.ToJSON
           GoogleCloudRunV2SecretKeySelector
         where
        toJSON GoogleCloudRunV2SecretKeySelector{..}
          = Core.object
              (Core.catMaybes
                 [("secret" Core..=) Core.<$> secret,
                  ("version" Core..=) Core.<$> version])


-- | The secret\'s value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret.
--
-- /See:/ 'newGoogleCloudRunV2SecretVolumeSource' smart constructor.
data GoogleCloudRunV2SecretVolumeSource = GoogleCloudRunV2SecretVolumeSource
    {
      -- | Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. This might be in conflict with other options that affect the file mode, like fsGroup, and as a result, other mode bits could be set.
      defaultMode :: (Core.Maybe Core.Int32)
      -- | If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.
    , items :: (Core.Maybe [GoogleCloudRunV2VersionToPath])
      -- | Required. The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects\/{project}\/secrets\/{secret} if the secret is in a different project.
    , secret :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2SecretVolumeSource' with the minimum fields required to make a request.
newGoogleCloudRunV2SecretVolumeSource 
    ::  GoogleCloudRunV2SecretVolumeSource
newGoogleCloudRunV2SecretVolumeSource =
  GoogleCloudRunV2SecretVolumeSource
    {defaultMode = Core.Nothing, items = Core.Nothing, secret = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2SecretVolumeSource
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2SecretVolumeSource"
              (\ o ->
                 GoogleCloudRunV2SecretVolumeSource Core.<$>
                   (o Core..:? "defaultMode") Core.<*>
                     (o Core..:? "items")
                     Core.<*> (o Core..:? "secret"))

instance Core.ToJSON
           GoogleCloudRunV2SecretVolumeSource
         where
        toJSON GoogleCloudRunV2SecretVolumeSource{..}
          = Core.object
              (Core.catMaybes
                 [("defaultMode" Core..=) Core.<$> defaultMode,
                  ("items" Core..=) Core.<$> items,
                  ("secret" Core..=) Core.<$> secret])


-- | Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.
--
-- /See:/ 'newGoogleCloudRunV2Service' smart constructor.
data GoogleCloudRunV2Service = GoogleCloudRunV2Service
    {
      -- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations\' namespacing, limits, and rules.
      annotations :: (Core.Maybe GoogleCloudRunV2Service_Annotations)
      -- | Settings for the Binary Authorization feature.
    , binaryAuthorization :: (Core.Maybe GoogleCloudRunV2BinaryAuthorization)
      -- | Arbitrary identifier for the API client.
    , client :: (Core.Maybe Core.Text)
      -- | Arbitrary version identifier for the API client.
    , clientVersion :: (Core.Maybe Core.Text)
      -- | Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Output only. The creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Email address of the authenticated creator.
    , creator :: (Core.Maybe Core.Text)
      -- | Output only. The deletion time.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | User-provided description of the Service. This field currently has a 512-character limit.
    , description :: (Core.Maybe Core.Text)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a @string@ instead of an @integer@.
    , generation :: (Core.Maybe Core.Int64)
      -- | Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS/TRAFFIC/UNSPECIFIED if no revision is active.
    , ingress :: (Core.Maybe GoogleCloudRunV2Service_Ingress)
      -- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
    , labels :: (Core.Maybe GoogleCloudRunV2Service_Labels)
      -- | Output only. Email address of the last authenticated modifier.
    , lastModifier :: (Core.Maybe Core.Text)
      -- | Output only. Name of the last created revision. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , latestCreatedRevision :: (Core.Maybe Core.Text)
      -- | Output only. Name of the latest revision that is serving traffic. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , latestReadyRevision :: (Core.Maybe Core.Text)
      -- | The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
    , launchStage :: (Core.Maybe GoogleCloudRunV2Service_LaunchStage)
      -- | The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service/id. Format: projects\/{project}\/locations\/{location}\/services\/{service/id}
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Service currently serving traffic. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a @string@ instead of an @integer@.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, @observed_generation@, @latest_ready_revison@, @traffic_statuses@, and @uri@ will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in @terminal_condition.state@. If reconciliation succeeded, the following fields will match: @traffic@ and @traffic_statuses@, @observed_generation@ and @generation@, @latest_ready_revision@ and @latest_created_revision@. If reconciliation failed, @traffic_statuses@,
      -- @observed_generation@, and @latest_ready_revision@ will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in @terminal_condition@ and @conditions@.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Required. The template used to create revisions for this Service.
    , template :: (Core.Maybe GoogleCloudRunV2RevisionTemplate)
      -- | Output only. The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , terminalCondition :: (Core.Maybe GoogleCloudRunV2Condition)
      -- | Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest @Ready@ Revision.
    , traffic :: (Core.Maybe [GoogleCloudRunV2TrafficTarget])
      -- | Output only. Detailed status information for corresponding traffic targets. See comments in @reconciling@ for additional information on reconciliation process in Cloud Run.
    , trafficStatuses :: (Core.Maybe [GoogleCloudRunV2TrafficTargetStatus])
      -- | Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The main URI in which this Service is serving traffic.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Service' with the minimum fields required to make a request.
newGoogleCloudRunV2Service 
    ::  GoogleCloudRunV2Service
newGoogleCloudRunV2Service =
  GoogleCloudRunV2Service
    { annotations = Core.Nothing
    , binaryAuthorization = Core.Nothing
    , client = Core.Nothing
    , clientVersion = Core.Nothing
    , conditions = Core.Nothing
    , createTime = Core.Nothing
    , creator = Core.Nothing
    , deleteTime = Core.Nothing
    , description = Core.Nothing
    , etag = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , ingress = Core.Nothing
    , labels = Core.Nothing
    , lastModifier = Core.Nothing
    , latestCreatedRevision = Core.Nothing
    , latestReadyRevision = Core.Nothing
    , launchStage = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , template = Core.Nothing
    , terminalCondition = Core.Nothing
    , traffic = Core.Nothing
    , trafficStatuses = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    , uri = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Service where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Service"
              (\ o ->
                 GoogleCloudRunV2Service Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "binaryAuthorization")
                     Core.<*> (o Core..:? "client")
                     Core.<*> (o Core..:? "clientVersion")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "creator")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "ingress")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "lastModifier")
                     Core.<*> (o Core..:? "latestCreatedRevision")
                     Core.<*> (o Core..:? "latestReadyRevision")
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "template")
                     Core.<*> (o Core..:? "terminalCondition")
                     Core.<*> (o Core..:? "traffic")
                     Core.<*> (o Core..:? "trafficStatuses")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON GoogleCloudRunV2Service where
        toJSON GoogleCloudRunV2Service{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("binaryAuthorization" Core..=) Core.<$>
                    binaryAuthorization,
                  ("client" Core..=) Core.<$> client,
                  ("clientVersion" Core..=) Core.<$> clientVersion,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("creator" Core..=) Core.<$> creator,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("ingress" Core..=) Core.<$> ingress,
                  ("labels" Core..=) Core.<$> labels,
                  ("lastModifier" Core..=) Core.<$> lastModifier,
                  ("latestCreatedRevision" Core..=) Core.<$>
                    latestCreatedRevision,
                  ("latestReadyRevision" Core..=) Core.<$>
                    latestReadyRevision,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("template" Core..=) Core.<$> template,
                  ("terminalCondition" Core..=) Core.<$>
                    terminalCondition,
                  ("traffic" Core..=) Core.<$> traffic,
                  ("trafficStatuses" Core..=) Core.<$> trafficStatuses,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("uri" Core..=) Core.<$> uri])


-- | Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations\' namespacing, limits, and rules.
--
-- /See:/ 'newGoogleCloudRunV2Service_Annotations' smart constructor.
newtype GoogleCloudRunV2Service_Annotations = GoogleCloudRunV2Service_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Service_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Service_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Service_Annotations
newGoogleCloudRunV2Service_Annotations additional =
  GoogleCloudRunV2Service_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Service_Annotations
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2Service_Annotations"
              (\ o ->
                 GoogleCloudRunV2Service_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleCloudRunV2Service_Annotations
         where
        toJSON GoogleCloudRunV2Service_Annotations{..}
          = Core.toJSON additional


-- | Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels. Cloud Run API v2 does not support labels with @run.googleapis.com@, @cloud.googleapis.com@, @serving.knative.dev@, or @autoscaling.knative.dev@ namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
--
-- /See:/ 'newGoogleCloudRunV2Service_Labels' smart constructor.
newtype GoogleCloudRunV2Service_Labels = GoogleCloudRunV2Service_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Service_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Service_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Service_Labels
newGoogleCloudRunV2Service_Labels additional =
  GoogleCloudRunV2Service_Labels {additional = additional}

instance Core.FromJSON GoogleCloudRunV2Service_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Service_Labels"
              (\ o ->
                 GoogleCloudRunV2Service_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Service_Labels
         where
        toJSON GoogleCloudRunV2Service_Labels{..}
          = Core.toJSON additional


-- | TCPSocketAction describes an action based on opening a socket
--
-- /See:/ 'newGoogleCloudRunV2TCPSocketAction' smart constructor.
newtype GoogleCloudRunV2TCPSocketAction = GoogleCloudRunV2TCPSocketAction
    {
      -- | Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
      port :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TCPSocketAction' with the minimum fields required to make a request.
newGoogleCloudRunV2TCPSocketAction 
    ::  GoogleCloudRunV2TCPSocketAction
newGoogleCloudRunV2TCPSocketAction =
  GoogleCloudRunV2TCPSocketAction {port = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2TCPSocketAction
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TCPSocketAction"
              (\ o ->
                 GoogleCloudRunV2TCPSocketAction Core.<$>
                   (o Core..:? "port"))

instance Core.ToJSON GoogleCloudRunV2TCPSocketAction
         where
        toJSON GoogleCloudRunV2TCPSocketAction{..}
          = Core.object
              (Core.catMaybes [("port" Core..=) Core.<$> port])


-- | Task represents a single run of a container to completion.
--
-- /See:/ 'newGoogleCloudRunV2Task' smart constructor.
data GoogleCloudRunV2Task = GoogleCloudRunV2Task
    {
      -- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
      annotations :: (Core.Maybe GoogleCloudRunV2Task_Annotations)
      -- | Output only. Represents time when the Task was completed. It is not guaranteed to be set in happens-before order across separate operations.
    , completionTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The Condition of this Task, containing its readiness status, and detailed error information in case it did not reach the desired state.
    , conditions :: (Core.Maybe [GoogleCloudRunV2Condition])
      -- | Holds the single container that defines the unit of execution for this task.
    , containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | Output only. Represents time when the task was created by the job controller. It is not guaranteed to be set in happens-before order across separate operations.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. The name of the parent Execution.
    , execution :: (Core.Maybe Core.Text)
      -- | The execution environment being used to host this Task.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2Task_ExecutionEnvironment)
      -- | Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A number that monotonically increases every time the user modifies the desired state.
    , generation :: (Core.Maybe Core.Int64)
      -- | Output only. Index of the Task, unique per execution, and beginning at 0.
    , index :: (Core.Maybe Core.Int32)
      -- | Output only. The name of the parent Job.
    , job :: (Core.Maybe Core.Text)
      -- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
    , labels :: (Core.Maybe GoogleCloudRunV2Task_Labels)
      -- | Output only. Result of the last attempt of this Task.
    , lastAttemptResult :: (Core.Maybe GoogleCloudRunV2TaskAttemptResult)
      -- | Output only. URI where logs for this execution can be found in Cloud Console.
    , logUri :: (Core.Maybe Core.Text)
      -- | Number of retries allowed per Task, before marking this Task failed.
    , maxRetries :: (Core.Maybe Core.Int32)
      -- | Output only. The unique name of this Task.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The generation of this Task. See comments in @Job.reconciling@ for additional information on reconciliation process in Cloud Run.
    , observedGeneration :: (Core.Maybe Core.Int64)
      -- | Output only. Indicates whether the resource\'s reconciliation is still in progress. See comments in @Job.reconciling@ for additional information on reconciliation process in Cloud Run.
    , reconciling :: (Core.Maybe Core.Bool)
      -- | Output only. The number of times this Task was retried. Tasks are retried when they fail up to the maxRetries limit.
    , retried :: (Core.Maybe Core.Int32)
      -- | Output only. Reserved for future use.
    , satisfiesPzs :: (Core.Maybe Core.Bool)
      -- | Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project\'s default service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Output only. Represents time when the task started to run. It is not guaranteed to be set in happens-before order across separate operations.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Server assigned unique identifier for the Task. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The last-modified time.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | Output only. VPC Access configuration to use for this Task. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Task' with the minimum fields required to make a request.
newGoogleCloudRunV2Task 
    ::  GoogleCloudRunV2Task
newGoogleCloudRunV2Task =
  GoogleCloudRunV2Task
    { annotations = Core.Nothing
    , completionTime = Core.Nothing
    , conditions = Core.Nothing
    , containers = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , encryptionKey = Core.Nothing
    , etag = Core.Nothing
    , execution = Core.Nothing
    , executionEnvironment = Core.Nothing
    , expireTime = Core.Nothing
    , generation = Core.Nothing
    , index = Core.Nothing
    , job = Core.Nothing
    , labels = Core.Nothing
    , lastAttemptResult = Core.Nothing
    , logUri = Core.Nothing
    , maxRetries = Core.Nothing
    , name = Core.Nothing
    , observedGeneration = Core.Nothing
    , reconciling = Core.Nothing
    , retried = Core.Nothing
    , satisfiesPzs = Core.Nothing
    , serviceAccount = Core.Nothing
    , startTime = Core.Nothing
    , timeout = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Task where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Task"
              (\ o ->
                 GoogleCloudRunV2Task Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "completionTime")
                     Core.<*> (o Core..:? "conditions")
                     Core.<*> (o Core..:? "containers")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "execution")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "index")
                     Core.<*> (o Core..:? "job")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "lastAttemptResult")
                     Core.<*> (o Core..:? "logUri")
                     Core.<*> (o Core..:? "maxRetries")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "observedGeneration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "reconciling")
                     Core.<*> (o Core..:? "retried")
                     Core.<*> (o Core..:? "satisfiesPzs")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2Task where
        toJSON GoogleCloudRunV2Task{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("completionTime" Core..=) Core.<$> completionTime,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("containers" Core..=) Core.<$> containers,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("etag" Core..=) Core.<$> etag,
                  ("execution" Core..=) Core.<$> execution,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("index" Core..=) Core.<$> index,
                  ("job" Core..=) Core.<$> job,
                  ("labels" Core..=) Core.<$> labels,
                  ("lastAttemptResult" Core..=) Core.<$>
                    lastAttemptResult,
                  ("logUri" Core..=) Core.<$> logUri,
                  ("maxRetries" Core..=) Core.<$> maxRetries,
                  ("name" Core..=) Core.<$> name,
                  ("observedGeneration" Core..=) Core.. Core.AsText
                    Core.<$> observedGeneration,
                  ("reconciling" Core..=) Core.<$> reconciling,
                  ("retried" Core..=) Core.<$> retried,
                  ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
--
-- /See:/ 'newGoogleCloudRunV2Task_Annotations' smart constructor.
newtype GoogleCloudRunV2Task_Annotations = GoogleCloudRunV2Task_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Task_Annotations' with the minimum fields required to make a request.
newGoogleCloudRunV2Task_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Task_Annotations
newGoogleCloudRunV2Task_Annotations additional =
  GoogleCloudRunV2Task_Annotations {additional = additional}

instance Core.FromJSON
           GoogleCloudRunV2Task_Annotations
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Task_Annotations"
              (\ o ->
                 GoogleCloudRunV2Task_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Task_Annotations
         where
        toJSON GoogleCloudRunV2Task_Annotations{..}
          = Core.toJSON additional


-- | Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-labels or https:\/\/cloud.google.com\/run\/docs\/configuring\/labels
--
-- /See:/ 'newGoogleCloudRunV2Task_Labels' smart constructor.
newtype GoogleCloudRunV2Task_Labels = GoogleCloudRunV2Task_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Task_Labels' with the minimum fields required to make a request.
newGoogleCloudRunV2Task_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleCloudRunV2Task_Labels
newGoogleCloudRunV2Task_Labels additional =
  GoogleCloudRunV2Task_Labels {additional = additional}

instance Core.FromJSON GoogleCloudRunV2Task_Labels
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Task_Labels"
              (\ o ->
                 GoogleCloudRunV2Task_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleCloudRunV2Task_Labels
         where
        toJSON GoogleCloudRunV2Task_Labels{..}
          = Core.toJSON additional


-- | Result of a task attempt.
--
-- /See:/ 'newGoogleCloudRunV2TaskAttemptResult' smart constructor.
data GoogleCloudRunV2TaskAttemptResult = GoogleCloudRunV2TaskAttemptResult
    {
      -- | Output only. The exit code of this attempt. This may be unset if the container was unable to exit cleanly with a code due to some other failure. See status field for possible failure details.
      exitCode :: (Core.Maybe Core.Int32)
      -- | Output only. The status of this attempt. If the status code is OK, then the attempt succeeded.
    , status :: (Core.Maybe GoogleRpcStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TaskAttemptResult' with the minimum fields required to make a request.
newGoogleCloudRunV2TaskAttemptResult 
    ::  GoogleCloudRunV2TaskAttemptResult
newGoogleCloudRunV2TaskAttemptResult =
  GoogleCloudRunV2TaskAttemptResult
    {exitCode = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON
           GoogleCloudRunV2TaskAttemptResult
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TaskAttemptResult"
              (\ o ->
                 GoogleCloudRunV2TaskAttemptResult Core.<$>
                   (o Core..:? "exitCode") Core.<*>
                     (o Core..:? "status"))

instance Core.ToJSON
           GoogleCloudRunV2TaskAttemptResult
         where
        toJSON GoogleCloudRunV2TaskAttemptResult{..}
          = Core.object
              (Core.catMaybes
                 [("exitCode" Core..=) Core.<$> exitCode,
                  ("status" Core..=) Core.<$> status])


-- | TaskTemplate describes the data a task should have when created from a template.
--
-- /See:/ 'newGoogleCloudRunV2TaskTemplate' smart constructor.
data GoogleCloudRunV2TaskTemplate = GoogleCloudRunV2TaskTemplate
    {
      -- | Holds the single container that defines the unit of execution for this task.
      containers :: (Core.Maybe [GoogleCloudRunV2Container])
      -- | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https:\/\/cloud.google.com\/run\/docs\/securing\/using-cmek
    , encryptionKey :: (Core.Maybe Core.Text)
      -- | The execution environment being used to host this Task.
    , executionEnvironment :: (Core.Maybe GoogleCloudRunV2TaskTemplate_ExecutionEnvironment)
      -- | Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
    , maxRetries :: (Core.Maybe Core.Int32)
      -- | Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project\'s default service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
    , timeout :: (Core.Maybe Core.Duration)
      -- | A list of Volumes to make available to containers.
    , volumes :: (Core.Maybe [GoogleCloudRunV2Volume])
      -- | VPC Access configuration to use for this Task. For more information, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc.
    , vpcAccess :: (Core.Maybe GoogleCloudRunV2VpcAccess)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TaskTemplate' with the minimum fields required to make a request.
newGoogleCloudRunV2TaskTemplate 
    ::  GoogleCloudRunV2TaskTemplate
newGoogleCloudRunV2TaskTemplate =
  GoogleCloudRunV2TaskTemplate
    { containers = Core.Nothing
    , encryptionKey = Core.Nothing
    , executionEnvironment = Core.Nothing
    , maxRetries = Core.Nothing
    , serviceAccount = Core.Nothing
    , timeout = Core.Nothing
    , volumes = Core.Nothing
    , vpcAccess = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2TaskTemplate
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TaskTemplate"
              (\ o ->
                 GoogleCloudRunV2TaskTemplate Core.<$>
                   (o Core..:? "containers") Core.<*>
                     (o Core..:? "encryptionKey")
                     Core.<*> (o Core..:? "executionEnvironment")
                     Core.<*> (o Core..:? "maxRetries")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "vpcAccess"))

instance Core.ToJSON GoogleCloudRunV2TaskTemplate
         where
        toJSON GoogleCloudRunV2TaskTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("containers" Core..=) Core.<$> containers,
                  ("encryptionKey" Core..=) Core.<$> encryptionKey,
                  ("executionEnvironment" Core..=) Core.<$>
                    executionEnvironment,
                  ("maxRetries" Core..=) Core.<$> maxRetries,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("vpcAccess" Core..=) Core.<$> vpcAccess])


-- | Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.
--
-- /See:/ 'newGoogleCloudRunV2TrafficTarget' smart constructor.
data GoogleCloudRunV2TrafficTarget = GoogleCloudRunV2TrafficTarget
    {
      -- | Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
      percent :: (Core.Maybe Core.Int32)
      -- | Revision to which to send this portion of traffic, if traffic allocation is by revision.
    , revision :: (Core.Maybe Core.Text)
      -- | Indicates a string to be part of the URI to exclusively reference this target.
    , tag :: (Core.Maybe Core.Text)
      -- | The allocation type for this traffic target.
    , type' :: (Core.Maybe GoogleCloudRunV2TrafficTarget_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TrafficTarget' with the minimum fields required to make a request.
newGoogleCloudRunV2TrafficTarget 
    ::  GoogleCloudRunV2TrafficTarget
newGoogleCloudRunV2TrafficTarget =
  GoogleCloudRunV2TrafficTarget
    { percent = Core.Nothing
    , revision = Core.Nothing
    , tag = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2TrafficTarget
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2TrafficTarget"
              (\ o ->
                 GoogleCloudRunV2TrafficTarget Core.<$>
                   (o Core..:? "percent") Core.<*>
                     (o Core..:? "revision")
                     Core.<*> (o Core..:? "tag")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleCloudRunV2TrafficTarget
         where
        toJSON GoogleCloudRunV2TrafficTarget{..}
          = Core.object
              (Core.catMaybes
                 [("percent" Core..=) Core.<$> percent,
                  ("revision" Core..=) Core.<$> revision,
                  ("tag" Core..=) Core.<$> tag,
                  ("type" Core..=) Core.<$> type'])


-- | Represents the observed state of a single @TrafficTarget@ entry.
--
-- /See:/ 'newGoogleCloudRunV2TrafficTargetStatus' smart constructor.
data GoogleCloudRunV2TrafficTargetStatus = GoogleCloudRunV2TrafficTargetStatus
    {
      -- | Specifies percent of the traffic to this Revision.
      percent :: (Core.Maybe Core.Int32)
      -- | Revision to which this traffic is sent.
    , revision :: (Core.Maybe Core.Text)
      -- | Indicates the string used in the URI to exclusively reference this target.
    , tag :: (Core.Maybe Core.Text)
      -- | The allocation type for this traffic target.
    , type' :: (Core.Maybe GoogleCloudRunV2TrafficTargetStatus_Type)
      -- | Displays the target URI.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2TrafficTargetStatus' with the minimum fields required to make a request.
newGoogleCloudRunV2TrafficTargetStatus 
    ::  GoogleCloudRunV2TrafficTargetStatus
newGoogleCloudRunV2TrafficTargetStatus =
  GoogleCloudRunV2TrafficTargetStatus
    { percent = Core.Nothing
    , revision = Core.Nothing
    , tag = Core.Nothing
    , type' = Core.Nothing
    , uri = Core.Nothing
    }

instance Core.FromJSON
           GoogleCloudRunV2TrafficTargetStatus
         where
        parseJSON
          = Core.withObject
              "GoogleCloudRunV2TrafficTargetStatus"
              (\ o ->
                 GoogleCloudRunV2TrafficTargetStatus Core.<$>
                   (o Core..:? "percent") Core.<*>
                     (o Core..:? "revision")
                     Core.<*> (o Core..:? "tag")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GoogleCloudRunV2TrafficTargetStatus
         where
        toJSON GoogleCloudRunV2TrafficTargetStatus{..}
          = Core.object
              (Core.catMaybes
                 [("percent" Core..=) Core.<$> percent,
                  ("revision" Core..=) Core.<$> revision,
                  ("tag" Core..=) Core.<$> tag,
                  ("type" Core..=) Core.<$> type',
                  ("uri" Core..=) Core.<$> uri])


-- | VersionToPath maps a specific version of a secret to a relative file to mount to, relative to VolumeMount\'s mount_path.
--
-- /See:/ 'newGoogleCloudRunV2VersionToPath' smart constructor.
data GoogleCloudRunV2VersionToPath = GoogleCloudRunV2VersionToPath
    {
      -- | Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume\'s default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
      mode :: (Core.Maybe Core.Int32)
      -- | Required. The relative path of the secret in the container.
    , path :: (Core.Maybe Core.Text)
      -- | The Cloud Secret Manager secret version. Can be \'latest\' for the latest value, or an integer or a secret alias for a specific version.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2VersionToPath' with the minimum fields required to make a request.
newGoogleCloudRunV2VersionToPath 
    ::  GoogleCloudRunV2VersionToPath
newGoogleCloudRunV2VersionToPath =
  GoogleCloudRunV2VersionToPath
    {mode = Core.Nothing, path = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2VersionToPath
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2VersionToPath"
              (\ o ->
                 GoogleCloudRunV2VersionToPath Core.<$>
                   (o Core..:? "mode") Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON GoogleCloudRunV2VersionToPath
         where
        toJSON GoogleCloudRunV2VersionToPath{..}
          = Core.object
              (Core.catMaybes
                 [("mode" Core..=) Core.<$> mode,
                  ("path" Core..=) Core.<$> path,
                  ("version" Core..=) Core.<$> version])


-- | Volume represents a named volume in a container.
--
-- /See:/ 'newGoogleCloudRunV2Volume' smart constructor.
data GoogleCloudRunV2Volume = GoogleCloudRunV2Volume
    {
      -- | For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run for more information on how to connect Cloud SQL and Cloud Run.
      cloudSqlInstance :: (Core.Maybe GoogleCloudRunV2CloudSqlInstance)
      -- | Ephemeral storage used as a shared volume.
    , emptyDir :: (Core.Maybe GoogleCloudRunV2EmptyDirVolumeSource)
      -- | Required. Volume\'s name.
    , name :: (Core.Maybe Core.Text)
      -- | Secret represents a secret that should populate this volume.
    , secret :: (Core.Maybe GoogleCloudRunV2SecretVolumeSource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2Volume' with the minimum fields required to make a request.
newGoogleCloudRunV2Volume 
    ::  GoogleCloudRunV2Volume
newGoogleCloudRunV2Volume =
  GoogleCloudRunV2Volume
    { cloudSqlInstance = Core.Nothing
    , emptyDir = Core.Nothing
    , name = Core.Nothing
    , secret = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRunV2Volume where
        parseJSON
          = Core.withObject "GoogleCloudRunV2Volume"
              (\ o ->
                 GoogleCloudRunV2Volume Core.<$>
                   (o Core..:? "cloudSqlInstance") Core.<*>
                     (o Core..:? "emptyDir")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "secret"))

instance Core.ToJSON GoogleCloudRunV2Volume where
        toJSON GoogleCloudRunV2Volume{..}
          = Core.object
              (Core.catMaybes
                 [("cloudSqlInstance" Core..=) Core.<$>
                    cloudSqlInstance,
                  ("emptyDir" Core..=) Core.<$> emptyDir,
                  ("name" Core..=) Core.<$> name,
                  ("secret" Core..=) Core.<$> secret])


-- | VolumeMount describes a mounting of a Volume within a container.
--
-- /See:/ 'newGoogleCloudRunV2VolumeMount' smart constructor.
data GoogleCloudRunV2VolumeMount = GoogleCloudRunV2VolumeMount
    {
      -- | Required. Path within the container at which the volume should be mounted. Must not contain \':\'. For Cloud SQL volumes, it can be left empty, or must otherwise be @\/cloudsql@. All instances defined in the Volume will be available as @\/cloudsql\/[instance]@. For more information on Cloud SQL volumes, visit https:\/\/cloud.google.com\/sql\/docs\/mysql\/connect-run
      mountPath :: (Core.Maybe Core.Text)
      -- | Required. This must match the Name of a Volume.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2VolumeMount' with the minimum fields required to make a request.
newGoogleCloudRunV2VolumeMount 
    ::  GoogleCloudRunV2VolumeMount
newGoogleCloudRunV2VolumeMount =
  GoogleCloudRunV2VolumeMount {mountPath = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2VolumeMount
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2VolumeMount"
              (\ o ->
                 GoogleCloudRunV2VolumeMount Core.<$>
                   (o Core..:? "mountPath") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON GoogleCloudRunV2VolumeMount
         where
        toJSON GoogleCloudRunV2VolumeMount{..}
          = Core.object
              (Core.catMaybes
                 [("mountPath" Core..=) Core.<$> mountPath,
                  ("name" Core..=) Core.<$> name])


-- | VPC Access settings. For more information on creating a VPC Connector, visit https:\/\/cloud.google.com\/vpc\/docs\/configure-serverless-vpc-access For information on how to configure Cloud Run with an existing VPC Connector, visit https:\/\/cloud.google.com\/run\/docs\/configuring\/connecting-vpc
--
-- /See:/ 'newGoogleCloudRunV2VpcAccess' smart constructor.
data GoogleCloudRunV2VpcAccess = GoogleCloudRunV2VpcAccess
    {
      -- | VPC Access connector name. Format: projects\/{project}\/locations\/{location}\/connectors\/{connector}, where {project} can be project id or number.
      connector :: (Core.Maybe Core.Text)
      -- | Traffic VPC egress settings.
    , egress :: (Core.Maybe GoogleCloudRunV2VpcAccess_Egress)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRunV2VpcAccess' with the minimum fields required to make a request.
newGoogleCloudRunV2VpcAccess 
    ::  GoogleCloudRunV2VpcAccess
newGoogleCloudRunV2VpcAccess =
  GoogleCloudRunV2VpcAccess {connector = Core.Nothing, egress = Core.Nothing}

instance Core.FromJSON GoogleCloudRunV2VpcAccess
         where
        parseJSON
          = Core.withObject "GoogleCloudRunV2VpcAccess"
              (\ o ->
                 GoogleCloudRunV2VpcAccess Core.<$>
                   (o Core..:? "connector") Core.<*>
                     (o Core..:? "egress"))

instance Core.ToJSON GoogleCloudRunV2VpcAccess where
        toJSON GoogleCloudRunV2VpcAccess{..}
          = Core.object
              (Core.catMaybes
                 [("connector" Core..=) Core.<$> connector,
                  ("egress" Core..=) Core.<$> egress])


-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newGoogleIamV1AuditConfig' smart constructor.
data GoogleIamV1AuditConfig = GoogleIamV1AuditConfig
    {
      -- | The configuration for logging of each type of permission.
      auditLogConfigs :: (Core.Maybe [GoogleIamV1AuditLogConfig])
      -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    , service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1AuditConfig' with the minimum fields required to make a request.
newGoogleIamV1AuditConfig 
    ::  GoogleIamV1AuditConfig
newGoogleIamV1AuditConfig =
  GoogleIamV1AuditConfig
    {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON GoogleIamV1AuditConfig where
        parseJSON
          = Core.withObject "GoogleIamV1AuditConfig"
              (\ o ->
                 GoogleIamV1AuditConfig Core.<$>
                   (o Core..:? "auditLogConfigs") Core.<*>
                     (o Core..:? "service"))

instance Core.ToJSON GoogleIamV1AuditConfig where
        toJSON GoogleIamV1AuditConfig{..}
          = Core.object
              (Core.catMaybes
                 [("auditLogConfigs" Core..=) Core.<$>
                    auditLogConfigs,
                  ("service" Core..=) Core.<$> service])


-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newGoogleIamV1AuditLogConfig' smart constructor.
data GoogleIamV1AuditLogConfig = GoogleIamV1AuditLogConfig
    {
      -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
      exemptedMembers :: (Core.Maybe [Core.Text])
      -- | The log type that this config enables.
    , logType :: (Core.Maybe GoogleIamV1AuditLogConfig_LogType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1AuditLogConfig' with the minimum fields required to make a request.
newGoogleIamV1AuditLogConfig 
    ::  GoogleIamV1AuditLogConfig
newGoogleIamV1AuditLogConfig =
  GoogleIamV1AuditLogConfig
    {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON GoogleIamV1AuditLogConfig
         where
        parseJSON
          = Core.withObject "GoogleIamV1AuditLogConfig"
              (\ o ->
                 GoogleIamV1AuditLogConfig Core.<$>
                   (o Core..:? "exemptedMembers") Core.<*>
                     (o Core..:? "logType"))

instance Core.ToJSON GoogleIamV1AuditLogConfig where
        toJSON GoogleIamV1AuditLogConfig{..}
          = Core.object
              (Core.catMaybes
                 [("exemptedMembers" Core..=) Core.<$>
                    exemptedMembers,
                  ("logType" Core..=) Core.<$> logType])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newGoogleIamV1Binding' smart constructor.
data GoogleIamV1Binding = GoogleIamV1Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe GoogleTypeExpr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus
      -- unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1Binding' with the minimum fields required to make a request.
newGoogleIamV1Binding 
    ::  GoogleIamV1Binding
newGoogleIamV1Binding =
  GoogleIamV1Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON GoogleIamV1Binding where
        parseJSON
          = Core.withObject "GoogleIamV1Binding"
              (\ o ->
                 GoogleIamV1Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON GoogleIamV1Binding where
        toJSON GoogleIamV1Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newGoogleIamV1Policy' smart constructor.
data GoogleIamV1Policy = GoogleIamV1Policy
    {
      -- | Specifies cloud audit logging configuration for this policy.
      auditConfigs :: (Core.Maybe [GoogleIamV1AuditConfig])
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    , bindings :: (Core.Maybe [GoogleIamV1Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1Policy' with the minimum fields required to make a request.
newGoogleIamV1Policy 
    ::  GoogleIamV1Policy
newGoogleIamV1Policy =
  GoogleIamV1Policy
    { auditConfigs = Core.Nothing
    , bindings = Core.Nothing
    , etag = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1Policy where
        parseJSON
          = Core.withObject "GoogleIamV1Policy"
              (\ o ->
                 GoogleIamV1Policy Core.<$>
                   (o Core..:? "auditConfigs") Core.<*>
                     (o Core..:? "bindings")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON GoogleIamV1Policy where
        toJSON GoogleIamV1Policy{..}
          = Core.object
              (Core.catMaybes
                 [("auditConfigs" Core..=) Core.<$> auditConfigs,
                  ("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newGoogleIamV1SetIamPolicyRequest' smart constructor.
data GoogleIamV1SetIamPolicyRequest = GoogleIamV1SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe GoogleIamV1Policy)
      -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1SetIamPolicyRequest' with the minimum fields required to make a request.
newGoogleIamV1SetIamPolicyRequest 
    ::  GoogleIamV1SetIamPolicyRequest
newGoogleIamV1SetIamPolicyRequest =
  GoogleIamV1SetIamPolicyRequest
    {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON GoogleIamV1SetIamPolicyRequest
         where
        parseJSON
          = Core.withObject "GoogleIamV1SetIamPolicyRequest"
              (\ o ->
                 GoogleIamV1SetIamPolicyRequest Core.<$>
                   (o Core..:? "policy") Core.<*>
                     (o Core..:? "updateMask"))

instance Core.ToJSON GoogleIamV1SetIamPolicyRequest
         where
        toJSON GoogleIamV1SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("policy" Core..=) Core.<$> policy,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1TestIamPermissionsRequest' smart constructor.
newtype GoogleIamV1TestIamPermissionsRequest = GoogleIamV1TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1TestIamPermissionsRequest' with the minimum fields required to make a request.
newGoogleIamV1TestIamPermissionsRequest 
    ::  GoogleIamV1TestIamPermissionsRequest
newGoogleIamV1TestIamPermissionsRequest =
  GoogleIamV1TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON
           GoogleIamV1TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject
              "GoogleIamV1TestIamPermissionsRequest"
              (\ o ->
                 GoogleIamV1TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON
           GoogleIamV1TestIamPermissionsRequest
         where
        toJSON GoogleIamV1TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1TestIamPermissionsResponse' smart constructor.
newtype GoogleIamV1TestIamPermissionsResponse = GoogleIamV1TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1TestIamPermissionsResponse' with the minimum fields required to make a request.
newGoogleIamV1TestIamPermissionsResponse 
    ::  GoogleIamV1TestIamPermissionsResponse
newGoogleIamV1TestIamPermissionsResponse =
  GoogleIamV1TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON
           GoogleIamV1TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleIamV1TestIamPermissionsResponse"
              (\ o ->
                 GoogleIamV1TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON
           GoogleIamV1TestIamPermissionsResponse
         where
        toJSON GoogleIamV1TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newGoogleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse = GoogleLongrunningListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [GoogleLongrunningOperation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
newGoogleLongrunningListOperationsResponse 
    ::  GoogleLongrunningListOperationsResponse
newGoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON
           GoogleLongrunningListOperationsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunningListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations"))

instance Core.ToJSON
           GoogleLongrunningListOperationsResponse
         where
        toJSON GoogleLongrunningListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe GoogleRpcStatus)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe GoogleLongrunningOperation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation 
    ::  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation
         where
        parseJSON
          = Core.withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata additional =
  GoogleLongrunningOperation_Metadata {additional = additional}

instance Core.FromJSON
           GoogleLongrunningOperation_Metadata
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Metadata"
              (\ o ->
                 GoogleLongrunningOperation_Metadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Metadata
         where
        toJSON GoogleLongrunningOperation_Metadata{..}
          = Core.toJSON additional


-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response additional =
  GoogleLongrunningOperation_Response {additional = additional}

instance Core.FromJSON
           GoogleLongrunningOperation_Response
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Response"
              (\ o ->
                 GoogleLongrunningOperation_Response Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Response
         where
        toJSON GoogleLongrunningOperation_Response{..}
          = Core.toJSON additional


-- | The request message for Operations.WaitOperation.
--
-- /See:/ 'newGoogleLongrunningWaitOperationRequest' smart constructor.
newtype GoogleLongrunningWaitOperationRequest = GoogleLongrunningWaitOperationRequest
    {
      -- | The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the underlying HTTP\/RPC protocol. If RPC context deadline is also specified, the shorter one will be used.
      timeout :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningWaitOperationRequest' with the minimum fields required to make a request.
newGoogleLongrunningWaitOperationRequest 
    ::  GoogleLongrunningWaitOperationRequest
newGoogleLongrunningWaitOperationRequest =
  GoogleLongrunningWaitOperationRequest {timeout = Core.Nothing}

instance Core.FromJSON
           GoogleLongrunningWaitOperationRequest
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningWaitOperationRequest"
              (\ o ->
                 GoogleLongrunningWaitOperationRequest Core.<$>
                   (o Core..:? "timeout"))

instance Core.ToJSON
           GoogleLongrunningWaitOperationRequest
         where
        toJSON GoogleLongrunningWaitOperationRequest{..}
          = Core.object
              (Core.catMaybes
                 [("timeout" Core..=) Core.<$> timeout])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty 
    ::  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
        parseJSON
          = Core.withObject "GoogleProtobufEmpty"
              (\ o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
        toJSON = Core.const Core.emptyObject


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [GoogleRpcStatus_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus 
    ::  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON GoogleRpcStatus where
        parseJSON
          = Core.withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem additional =
  GoogleRpcStatus_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem
         where
        parseJSON
          = Core.withObject "GoogleRpcStatus_DetailsItem"
              (\ o ->
                 GoogleRpcStatus_DetailsItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleRpcStatus_DetailsItem
         where
        toJSON GoogleRpcStatus_DetailsItem{..}
          = Core.toJSON additional


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newGoogleTypeExpr' smart constructor.
data GoogleTypeExpr = GoogleTypeExpr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleTypeExpr' with the minimum fields required to make a request.
newGoogleTypeExpr 
    ::  GoogleTypeExpr
newGoogleTypeExpr =
  GoogleTypeExpr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON GoogleTypeExpr where
        parseJSON
          = Core.withObject "GoogleTypeExpr"
              (\ o ->
                 GoogleTypeExpr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON GoogleTypeExpr where
        toJSON GoogleTypeExpr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])
