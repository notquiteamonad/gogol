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
-- Module      : Gogol.DLP
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides methods for detection, risk analysis, and de-identification of privacy-sensitive fragments in text, images, and Google Cloud Platform storage repositories.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference>
module Gogol.DLP
    (
    -- * Configuration
      dLPService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** dlp.infoTypes.list
    , DLPInfoTypesListResource
    , DLPInfoTypesList (..)
    , newDLPInfoTypesList

    -- ** dlp.locations.infoTypes.list
    , DLPLocationsInfoTypesListResource
    , DLPLocationsInfoTypesList (..)
    , newDLPLocationsInfoTypesList

    -- ** dlp.organizations.deidentifyTemplates.create
    , DLPOrganizationsDeidentifyTemplatesCreateResource
    , DLPOrganizationsDeidentifyTemplatesCreate (..)
    , newDLPOrganizationsDeidentifyTemplatesCreate

    -- ** dlp.organizations.deidentifyTemplates.delete
    , DLPOrganizationsDeidentifyTemplatesDeleteResource
    , DLPOrganizationsDeidentifyTemplatesDelete (..)
    , newDLPOrganizationsDeidentifyTemplatesDelete

    -- ** dlp.organizations.deidentifyTemplates.get
    , DLPOrganizationsDeidentifyTemplatesGetResource
    , DLPOrganizationsDeidentifyTemplatesGet (..)
    , newDLPOrganizationsDeidentifyTemplatesGet

    -- ** dlp.organizations.deidentifyTemplates.list
    , DLPOrganizationsDeidentifyTemplatesListResource
    , DLPOrganizationsDeidentifyTemplatesList (..)
    , newDLPOrganizationsDeidentifyTemplatesList

    -- ** dlp.organizations.deidentifyTemplates.patch
    , DLPOrganizationsDeidentifyTemplatesPatchResource
    , DLPOrganizationsDeidentifyTemplatesPatch (..)
    , newDLPOrganizationsDeidentifyTemplatesPatch

    -- ** dlp.organizations.inspectTemplates.create
    , DLPOrganizationsInspectTemplatesCreateResource
    , DLPOrganizationsInspectTemplatesCreate (..)
    , newDLPOrganizationsInspectTemplatesCreate

    -- ** dlp.organizations.inspectTemplates.delete
    , DLPOrganizationsInspectTemplatesDeleteResource
    , DLPOrganizationsInspectTemplatesDelete (..)
    , newDLPOrganizationsInspectTemplatesDelete

    -- ** dlp.organizations.inspectTemplates.get
    , DLPOrganizationsInspectTemplatesGetResource
    , DLPOrganizationsInspectTemplatesGet (..)
    , newDLPOrganizationsInspectTemplatesGet

    -- ** dlp.organizations.inspectTemplates.list
    , DLPOrganizationsInspectTemplatesListResource
    , DLPOrganizationsInspectTemplatesList (..)
    , newDLPOrganizationsInspectTemplatesList

    -- ** dlp.organizations.inspectTemplates.patch
    , DLPOrganizationsInspectTemplatesPatchResource
    , DLPOrganizationsInspectTemplatesPatch (..)
    , newDLPOrganizationsInspectTemplatesPatch

    -- ** dlp.organizations.locations.deidentifyTemplates.create
    , DLPOrganizationsLocationsDeidentifyTemplatesCreateResource
    , DLPOrganizationsLocationsDeidentifyTemplatesCreate (..)
    , newDLPOrganizationsLocationsDeidentifyTemplatesCreate

    -- ** dlp.organizations.locations.deidentifyTemplates.delete
    , DLPOrganizationsLocationsDeidentifyTemplatesDeleteResource
    , DLPOrganizationsLocationsDeidentifyTemplatesDelete (..)
    , newDLPOrganizationsLocationsDeidentifyTemplatesDelete

    -- ** dlp.organizations.locations.deidentifyTemplates.get
    , DLPOrganizationsLocationsDeidentifyTemplatesGetResource
    , DLPOrganizationsLocationsDeidentifyTemplatesGet (..)
    , newDLPOrganizationsLocationsDeidentifyTemplatesGet

    -- ** dlp.organizations.locations.deidentifyTemplates.list
    , DLPOrganizationsLocationsDeidentifyTemplatesListResource
    , DLPOrganizationsLocationsDeidentifyTemplatesList (..)
    , newDLPOrganizationsLocationsDeidentifyTemplatesList

    -- ** dlp.organizations.locations.deidentifyTemplates.patch
    , DLPOrganizationsLocationsDeidentifyTemplatesPatchResource
    , DLPOrganizationsLocationsDeidentifyTemplatesPatch (..)
    , newDLPOrganizationsLocationsDeidentifyTemplatesPatch

    -- ** dlp.organizations.locations.dlpJobs.list
    , DLPOrganizationsLocationsDlpJobsListResource
    , DLPOrganizationsLocationsDlpJobsList (..)
    , newDLPOrganizationsLocationsDlpJobsList

    -- ** dlp.organizations.locations.inspectTemplates.create
    , DLPOrganizationsLocationsInspectTemplatesCreateResource
    , DLPOrganizationsLocationsInspectTemplatesCreate (..)
    , newDLPOrganizationsLocationsInspectTemplatesCreate

    -- ** dlp.organizations.locations.inspectTemplates.delete
    , DLPOrganizationsLocationsInspectTemplatesDeleteResource
    , DLPOrganizationsLocationsInspectTemplatesDelete (..)
    , newDLPOrganizationsLocationsInspectTemplatesDelete

    -- ** dlp.organizations.locations.inspectTemplates.get
    , DLPOrganizationsLocationsInspectTemplatesGetResource
    , DLPOrganizationsLocationsInspectTemplatesGet (..)
    , newDLPOrganizationsLocationsInspectTemplatesGet

    -- ** dlp.organizations.locations.inspectTemplates.list
    , DLPOrganizationsLocationsInspectTemplatesListResource
    , DLPOrganizationsLocationsInspectTemplatesList (..)
    , newDLPOrganizationsLocationsInspectTemplatesList

    -- ** dlp.organizations.locations.inspectTemplates.patch
    , DLPOrganizationsLocationsInspectTemplatesPatchResource
    , DLPOrganizationsLocationsInspectTemplatesPatch (..)
    , newDLPOrganizationsLocationsInspectTemplatesPatch

    -- ** dlp.organizations.locations.jobTriggers.create
    , DLPOrganizationsLocationsJobTriggersCreateResource
    , DLPOrganizationsLocationsJobTriggersCreate (..)
    , newDLPOrganizationsLocationsJobTriggersCreate

    -- ** dlp.organizations.locations.jobTriggers.delete
    , DLPOrganizationsLocationsJobTriggersDeleteResource
    , DLPOrganizationsLocationsJobTriggersDelete (..)
    , newDLPOrganizationsLocationsJobTriggersDelete

    -- ** dlp.organizations.locations.jobTriggers.get
    , DLPOrganizationsLocationsJobTriggersGetResource
    , DLPOrganizationsLocationsJobTriggersGet (..)
    , newDLPOrganizationsLocationsJobTriggersGet

    -- ** dlp.organizations.locations.jobTriggers.list
    , DLPOrganizationsLocationsJobTriggersListResource
    , DLPOrganizationsLocationsJobTriggersList (..)
    , newDLPOrganizationsLocationsJobTriggersList

    -- ** dlp.organizations.locations.jobTriggers.patch
    , DLPOrganizationsLocationsJobTriggersPatchResource
    , DLPOrganizationsLocationsJobTriggersPatch (..)
    , newDLPOrganizationsLocationsJobTriggersPatch

    -- ** dlp.organizations.locations.storedInfoTypes.create
    , DLPOrganizationsLocationsStoredInfoTypesCreateResource
    , DLPOrganizationsLocationsStoredInfoTypesCreate (..)
    , newDLPOrganizationsLocationsStoredInfoTypesCreate

    -- ** dlp.organizations.locations.storedInfoTypes.delete
    , DLPOrganizationsLocationsStoredInfoTypesDeleteResource
    , DLPOrganizationsLocationsStoredInfoTypesDelete (..)
    , newDLPOrganizationsLocationsStoredInfoTypesDelete

    -- ** dlp.organizations.locations.storedInfoTypes.get
    , DLPOrganizationsLocationsStoredInfoTypesGetResource
    , DLPOrganizationsLocationsStoredInfoTypesGet (..)
    , newDLPOrganizationsLocationsStoredInfoTypesGet

    -- ** dlp.organizations.locations.storedInfoTypes.list
    , DLPOrganizationsLocationsStoredInfoTypesListResource
    , DLPOrganizationsLocationsStoredInfoTypesList (..)
    , newDLPOrganizationsLocationsStoredInfoTypesList

    -- ** dlp.organizations.locations.storedInfoTypes.patch
    , DLPOrganizationsLocationsStoredInfoTypesPatchResource
    , DLPOrganizationsLocationsStoredInfoTypesPatch (..)
    , newDLPOrganizationsLocationsStoredInfoTypesPatch

    -- ** dlp.organizations.storedInfoTypes.create
    , DLPOrganizationsStoredInfoTypesCreateResource
    , DLPOrganizationsStoredInfoTypesCreate (..)
    , newDLPOrganizationsStoredInfoTypesCreate

    -- ** dlp.organizations.storedInfoTypes.delete
    , DLPOrganizationsStoredInfoTypesDeleteResource
    , DLPOrganizationsStoredInfoTypesDelete (..)
    , newDLPOrganizationsStoredInfoTypesDelete

    -- ** dlp.organizations.storedInfoTypes.get
    , DLPOrganizationsStoredInfoTypesGetResource
    , DLPOrganizationsStoredInfoTypesGet (..)
    , newDLPOrganizationsStoredInfoTypesGet

    -- ** dlp.organizations.storedInfoTypes.list
    , DLPOrganizationsStoredInfoTypesListResource
    , DLPOrganizationsStoredInfoTypesList (..)
    , newDLPOrganizationsStoredInfoTypesList

    -- ** dlp.organizations.storedInfoTypes.patch
    , DLPOrganizationsStoredInfoTypesPatchResource
    , DLPOrganizationsStoredInfoTypesPatch (..)
    , newDLPOrganizationsStoredInfoTypesPatch

    -- ** dlp.projects.content.deidentify
    , DLPProjectsContentDeidentifyResource
    , DLPProjectsContentDeidentify (..)
    , newDLPProjectsContentDeidentify

    -- ** dlp.projects.content.inspect
    , DLPProjectsContentInspectResource
    , DLPProjectsContentInspect (..)
    , newDLPProjectsContentInspect

    -- ** dlp.projects.content.reidentify
    , DLPProjectsContentReidentifyResource
    , DLPProjectsContentReidentify (..)
    , newDLPProjectsContentReidentify

    -- ** dlp.projects.deidentifyTemplates.create
    , DLPProjectsDeidentifyTemplatesCreateResource
    , DLPProjectsDeidentifyTemplatesCreate (..)
    , newDLPProjectsDeidentifyTemplatesCreate

    -- ** dlp.projects.deidentifyTemplates.delete
    , DLPProjectsDeidentifyTemplatesDeleteResource
    , DLPProjectsDeidentifyTemplatesDelete (..)
    , newDLPProjectsDeidentifyTemplatesDelete

    -- ** dlp.projects.deidentifyTemplates.get
    , DLPProjectsDeidentifyTemplatesGetResource
    , DLPProjectsDeidentifyTemplatesGet (..)
    , newDLPProjectsDeidentifyTemplatesGet

    -- ** dlp.projects.deidentifyTemplates.list
    , DLPProjectsDeidentifyTemplatesListResource
    , DLPProjectsDeidentifyTemplatesList (..)
    , newDLPProjectsDeidentifyTemplatesList

    -- ** dlp.projects.deidentifyTemplates.patch
    , DLPProjectsDeidentifyTemplatesPatchResource
    , DLPProjectsDeidentifyTemplatesPatch (..)
    , newDLPProjectsDeidentifyTemplatesPatch

    -- ** dlp.projects.dlpJobs.cancel
    , DLPProjectsDlpJobsCancelResource
    , DLPProjectsDlpJobsCancel (..)
    , newDLPProjectsDlpJobsCancel

    -- ** dlp.projects.dlpJobs.create
    , DLPProjectsDlpJobsCreateResource
    , DLPProjectsDlpJobsCreate (..)
    , newDLPProjectsDlpJobsCreate

    -- ** dlp.projects.dlpJobs.delete
    , DLPProjectsDlpJobsDeleteResource
    , DLPProjectsDlpJobsDelete (..)
    , newDLPProjectsDlpJobsDelete

    -- ** dlp.projects.dlpJobs.get
    , DLPProjectsDlpJobsGetResource
    , DLPProjectsDlpJobsGet (..)
    , newDLPProjectsDlpJobsGet

    -- ** dlp.projects.dlpJobs.list
    , DLPProjectsDlpJobsListResource
    , DLPProjectsDlpJobsList (..)
    , newDLPProjectsDlpJobsList

    -- ** dlp.projects.image.redact
    , DLPProjectsImageRedactResource
    , DLPProjectsImageRedact (..)
    , newDLPProjectsImageRedact

    -- ** dlp.projects.inspectTemplates.create
    , DLPProjectsInspectTemplatesCreateResource
    , DLPProjectsInspectTemplatesCreate (..)
    , newDLPProjectsInspectTemplatesCreate

    -- ** dlp.projects.inspectTemplates.delete
    , DLPProjectsInspectTemplatesDeleteResource
    , DLPProjectsInspectTemplatesDelete (..)
    , newDLPProjectsInspectTemplatesDelete

    -- ** dlp.projects.inspectTemplates.get
    , DLPProjectsInspectTemplatesGetResource
    , DLPProjectsInspectTemplatesGet (..)
    , newDLPProjectsInspectTemplatesGet

    -- ** dlp.projects.inspectTemplates.list
    , DLPProjectsInspectTemplatesListResource
    , DLPProjectsInspectTemplatesList (..)
    , newDLPProjectsInspectTemplatesList

    -- ** dlp.projects.inspectTemplates.patch
    , DLPProjectsInspectTemplatesPatchResource
    , DLPProjectsInspectTemplatesPatch (..)
    , newDLPProjectsInspectTemplatesPatch

    -- ** dlp.projects.jobTriggers.activate
    , DLPProjectsJobTriggersActivateResource
    , DLPProjectsJobTriggersActivate (..)
    , newDLPProjectsJobTriggersActivate

    -- ** dlp.projects.jobTriggers.create
    , DLPProjectsJobTriggersCreateResource
    , DLPProjectsJobTriggersCreate (..)
    , newDLPProjectsJobTriggersCreate

    -- ** dlp.projects.jobTriggers.delete
    , DLPProjectsJobTriggersDeleteResource
    , DLPProjectsJobTriggersDelete (..)
    , newDLPProjectsJobTriggersDelete

    -- ** dlp.projects.jobTriggers.get
    , DLPProjectsJobTriggersGetResource
    , DLPProjectsJobTriggersGet (..)
    , newDLPProjectsJobTriggersGet

    -- ** dlp.projects.jobTriggers.list
    , DLPProjectsJobTriggersListResource
    , DLPProjectsJobTriggersList (..)
    , newDLPProjectsJobTriggersList

    -- ** dlp.projects.jobTriggers.patch
    , DLPProjectsJobTriggersPatchResource
    , DLPProjectsJobTriggersPatch (..)
    , newDLPProjectsJobTriggersPatch

    -- ** dlp.projects.locations.content.deidentify
    , DLPProjectsLocationsContentDeidentifyResource
    , DLPProjectsLocationsContentDeidentify (..)
    , newDLPProjectsLocationsContentDeidentify

    -- ** dlp.projects.locations.content.inspect
    , DLPProjectsLocationsContentInspectResource
    , DLPProjectsLocationsContentInspect (..)
    , newDLPProjectsLocationsContentInspect

    -- ** dlp.projects.locations.content.reidentify
    , DLPProjectsLocationsContentReidentifyResource
    , DLPProjectsLocationsContentReidentify (..)
    , newDLPProjectsLocationsContentReidentify

    -- ** dlp.projects.locations.deidentifyTemplates.create
    , DLPProjectsLocationsDeidentifyTemplatesCreateResource
    , DLPProjectsLocationsDeidentifyTemplatesCreate (..)
    , newDLPProjectsLocationsDeidentifyTemplatesCreate

    -- ** dlp.projects.locations.deidentifyTemplates.delete
    , DLPProjectsLocationsDeidentifyTemplatesDeleteResource
    , DLPProjectsLocationsDeidentifyTemplatesDelete (..)
    , newDLPProjectsLocationsDeidentifyTemplatesDelete

    -- ** dlp.projects.locations.deidentifyTemplates.get
    , DLPProjectsLocationsDeidentifyTemplatesGetResource
    , DLPProjectsLocationsDeidentifyTemplatesGet (..)
    , newDLPProjectsLocationsDeidentifyTemplatesGet

    -- ** dlp.projects.locations.deidentifyTemplates.list
    , DLPProjectsLocationsDeidentifyTemplatesListResource
    , DLPProjectsLocationsDeidentifyTemplatesList (..)
    , newDLPProjectsLocationsDeidentifyTemplatesList

    -- ** dlp.projects.locations.deidentifyTemplates.patch
    , DLPProjectsLocationsDeidentifyTemplatesPatchResource
    , DLPProjectsLocationsDeidentifyTemplatesPatch (..)
    , newDLPProjectsLocationsDeidentifyTemplatesPatch

    -- ** dlp.projects.locations.dlpJobs.cancel
    , DLPProjectsLocationsDlpJobsCancelResource
    , DLPProjectsLocationsDlpJobsCancel (..)
    , newDLPProjectsLocationsDlpJobsCancel

    -- ** dlp.projects.locations.dlpJobs.create
    , DLPProjectsLocationsDlpJobsCreateResource
    , DLPProjectsLocationsDlpJobsCreate (..)
    , newDLPProjectsLocationsDlpJobsCreate

    -- ** dlp.projects.locations.dlpJobs.delete
    , DLPProjectsLocationsDlpJobsDeleteResource
    , DLPProjectsLocationsDlpJobsDelete (..)
    , newDLPProjectsLocationsDlpJobsDelete

    -- ** dlp.projects.locations.dlpJobs.finish
    , DLPProjectsLocationsDlpJobsFinishResource
    , DLPProjectsLocationsDlpJobsFinish (..)
    , newDLPProjectsLocationsDlpJobsFinish

    -- ** dlp.projects.locations.dlpJobs.get
    , DLPProjectsLocationsDlpJobsGetResource
    , DLPProjectsLocationsDlpJobsGet (..)
    , newDLPProjectsLocationsDlpJobsGet

    -- ** dlp.projects.locations.dlpJobs.hybridInspect
    , DLPProjectsLocationsDlpJobsHybridInspectResource
    , DLPProjectsLocationsDlpJobsHybridInspect (..)
    , newDLPProjectsLocationsDlpJobsHybridInspect

    -- ** dlp.projects.locations.dlpJobs.list
    , DLPProjectsLocationsDlpJobsListResource
    , DLPProjectsLocationsDlpJobsList (..)
    , newDLPProjectsLocationsDlpJobsList

    -- ** dlp.projects.locations.image.redact
    , DLPProjectsLocationsImageRedactResource
    , DLPProjectsLocationsImageRedact (..)
    , newDLPProjectsLocationsImageRedact

    -- ** dlp.projects.locations.inspectTemplates.create
    , DLPProjectsLocationsInspectTemplatesCreateResource
    , DLPProjectsLocationsInspectTemplatesCreate (..)
    , newDLPProjectsLocationsInspectTemplatesCreate

    -- ** dlp.projects.locations.inspectTemplates.delete
    , DLPProjectsLocationsInspectTemplatesDeleteResource
    , DLPProjectsLocationsInspectTemplatesDelete (..)
    , newDLPProjectsLocationsInspectTemplatesDelete

    -- ** dlp.projects.locations.inspectTemplates.get
    , DLPProjectsLocationsInspectTemplatesGetResource
    , DLPProjectsLocationsInspectTemplatesGet (..)
    , newDLPProjectsLocationsInspectTemplatesGet

    -- ** dlp.projects.locations.inspectTemplates.list
    , DLPProjectsLocationsInspectTemplatesListResource
    , DLPProjectsLocationsInspectTemplatesList (..)
    , newDLPProjectsLocationsInspectTemplatesList

    -- ** dlp.projects.locations.inspectTemplates.patch
    , DLPProjectsLocationsInspectTemplatesPatchResource
    , DLPProjectsLocationsInspectTemplatesPatch (..)
    , newDLPProjectsLocationsInspectTemplatesPatch

    -- ** dlp.projects.locations.jobTriggers.activate
    , DLPProjectsLocationsJobTriggersActivateResource
    , DLPProjectsLocationsJobTriggersActivate (..)
    , newDLPProjectsLocationsJobTriggersActivate

    -- ** dlp.projects.locations.jobTriggers.create
    , DLPProjectsLocationsJobTriggersCreateResource
    , DLPProjectsLocationsJobTriggersCreate (..)
    , newDLPProjectsLocationsJobTriggersCreate

    -- ** dlp.projects.locations.jobTriggers.delete
    , DLPProjectsLocationsJobTriggersDeleteResource
    , DLPProjectsLocationsJobTriggersDelete (..)
    , newDLPProjectsLocationsJobTriggersDelete

    -- ** dlp.projects.locations.jobTriggers.get
    , DLPProjectsLocationsJobTriggersGetResource
    , DLPProjectsLocationsJobTriggersGet (..)
    , newDLPProjectsLocationsJobTriggersGet

    -- ** dlp.projects.locations.jobTriggers.hybridInspect
    , DLPProjectsLocationsJobTriggersHybridInspectResource
    , DLPProjectsLocationsJobTriggersHybridInspect (..)
    , newDLPProjectsLocationsJobTriggersHybridInspect

    -- ** dlp.projects.locations.jobTriggers.list
    , DLPProjectsLocationsJobTriggersListResource
    , DLPProjectsLocationsJobTriggersList (..)
    , newDLPProjectsLocationsJobTriggersList

    -- ** dlp.projects.locations.jobTriggers.patch
    , DLPProjectsLocationsJobTriggersPatchResource
    , DLPProjectsLocationsJobTriggersPatch (..)
    , newDLPProjectsLocationsJobTriggersPatch

    -- ** dlp.projects.locations.storedInfoTypes.create
    , DLPProjectsLocationsStoredInfoTypesCreateResource
    , DLPProjectsLocationsStoredInfoTypesCreate (..)
    , newDLPProjectsLocationsStoredInfoTypesCreate

    -- ** dlp.projects.locations.storedInfoTypes.delete
    , DLPProjectsLocationsStoredInfoTypesDeleteResource
    , DLPProjectsLocationsStoredInfoTypesDelete (..)
    , newDLPProjectsLocationsStoredInfoTypesDelete

    -- ** dlp.projects.locations.storedInfoTypes.get
    , DLPProjectsLocationsStoredInfoTypesGetResource
    , DLPProjectsLocationsStoredInfoTypesGet (..)
    , newDLPProjectsLocationsStoredInfoTypesGet

    -- ** dlp.projects.locations.storedInfoTypes.list
    , DLPProjectsLocationsStoredInfoTypesListResource
    , DLPProjectsLocationsStoredInfoTypesList (..)
    , newDLPProjectsLocationsStoredInfoTypesList

    -- ** dlp.projects.locations.storedInfoTypes.patch
    , DLPProjectsLocationsStoredInfoTypesPatchResource
    , DLPProjectsLocationsStoredInfoTypesPatch (..)
    , newDLPProjectsLocationsStoredInfoTypesPatch

    -- ** dlp.projects.storedInfoTypes.create
    , DLPProjectsStoredInfoTypesCreateResource
    , DLPProjectsStoredInfoTypesCreate (..)
    , newDLPProjectsStoredInfoTypesCreate

    -- ** dlp.projects.storedInfoTypes.delete
    , DLPProjectsStoredInfoTypesDeleteResource
    , DLPProjectsStoredInfoTypesDelete (..)
    , newDLPProjectsStoredInfoTypesDelete

    -- ** dlp.projects.storedInfoTypes.get
    , DLPProjectsStoredInfoTypesGetResource
    , DLPProjectsStoredInfoTypesGet (..)
    , newDLPProjectsStoredInfoTypesGet

    -- ** dlp.projects.storedInfoTypes.list
    , DLPProjectsStoredInfoTypesListResource
    , DLPProjectsStoredInfoTypesList (..)
    , newDLPProjectsStoredInfoTypesList

    -- ** dlp.projects.storedInfoTypes.patch
    , DLPProjectsStoredInfoTypesPatchResource
    , DLPProjectsStoredInfoTypesPatch (..)
    , newDLPProjectsStoredInfoTypesPatch

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GooglePrivacyDlpV2Action
    , GooglePrivacyDlpV2Action (..)
    , newGooglePrivacyDlpV2Action

    -- ** GooglePrivacyDlpV2ActionDetails
    , GooglePrivacyDlpV2ActionDetails (..)
    , newGooglePrivacyDlpV2ActionDetails

    -- ** GooglePrivacyDlpV2ActivateJobTriggerRequest
    , GooglePrivacyDlpV2ActivateJobTriggerRequest (..)
    , newGooglePrivacyDlpV2ActivateJobTriggerRequest

    -- ** GooglePrivacyDlpV2AllInfoTypes
    , GooglePrivacyDlpV2AllInfoTypes (..)
    , newGooglePrivacyDlpV2AllInfoTypes

    -- ** GooglePrivacyDlpV2AllText
    , GooglePrivacyDlpV2AllText (..)
    , newGooglePrivacyDlpV2AllText

    -- ** GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    , GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (..)
    , newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails

    -- ** GooglePrivacyDlpV2AuxiliaryTable
    , GooglePrivacyDlpV2AuxiliaryTable (..)
    , newGooglePrivacyDlpV2AuxiliaryTable

    -- ** GooglePrivacyDlpV2BigQueryField
    , GooglePrivacyDlpV2BigQueryField (..)
    , newGooglePrivacyDlpV2BigQueryField

    -- ** GooglePrivacyDlpV2BigQueryKey
    , GooglePrivacyDlpV2BigQueryKey (..)
    , newGooglePrivacyDlpV2BigQueryKey

    -- ** GooglePrivacyDlpV2BigQueryOptions
    , GooglePrivacyDlpV2BigQueryOptions (..)
    , newGooglePrivacyDlpV2BigQueryOptions

    -- ** GooglePrivacyDlpV2BigQueryOptions_SampleMethod
    , GooglePrivacyDlpV2BigQueryOptions_SampleMethod (..)

    -- ** GooglePrivacyDlpV2BigQueryTable
    , GooglePrivacyDlpV2BigQueryTable (..)
    , newGooglePrivacyDlpV2BigQueryTable

    -- ** GooglePrivacyDlpV2BoundingBox
    , GooglePrivacyDlpV2BoundingBox (..)
    , newGooglePrivacyDlpV2BoundingBox

    -- ** GooglePrivacyDlpV2Bucket
    , GooglePrivacyDlpV2Bucket (..)
    , newGooglePrivacyDlpV2Bucket

    -- ** GooglePrivacyDlpV2BucketingConfig
    , GooglePrivacyDlpV2BucketingConfig (..)
    , newGooglePrivacyDlpV2BucketingConfig

    -- ** GooglePrivacyDlpV2ByteContentItem
    , GooglePrivacyDlpV2ByteContentItem (..)
    , newGooglePrivacyDlpV2ByteContentItem

    -- ** GooglePrivacyDlpV2ByteContentItem_Type
    , GooglePrivacyDlpV2ByteContentItem_Type (..)

    -- ** GooglePrivacyDlpV2CancelDlpJobRequest
    , GooglePrivacyDlpV2CancelDlpJobRequest (..)
    , newGooglePrivacyDlpV2CancelDlpJobRequest

    -- ** GooglePrivacyDlpV2CategoricalStatsConfig
    , GooglePrivacyDlpV2CategoricalStatsConfig (..)
    , newGooglePrivacyDlpV2CategoricalStatsConfig

    -- ** GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    , GooglePrivacyDlpV2CategoricalStatsHistogramBucket (..)
    , newGooglePrivacyDlpV2CategoricalStatsHistogramBucket

    -- ** GooglePrivacyDlpV2CategoricalStatsResult
    , GooglePrivacyDlpV2CategoricalStatsResult (..)
    , newGooglePrivacyDlpV2CategoricalStatsResult

    -- ** GooglePrivacyDlpV2CharacterMaskConfig
    , GooglePrivacyDlpV2CharacterMaskConfig (..)
    , newGooglePrivacyDlpV2CharacterMaskConfig

    -- ** GooglePrivacyDlpV2CharsToIgnore
    , GooglePrivacyDlpV2CharsToIgnore (..)
    , newGooglePrivacyDlpV2CharsToIgnore

    -- ** GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
    , GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore (..)

    -- ** GooglePrivacyDlpV2CloudStorageFileSet
    , GooglePrivacyDlpV2CloudStorageFileSet (..)
    , newGooglePrivacyDlpV2CloudStorageFileSet

    -- ** GooglePrivacyDlpV2CloudStorageOptions
    , GooglePrivacyDlpV2CloudStorageOptions (..)
    , newGooglePrivacyDlpV2CloudStorageOptions

    -- ** GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
    , GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem (..)

    -- ** GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
    , GooglePrivacyDlpV2CloudStorageOptions_SampleMethod (..)

    -- ** GooglePrivacyDlpV2CloudStoragePath
    , GooglePrivacyDlpV2CloudStoragePath (..)
    , newGooglePrivacyDlpV2CloudStoragePath

    -- ** GooglePrivacyDlpV2CloudStorageRegexFileSet
    , GooglePrivacyDlpV2CloudStorageRegexFileSet (..)
    , newGooglePrivacyDlpV2CloudStorageRegexFileSet

    -- ** GooglePrivacyDlpV2Color
    , GooglePrivacyDlpV2Color (..)
    , newGooglePrivacyDlpV2Color

    -- ** GooglePrivacyDlpV2Condition
    , GooglePrivacyDlpV2Condition (..)
    , newGooglePrivacyDlpV2Condition

    -- ** GooglePrivacyDlpV2Condition_Operator
    , GooglePrivacyDlpV2Condition_Operator (..)

    -- ** GooglePrivacyDlpV2Conditions
    , GooglePrivacyDlpV2Conditions (..)
    , newGooglePrivacyDlpV2Conditions

    -- ** GooglePrivacyDlpV2Container
    , GooglePrivacyDlpV2Container (..)
    , newGooglePrivacyDlpV2Container

    -- ** GooglePrivacyDlpV2ContentItem
    , GooglePrivacyDlpV2ContentItem (..)
    , newGooglePrivacyDlpV2ContentItem

    -- ** GooglePrivacyDlpV2ContentLocation
    , GooglePrivacyDlpV2ContentLocation (..)
    , newGooglePrivacyDlpV2ContentLocation

    -- ** GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (..)
    , newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest

    -- ** GooglePrivacyDlpV2CreateDlpJobRequest
    , GooglePrivacyDlpV2CreateDlpJobRequest (..)
    , newGooglePrivacyDlpV2CreateDlpJobRequest

    -- ** GooglePrivacyDlpV2CreateInspectTemplateRequest
    , GooglePrivacyDlpV2CreateInspectTemplateRequest (..)
    , newGooglePrivacyDlpV2CreateInspectTemplateRequest

    -- ** GooglePrivacyDlpV2CreateJobTriggerRequest
    , GooglePrivacyDlpV2CreateJobTriggerRequest (..)
    , newGooglePrivacyDlpV2CreateJobTriggerRequest

    -- ** GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , GooglePrivacyDlpV2CreateStoredInfoTypeRequest (..)
    , newGooglePrivacyDlpV2CreateStoredInfoTypeRequest

    -- ** GooglePrivacyDlpV2CryptoDeterministicConfig
    , GooglePrivacyDlpV2CryptoDeterministicConfig (..)
    , newGooglePrivacyDlpV2CryptoDeterministicConfig

    -- ** GooglePrivacyDlpV2CryptoHashConfig
    , GooglePrivacyDlpV2CryptoHashConfig (..)
    , newGooglePrivacyDlpV2CryptoHashConfig

    -- ** GooglePrivacyDlpV2CryptoKey
    , GooglePrivacyDlpV2CryptoKey (..)
    , newGooglePrivacyDlpV2CryptoKey

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    , GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (..)
    , newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
    , GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet (..)

    -- ** GooglePrivacyDlpV2CustomInfoType
    , GooglePrivacyDlpV2CustomInfoType (..)
    , newGooglePrivacyDlpV2CustomInfoType

    -- ** GooglePrivacyDlpV2CustomInfoType_ExclusionType
    , GooglePrivacyDlpV2CustomInfoType_ExclusionType (..)

    -- ** GooglePrivacyDlpV2CustomInfoType_Likelihood
    , GooglePrivacyDlpV2CustomInfoType_Likelihood (..)

    -- ** GooglePrivacyDlpV2DataProfileAction
    , GooglePrivacyDlpV2DataProfileAction (..)
    , newGooglePrivacyDlpV2DataProfileAction

    -- ** GooglePrivacyDlpV2DataProfileConfigSnapshot
    , GooglePrivacyDlpV2DataProfileConfigSnapshot (..)
    , newGooglePrivacyDlpV2DataProfileConfigSnapshot

    -- ** GooglePrivacyDlpV2DataProfileJobConfig
    , GooglePrivacyDlpV2DataProfileJobConfig (..)
    , newGooglePrivacyDlpV2DataProfileJobConfig

    -- ** GooglePrivacyDlpV2DataProfileLocation
    , GooglePrivacyDlpV2DataProfileLocation (..)
    , newGooglePrivacyDlpV2DataProfileLocation

    -- ** GooglePrivacyDlpV2DataProfilePubSubCondition
    , GooglePrivacyDlpV2DataProfilePubSubCondition (..)
    , newGooglePrivacyDlpV2DataProfilePubSubCondition

    -- ** GooglePrivacyDlpV2DataProfilePubSubMessage
    , GooglePrivacyDlpV2DataProfilePubSubMessage (..)
    , newGooglePrivacyDlpV2DataProfilePubSubMessage

    -- ** GooglePrivacyDlpV2DataProfilePubSubMessage_Event
    , GooglePrivacyDlpV2DataProfilePubSubMessage_Event (..)

    -- ** GooglePrivacyDlpV2DataRiskLevel
    , GooglePrivacyDlpV2DataRiskLevel (..)
    , newGooglePrivacyDlpV2DataRiskLevel

    -- ** GooglePrivacyDlpV2DataRiskLevel_Score
    , GooglePrivacyDlpV2DataRiskLevel_Score (..)

    -- ** GooglePrivacyDlpV2DatastoreKey
    , GooglePrivacyDlpV2DatastoreKey (..)
    , newGooglePrivacyDlpV2DatastoreKey

    -- ** GooglePrivacyDlpV2DatastoreOptions
    , GooglePrivacyDlpV2DatastoreOptions (..)
    , newGooglePrivacyDlpV2DatastoreOptions

    -- ** GooglePrivacyDlpV2DateShiftConfig
    , GooglePrivacyDlpV2DateShiftConfig (..)
    , newGooglePrivacyDlpV2DateShiftConfig

    -- ** GooglePrivacyDlpV2DateTime
    , GooglePrivacyDlpV2DateTime (..)
    , newGooglePrivacyDlpV2DateTime

    -- ** GooglePrivacyDlpV2DateTime_DayOfWeek
    , GooglePrivacyDlpV2DateTime_DayOfWeek (..)

    -- ** GooglePrivacyDlpV2Deidentify
    , GooglePrivacyDlpV2Deidentify (..)
    , newGooglePrivacyDlpV2Deidentify

    -- ** GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem
    , GooglePrivacyDlpV2Deidentify_FileTypesToTransformItem (..)

    -- ** GooglePrivacyDlpV2DeidentifyConfig
    , GooglePrivacyDlpV2DeidentifyConfig (..)
    , newGooglePrivacyDlpV2DeidentifyConfig

    -- ** GooglePrivacyDlpV2DeidentifyContentRequest
    , GooglePrivacyDlpV2DeidentifyContentRequest (..)
    , newGooglePrivacyDlpV2DeidentifyContentRequest

    -- ** GooglePrivacyDlpV2DeidentifyContentResponse
    , GooglePrivacyDlpV2DeidentifyContentResponse (..)
    , newGooglePrivacyDlpV2DeidentifyContentResponse

    -- ** GooglePrivacyDlpV2DeidentifyDataSourceDetails
    , GooglePrivacyDlpV2DeidentifyDataSourceDetails (..)
    , newGooglePrivacyDlpV2DeidentifyDataSourceDetails

    -- ** GooglePrivacyDlpV2DeidentifyDataSourceStats
    , GooglePrivacyDlpV2DeidentifyDataSourceStats (..)
    , newGooglePrivacyDlpV2DeidentifyDataSourceStats

    -- ** GooglePrivacyDlpV2DeidentifyTemplate
    , GooglePrivacyDlpV2DeidentifyTemplate (..)
    , newGooglePrivacyDlpV2DeidentifyTemplate

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    , GooglePrivacyDlpV2DeltaPresenceEstimationConfig (..)
    , newGooglePrivacyDlpV2DeltaPresenceEstimationConfig

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    , GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (..)
    , newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    , GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues (..)
    , newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationResult
    , GooglePrivacyDlpV2DeltaPresenceEstimationResult (..)
    , newGooglePrivacyDlpV2DeltaPresenceEstimationResult

    -- ** GooglePrivacyDlpV2DetectionRule
    , GooglePrivacyDlpV2DetectionRule (..)
    , newGooglePrivacyDlpV2DetectionRule

    -- ** GooglePrivacyDlpV2Dictionary
    , GooglePrivacyDlpV2Dictionary (..)
    , newGooglePrivacyDlpV2Dictionary

    -- ** GooglePrivacyDlpV2DlpJob
    , GooglePrivacyDlpV2DlpJob (..)
    , newGooglePrivacyDlpV2DlpJob

    -- ** GooglePrivacyDlpV2DlpJob_State
    , GooglePrivacyDlpV2DlpJob_State (..)

    -- ** GooglePrivacyDlpV2DlpJob_Type
    , GooglePrivacyDlpV2DlpJob_Type (..)

    -- ** GooglePrivacyDlpV2DocumentLocation
    , GooglePrivacyDlpV2DocumentLocation (..)
    , newGooglePrivacyDlpV2DocumentLocation

    -- ** GooglePrivacyDlpV2EntityId
    , GooglePrivacyDlpV2EntityId (..)
    , newGooglePrivacyDlpV2EntityId

    -- ** GooglePrivacyDlpV2Error
    , GooglePrivacyDlpV2Error (..)
    , newGooglePrivacyDlpV2Error

    -- ** GooglePrivacyDlpV2ExcludeByHotword
    , GooglePrivacyDlpV2ExcludeByHotword (..)
    , newGooglePrivacyDlpV2ExcludeByHotword

    -- ** GooglePrivacyDlpV2ExcludeInfoTypes
    , GooglePrivacyDlpV2ExcludeInfoTypes (..)
    , newGooglePrivacyDlpV2ExcludeInfoTypes

    -- ** GooglePrivacyDlpV2ExclusionRule
    , GooglePrivacyDlpV2ExclusionRule (..)
    , newGooglePrivacyDlpV2ExclusionRule

    -- ** GooglePrivacyDlpV2ExclusionRule_MatchingType
    , GooglePrivacyDlpV2ExclusionRule_MatchingType (..)

    -- ** GooglePrivacyDlpV2Export
    , GooglePrivacyDlpV2Export (..)
    , newGooglePrivacyDlpV2Export

    -- ** GooglePrivacyDlpV2Expressions
    , GooglePrivacyDlpV2Expressions (..)
    , newGooglePrivacyDlpV2Expressions

    -- ** GooglePrivacyDlpV2Expressions_LogicalOperator
    , GooglePrivacyDlpV2Expressions_LogicalOperator (..)

    -- ** GooglePrivacyDlpV2FieldId
    , GooglePrivacyDlpV2FieldId (..)
    , newGooglePrivacyDlpV2FieldId

    -- ** GooglePrivacyDlpV2FieldTransformation
    , GooglePrivacyDlpV2FieldTransformation (..)
    , newGooglePrivacyDlpV2FieldTransformation

    -- ** GooglePrivacyDlpV2FileSet
    , GooglePrivacyDlpV2FileSet (..)
    , newGooglePrivacyDlpV2FileSet

    -- ** GooglePrivacyDlpV2Finding
    , GooglePrivacyDlpV2Finding (..)
    , newGooglePrivacyDlpV2Finding

    -- ** GooglePrivacyDlpV2Finding_Labels
    , GooglePrivacyDlpV2Finding_Labels (..)
    , newGooglePrivacyDlpV2Finding_Labels

    -- ** GooglePrivacyDlpV2Finding_Likelihood
    , GooglePrivacyDlpV2Finding_Likelihood (..)

    -- ** GooglePrivacyDlpV2FindingLimits
    , GooglePrivacyDlpV2FindingLimits (..)
    , newGooglePrivacyDlpV2FindingLimits

    -- ** GooglePrivacyDlpV2FinishDlpJobRequest
    , GooglePrivacyDlpV2FinishDlpJobRequest (..)
    , newGooglePrivacyDlpV2FinishDlpJobRequest

    -- ** GooglePrivacyDlpV2FixedSizeBucketingConfig
    , GooglePrivacyDlpV2FixedSizeBucketingConfig (..)
    , newGooglePrivacyDlpV2FixedSizeBucketingConfig

    -- ** GooglePrivacyDlpV2HotwordRule
    , GooglePrivacyDlpV2HotwordRule (..)
    , newGooglePrivacyDlpV2HotwordRule

    -- ** GooglePrivacyDlpV2HybridContentItem
    , GooglePrivacyDlpV2HybridContentItem (..)
    , newGooglePrivacyDlpV2HybridContentItem

    -- ** GooglePrivacyDlpV2HybridFindingDetails
    , GooglePrivacyDlpV2HybridFindingDetails (..)
    , newGooglePrivacyDlpV2HybridFindingDetails

    -- ** GooglePrivacyDlpV2HybridFindingDetails_Labels
    , GooglePrivacyDlpV2HybridFindingDetails_Labels (..)
    , newGooglePrivacyDlpV2HybridFindingDetails_Labels

    -- ** GooglePrivacyDlpV2HybridInspectDlpJobRequest
    , GooglePrivacyDlpV2HybridInspectDlpJobRequest (..)
    , newGooglePrivacyDlpV2HybridInspectDlpJobRequest

    -- ** GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    , GooglePrivacyDlpV2HybridInspectJobTriggerRequest (..)
    , newGooglePrivacyDlpV2HybridInspectJobTriggerRequest

    -- ** GooglePrivacyDlpV2HybridInspectResponse
    , GooglePrivacyDlpV2HybridInspectResponse (..)
    , newGooglePrivacyDlpV2HybridInspectResponse

    -- ** GooglePrivacyDlpV2HybridInspectStatistics
    , GooglePrivacyDlpV2HybridInspectStatistics (..)
    , newGooglePrivacyDlpV2HybridInspectStatistics

    -- ** GooglePrivacyDlpV2HybridOptions
    , GooglePrivacyDlpV2HybridOptions (..)
    , newGooglePrivacyDlpV2HybridOptions

    -- ** GooglePrivacyDlpV2HybridOptions_Labels
    , GooglePrivacyDlpV2HybridOptions_Labels (..)
    , newGooglePrivacyDlpV2HybridOptions_Labels

    -- ** GooglePrivacyDlpV2ImageLocation
    , GooglePrivacyDlpV2ImageLocation (..)
    , newGooglePrivacyDlpV2ImageLocation

    -- ** GooglePrivacyDlpV2ImageRedactionConfig
    , GooglePrivacyDlpV2ImageRedactionConfig (..)
    , newGooglePrivacyDlpV2ImageRedactionConfig

    -- ** GooglePrivacyDlpV2ImageTransformation
    , GooglePrivacyDlpV2ImageTransformation (..)
    , newGooglePrivacyDlpV2ImageTransformation

    -- ** GooglePrivacyDlpV2ImageTransformations
    , GooglePrivacyDlpV2ImageTransformations (..)
    , newGooglePrivacyDlpV2ImageTransformations

    -- ** GooglePrivacyDlpV2InfoType
    , GooglePrivacyDlpV2InfoType (..)
    , newGooglePrivacyDlpV2InfoType

    -- ** GooglePrivacyDlpV2InfoTypeCategory
    , GooglePrivacyDlpV2InfoTypeCategory (..)
    , newGooglePrivacyDlpV2InfoTypeCategory

    -- ** GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory
    , GooglePrivacyDlpV2InfoTypeCategory_IndustryCategory (..)

    -- ** GooglePrivacyDlpV2InfoTypeCategory_LocationCategory
    , GooglePrivacyDlpV2InfoTypeCategory_LocationCategory (..)

    -- ** GooglePrivacyDlpV2InfoTypeCategory_TypeCategory
    , GooglePrivacyDlpV2InfoTypeCategory_TypeCategory (..)

    -- ** GooglePrivacyDlpV2InfoTypeDescription
    , GooglePrivacyDlpV2InfoTypeDescription (..)
    , newGooglePrivacyDlpV2InfoTypeDescription

    -- ** GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
    , GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem (..)

    -- ** GooglePrivacyDlpV2InfoTypeLimit
    , GooglePrivacyDlpV2InfoTypeLimit (..)
    , newGooglePrivacyDlpV2InfoTypeLimit

    -- ** GooglePrivacyDlpV2InfoTypeStats
    , GooglePrivacyDlpV2InfoTypeStats (..)
    , newGooglePrivacyDlpV2InfoTypeStats

    -- ** GooglePrivacyDlpV2InfoTypeSummary
    , GooglePrivacyDlpV2InfoTypeSummary (..)
    , newGooglePrivacyDlpV2InfoTypeSummary

    -- ** GooglePrivacyDlpV2InfoTypeTransformation
    , GooglePrivacyDlpV2InfoTypeTransformation (..)
    , newGooglePrivacyDlpV2InfoTypeTransformation

    -- ** GooglePrivacyDlpV2InfoTypeTransformations
    , GooglePrivacyDlpV2InfoTypeTransformations (..)
    , newGooglePrivacyDlpV2InfoTypeTransformations

    -- ** GooglePrivacyDlpV2InspectConfig
    , GooglePrivacyDlpV2InspectConfig (..)
    , newGooglePrivacyDlpV2InspectConfig

    -- ** GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
    , GooglePrivacyDlpV2InspectConfig_ContentOptionsItem (..)

    -- ** GooglePrivacyDlpV2InspectConfig_MinLikelihood
    , GooglePrivacyDlpV2InspectConfig_MinLikelihood (..)

    -- ** GooglePrivacyDlpV2InspectContentRequest
    , GooglePrivacyDlpV2InspectContentRequest (..)
    , newGooglePrivacyDlpV2InspectContentRequest

    -- ** GooglePrivacyDlpV2InspectContentResponse
    , GooglePrivacyDlpV2InspectContentResponse (..)
    , newGooglePrivacyDlpV2InspectContentResponse

    -- ** GooglePrivacyDlpV2InspectDataSourceDetails
    , GooglePrivacyDlpV2InspectDataSourceDetails (..)
    , newGooglePrivacyDlpV2InspectDataSourceDetails

    -- ** GooglePrivacyDlpV2InspectJobConfig
    , GooglePrivacyDlpV2InspectJobConfig (..)
    , newGooglePrivacyDlpV2InspectJobConfig

    -- ** GooglePrivacyDlpV2InspectResult
    , GooglePrivacyDlpV2InspectResult (..)
    , newGooglePrivacyDlpV2InspectResult

    -- ** GooglePrivacyDlpV2InspectTemplate
    , GooglePrivacyDlpV2InspectTemplate (..)
    , newGooglePrivacyDlpV2InspectTemplate

    -- ** GooglePrivacyDlpV2InspectionRule
    , GooglePrivacyDlpV2InspectionRule (..)
    , newGooglePrivacyDlpV2InspectionRule

    -- ** GooglePrivacyDlpV2InspectionRuleSet
    , GooglePrivacyDlpV2InspectionRuleSet (..)
    , newGooglePrivacyDlpV2InspectionRuleSet

    -- ** GooglePrivacyDlpV2JobNotificationEmails
    , GooglePrivacyDlpV2JobNotificationEmails (..)
    , newGooglePrivacyDlpV2JobNotificationEmails

    -- ** GooglePrivacyDlpV2JobTrigger
    , GooglePrivacyDlpV2JobTrigger (..)
    , newGooglePrivacyDlpV2JobTrigger

    -- ** GooglePrivacyDlpV2JobTrigger_Status
    , GooglePrivacyDlpV2JobTrigger_Status (..)

    -- ** GooglePrivacyDlpV2KAnonymityConfig
    , GooglePrivacyDlpV2KAnonymityConfig (..)
    , newGooglePrivacyDlpV2KAnonymityConfig

    -- ** GooglePrivacyDlpV2KAnonymityEquivalenceClass
    , GooglePrivacyDlpV2KAnonymityEquivalenceClass (..)
    , newGooglePrivacyDlpV2KAnonymityEquivalenceClass

    -- ** GooglePrivacyDlpV2KAnonymityHistogramBucket
    , GooglePrivacyDlpV2KAnonymityHistogramBucket (..)
    , newGooglePrivacyDlpV2KAnonymityHistogramBucket

    -- ** GooglePrivacyDlpV2KAnonymityResult
    , GooglePrivacyDlpV2KAnonymityResult (..)
    , newGooglePrivacyDlpV2KAnonymityResult

    -- ** GooglePrivacyDlpV2KMapEstimationConfig
    , GooglePrivacyDlpV2KMapEstimationConfig (..)
    , newGooglePrivacyDlpV2KMapEstimationConfig

    -- ** GooglePrivacyDlpV2KMapEstimationHistogramBucket
    , GooglePrivacyDlpV2KMapEstimationHistogramBucket (..)
    , newGooglePrivacyDlpV2KMapEstimationHistogramBucket

    -- ** GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    , GooglePrivacyDlpV2KMapEstimationQuasiIdValues (..)
    , newGooglePrivacyDlpV2KMapEstimationQuasiIdValues

    -- ** GooglePrivacyDlpV2KMapEstimationResult
    , GooglePrivacyDlpV2KMapEstimationResult (..)
    , newGooglePrivacyDlpV2KMapEstimationResult

    -- ** GooglePrivacyDlpV2Key
    , GooglePrivacyDlpV2Key (..)
    , newGooglePrivacyDlpV2Key

    -- ** GooglePrivacyDlpV2KindExpression
    , GooglePrivacyDlpV2KindExpression (..)
    , newGooglePrivacyDlpV2KindExpression

    -- ** GooglePrivacyDlpV2KmsWrappedCryptoKey
    , GooglePrivacyDlpV2KmsWrappedCryptoKey (..)
    , newGooglePrivacyDlpV2KmsWrappedCryptoKey

    -- ** GooglePrivacyDlpV2LDiversityConfig
    , GooglePrivacyDlpV2LDiversityConfig (..)
    , newGooglePrivacyDlpV2LDiversityConfig

    -- ** GooglePrivacyDlpV2LDiversityEquivalenceClass
    , GooglePrivacyDlpV2LDiversityEquivalenceClass (..)
    , newGooglePrivacyDlpV2LDiversityEquivalenceClass

    -- ** GooglePrivacyDlpV2LDiversityHistogramBucket
    , GooglePrivacyDlpV2LDiversityHistogramBucket (..)
    , newGooglePrivacyDlpV2LDiversityHistogramBucket

    -- ** GooglePrivacyDlpV2LDiversityResult
    , GooglePrivacyDlpV2LDiversityResult (..)
    , newGooglePrivacyDlpV2LDiversityResult

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryConfig
    , GooglePrivacyDlpV2LargeCustomDictionaryConfig (..)
    , newGooglePrivacyDlpV2LargeCustomDictionaryConfig

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryStats
    , GooglePrivacyDlpV2LargeCustomDictionaryStats (..)
    , newGooglePrivacyDlpV2LargeCustomDictionaryStats

    -- ** GooglePrivacyDlpV2LeaveUntransformed
    , GooglePrivacyDlpV2LeaveUntransformed (..)
    , newGooglePrivacyDlpV2LeaveUntransformed

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment
    , GooglePrivacyDlpV2LikelihoodAdjustment (..)
    , newGooglePrivacyDlpV2LikelihoodAdjustment

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
    , GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood (..)

    -- ** GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    , GooglePrivacyDlpV2ListDeidentifyTemplatesResponse (..)
    , newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse

    -- ** GooglePrivacyDlpV2ListDlpJobsResponse
    , GooglePrivacyDlpV2ListDlpJobsResponse (..)
    , newGooglePrivacyDlpV2ListDlpJobsResponse

    -- ** GooglePrivacyDlpV2ListInfoTypesResponse
    , GooglePrivacyDlpV2ListInfoTypesResponse (..)
    , newGooglePrivacyDlpV2ListInfoTypesResponse

    -- ** GooglePrivacyDlpV2ListInspectTemplatesResponse
    , GooglePrivacyDlpV2ListInspectTemplatesResponse (..)
    , newGooglePrivacyDlpV2ListInspectTemplatesResponse

    -- ** GooglePrivacyDlpV2ListJobTriggersResponse
    , GooglePrivacyDlpV2ListJobTriggersResponse (..)
    , newGooglePrivacyDlpV2ListJobTriggersResponse

    -- ** GooglePrivacyDlpV2ListStoredInfoTypesResponse
    , GooglePrivacyDlpV2ListStoredInfoTypesResponse (..)
    , newGooglePrivacyDlpV2ListStoredInfoTypesResponse

    -- ** GooglePrivacyDlpV2Location
    , GooglePrivacyDlpV2Location (..)
    , newGooglePrivacyDlpV2Location

    -- ** GooglePrivacyDlpV2Manual
    , GooglePrivacyDlpV2Manual (..)
    , newGooglePrivacyDlpV2Manual

    -- ** GooglePrivacyDlpV2MetadataLocation
    , GooglePrivacyDlpV2MetadataLocation (..)
    , newGooglePrivacyDlpV2MetadataLocation

    -- ** GooglePrivacyDlpV2MetadataLocation_Type
    , GooglePrivacyDlpV2MetadataLocation_Type (..)

    -- ** GooglePrivacyDlpV2NumericalStatsConfig
    , GooglePrivacyDlpV2NumericalStatsConfig (..)
    , newGooglePrivacyDlpV2NumericalStatsConfig

    -- ** GooglePrivacyDlpV2NumericalStatsResult
    , GooglePrivacyDlpV2NumericalStatsResult (..)
    , newGooglePrivacyDlpV2NumericalStatsResult

    -- ** GooglePrivacyDlpV2OtherInfoTypeSummary
    , GooglePrivacyDlpV2OtherInfoTypeSummary (..)
    , newGooglePrivacyDlpV2OtherInfoTypeSummary

    -- ** GooglePrivacyDlpV2OutputStorageConfig
    , GooglePrivacyDlpV2OutputStorageConfig (..)
    , newGooglePrivacyDlpV2OutputStorageConfig

    -- ** GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
    , GooglePrivacyDlpV2OutputStorageConfig_OutputSchema (..)

    -- ** GooglePrivacyDlpV2PartitionId
    , GooglePrivacyDlpV2PartitionId (..)
    , newGooglePrivacyDlpV2PartitionId

    -- ** GooglePrivacyDlpV2PathElement
    , GooglePrivacyDlpV2PathElement (..)
    , newGooglePrivacyDlpV2PathElement

    -- ** GooglePrivacyDlpV2PrimitiveTransformation
    , GooglePrivacyDlpV2PrimitiveTransformation (..)
    , newGooglePrivacyDlpV2PrimitiveTransformation

    -- ** GooglePrivacyDlpV2PrivacyMetric
    , GooglePrivacyDlpV2PrivacyMetric (..)
    , newGooglePrivacyDlpV2PrivacyMetric

    -- ** GooglePrivacyDlpV2ProfileStatus
    , GooglePrivacyDlpV2ProfileStatus (..)
    , newGooglePrivacyDlpV2ProfileStatus

    -- ** GooglePrivacyDlpV2Proximity
    , GooglePrivacyDlpV2Proximity (..)
    , newGooglePrivacyDlpV2Proximity

    -- ** GooglePrivacyDlpV2PubSubCondition
    , GooglePrivacyDlpV2PubSubCondition (..)
    , newGooglePrivacyDlpV2PubSubCondition

    -- ** GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore
    , GooglePrivacyDlpV2PubSubCondition_MinimumRiskScore (..)

    -- ** GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore
    , GooglePrivacyDlpV2PubSubCondition_MinimumSensitivityScore (..)

    -- ** GooglePrivacyDlpV2PubSubExpressions
    , GooglePrivacyDlpV2PubSubExpressions (..)
    , newGooglePrivacyDlpV2PubSubExpressions

    -- ** GooglePrivacyDlpV2PubSubExpressions_LogicalOperator
    , GooglePrivacyDlpV2PubSubExpressions_LogicalOperator (..)

    -- ** GooglePrivacyDlpV2PubSubNotification
    , GooglePrivacyDlpV2PubSubNotification (..)
    , newGooglePrivacyDlpV2PubSubNotification

    -- ** GooglePrivacyDlpV2PubSubNotification_DetailOfMessage
    , GooglePrivacyDlpV2PubSubNotification_DetailOfMessage (..)

    -- ** GooglePrivacyDlpV2PubSubNotification_Event
    , GooglePrivacyDlpV2PubSubNotification_Event (..)

    -- ** GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    , GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog (..)
    , newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog

    -- ** GooglePrivacyDlpV2PublishSummaryToCscc
    , GooglePrivacyDlpV2PublishSummaryToCscc (..)
    , newGooglePrivacyDlpV2PublishSummaryToCscc

    -- ** GooglePrivacyDlpV2PublishToPubSub
    , GooglePrivacyDlpV2PublishToPubSub (..)
    , newGooglePrivacyDlpV2PublishToPubSub

    -- ** GooglePrivacyDlpV2PublishToStackdriver
    , GooglePrivacyDlpV2PublishToStackdriver (..)
    , newGooglePrivacyDlpV2PublishToStackdriver

    -- ** GooglePrivacyDlpV2QuasiId
    , GooglePrivacyDlpV2QuasiId (..)
    , newGooglePrivacyDlpV2QuasiId

    -- ** GooglePrivacyDlpV2QuasiIdField
    , GooglePrivacyDlpV2QuasiIdField (..)
    , newGooglePrivacyDlpV2QuasiIdField

    -- ** GooglePrivacyDlpV2QuasiIdentifierField
    , GooglePrivacyDlpV2QuasiIdentifierField (..)
    , newGooglePrivacyDlpV2QuasiIdentifierField

    -- ** GooglePrivacyDlpV2QuoteInfo
    , GooglePrivacyDlpV2QuoteInfo (..)
    , newGooglePrivacyDlpV2QuoteInfo

    -- ** GooglePrivacyDlpV2Range
    , GooglePrivacyDlpV2Range (..)
    , newGooglePrivacyDlpV2Range

    -- ** GooglePrivacyDlpV2RecordCondition
    , GooglePrivacyDlpV2RecordCondition (..)
    , newGooglePrivacyDlpV2RecordCondition

    -- ** GooglePrivacyDlpV2RecordKey
    , GooglePrivacyDlpV2RecordKey (..)
    , newGooglePrivacyDlpV2RecordKey

    -- ** GooglePrivacyDlpV2RecordLocation
    , GooglePrivacyDlpV2RecordLocation (..)
    , newGooglePrivacyDlpV2RecordLocation

    -- ** GooglePrivacyDlpV2RecordSuppression
    , GooglePrivacyDlpV2RecordSuppression (..)
    , newGooglePrivacyDlpV2RecordSuppression

    -- ** GooglePrivacyDlpV2RecordTransformation
    , GooglePrivacyDlpV2RecordTransformation (..)
    , newGooglePrivacyDlpV2RecordTransformation

    -- ** GooglePrivacyDlpV2RecordTransformations
    , GooglePrivacyDlpV2RecordTransformations (..)
    , newGooglePrivacyDlpV2RecordTransformations

    -- ** GooglePrivacyDlpV2RedactConfig
    , GooglePrivacyDlpV2RedactConfig (..)
    , newGooglePrivacyDlpV2RedactConfig

    -- ** GooglePrivacyDlpV2RedactImageRequest
    , GooglePrivacyDlpV2RedactImageRequest (..)
    , newGooglePrivacyDlpV2RedactImageRequest

    -- ** GooglePrivacyDlpV2RedactImageResponse
    , GooglePrivacyDlpV2RedactImageResponse (..)
    , newGooglePrivacyDlpV2RedactImageResponse

    -- ** GooglePrivacyDlpV2Regex
    , GooglePrivacyDlpV2Regex (..)
    , newGooglePrivacyDlpV2Regex

    -- ** GooglePrivacyDlpV2ReidentifyContentRequest
    , GooglePrivacyDlpV2ReidentifyContentRequest (..)
    , newGooglePrivacyDlpV2ReidentifyContentRequest

    -- ** GooglePrivacyDlpV2ReidentifyContentResponse
    , GooglePrivacyDlpV2ReidentifyContentResponse (..)
    , newGooglePrivacyDlpV2ReidentifyContentResponse

    -- ** GooglePrivacyDlpV2ReplaceDictionaryConfig
    , GooglePrivacyDlpV2ReplaceDictionaryConfig (..)
    , newGooglePrivacyDlpV2ReplaceDictionaryConfig

    -- ** GooglePrivacyDlpV2ReplaceValueConfig
    , GooglePrivacyDlpV2ReplaceValueConfig (..)
    , newGooglePrivacyDlpV2ReplaceValueConfig

    -- ** GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    , GooglePrivacyDlpV2ReplaceWithInfoTypeConfig (..)
    , newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig

    -- ** GooglePrivacyDlpV2RequestedDeidentifyOptions
    , GooglePrivacyDlpV2RequestedDeidentifyOptions (..)
    , newGooglePrivacyDlpV2RequestedDeidentifyOptions

    -- ** GooglePrivacyDlpV2RequestedOptions
    , GooglePrivacyDlpV2RequestedOptions (..)
    , newGooglePrivacyDlpV2RequestedOptions

    -- ** GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    , GooglePrivacyDlpV2RequestedRiskAnalysisOptions (..)
    , newGooglePrivacyDlpV2RequestedRiskAnalysisOptions

    -- ** GooglePrivacyDlpV2Result
    , GooglePrivacyDlpV2Result (..)
    , newGooglePrivacyDlpV2Result

    -- ** GooglePrivacyDlpV2RiskAnalysisJobConfig
    , GooglePrivacyDlpV2RiskAnalysisJobConfig (..)
    , newGooglePrivacyDlpV2RiskAnalysisJobConfig

    -- ** GooglePrivacyDlpV2Row
    , GooglePrivacyDlpV2Row (..)
    , newGooglePrivacyDlpV2Row

    -- ** GooglePrivacyDlpV2SaveFindings
    , GooglePrivacyDlpV2SaveFindings (..)
    , newGooglePrivacyDlpV2SaveFindings

    -- ** GooglePrivacyDlpV2Schedule
    , GooglePrivacyDlpV2Schedule (..)
    , newGooglePrivacyDlpV2Schedule

    -- ** GooglePrivacyDlpV2SelectedInfoTypes
    , GooglePrivacyDlpV2SelectedInfoTypes (..)
    , newGooglePrivacyDlpV2SelectedInfoTypes

    -- ** GooglePrivacyDlpV2SensitivityScore
    , GooglePrivacyDlpV2SensitivityScore (..)
    , newGooglePrivacyDlpV2SensitivityScore

    -- ** GooglePrivacyDlpV2SensitivityScore_Score
    , GooglePrivacyDlpV2SensitivityScore_Score (..)

    -- ** GooglePrivacyDlpV2StatisticalTable
    , GooglePrivacyDlpV2StatisticalTable (..)
    , newGooglePrivacyDlpV2StatisticalTable

    -- ** GooglePrivacyDlpV2StorageConfig
    , GooglePrivacyDlpV2StorageConfig (..)
    , newGooglePrivacyDlpV2StorageConfig

    -- ** GooglePrivacyDlpV2StorageMetadataLabel
    , GooglePrivacyDlpV2StorageMetadataLabel (..)
    , newGooglePrivacyDlpV2StorageMetadataLabel

    -- ** GooglePrivacyDlpV2StoredInfoType
    , GooglePrivacyDlpV2StoredInfoType (..)
    , newGooglePrivacyDlpV2StoredInfoType

    -- ** GooglePrivacyDlpV2StoredInfoTypeConfig
    , GooglePrivacyDlpV2StoredInfoTypeConfig (..)
    , newGooglePrivacyDlpV2StoredInfoTypeConfig

    -- ** GooglePrivacyDlpV2StoredInfoTypeStats
    , GooglePrivacyDlpV2StoredInfoTypeStats (..)
    , newGooglePrivacyDlpV2StoredInfoTypeStats

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion
    , GooglePrivacyDlpV2StoredInfoTypeVersion (..)
    , newGooglePrivacyDlpV2StoredInfoTypeVersion

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion_State
    , GooglePrivacyDlpV2StoredInfoTypeVersion_State (..)

    -- ** GooglePrivacyDlpV2StoredType
    , GooglePrivacyDlpV2StoredType (..)
    , newGooglePrivacyDlpV2StoredType

    -- ** GooglePrivacyDlpV2SummaryResult
    , GooglePrivacyDlpV2SummaryResult (..)
    , newGooglePrivacyDlpV2SummaryResult

    -- ** GooglePrivacyDlpV2SummaryResult_Code
    , GooglePrivacyDlpV2SummaryResult_Code (..)

    -- ** GooglePrivacyDlpV2SurrogateType
    , GooglePrivacyDlpV2SurrogateType (..)
    , newGooglePrivacyDlpV2SurrogateType

    -- ** GooglePrivacyDlpV2Table
    , GooglePrivacyDlpV2Table (..)
    , newGooglePrivacyDlpV2Table

    -- ** GooglePrivacyDlpV2TableDataProfile
    , GooglePrivacyDlpV2TableDataProfile (..)
    , newGooglePrivacyDlpV2TableDataProfile

    -- ** GooglePrivacyDlpV2TableDataProfile_EncryptionStatus
    , GooglePrivacyDlpV2TableDataProfile_EncryptionStatus (..)

    -- ** GooglePrivacyDlpV2TableDataProfile_ResourceLabels
    , GooglePrivacyDlpV2TableDataProfile_ResourceLabels (..)
    , newGooglePrivacyDlpV2TableDataProfile_ResourceLabels

    -- ** GooglePrivacyDlpV2TableDataProfile_ResourceVisibility
    , GooglePrivacyDlpV2TableDataProfile_ResourceVisibility (..)

    -- ** GooglePrivacyDlpV2TableDataProfile_State
    , GooglePrivacyDlpV2TableDataProfile_State (..)

    -- ** GooglePrivacyDlpV2TableLocation
    , GooglePrivacyDlpV2TableLocation (..)
    , newGooglePrivacyDlpV2TableLocation

    -- ** GooglePrivacyDlpV2TableOptions
    , GooglePrivacyDlpV2TableOptions (..)
    , newGooglePrivacyDlpV2TableOptions

    -- ** GooglePrivacyDlpV2TaggedField
    , GooglePrivacyDlpV2TaggedField (..)
    , newGooglePrivacyDlpV2TaggedField

    -- ** GooglePrivacyDlpV2ThrowError
    , GooglePrivacyDlpV2ThrowError (..)
    , newGooglePrivacyDlpV2ThrowError

    -- ** GooglePrivacyDlpV2TimePartConfig
    , GooglePrivacyDlpV2TimePartConfig (..)
    , newGooglePrivacyDlpV2TimePartConfig

    -- ** GooglePrivacyDlpV2TimePartConfig_PartToExtract
    , GooglePrivacyDlpV2TimePartConfig_PartToExtract (..)

    -- ** GooglePrivacyDlpV2TimeZone
    , GooglePrivacyDlpV2TimeZone (..)
    , newGooglePrivacyDlpV2TimeZone

    -- ** GooglePrivacyDlpV2TimespanConfig
    , GooglePrivacyDlpV2TimespanConfig (..)
    , newGooglePrivacyDlpV2TimespanConfig

    -- ** GooglePrivacyDlpV2TransformationConfig
    , GooglePrivacyDlpV2TransformationConfig (..)
    , newGooglePrivacyDlpV2TransformationConfig

    -- ** GooglePrivacyDlpV2TransformationDescription
    , GooglePrivacyDlpV2TransformationDescription (..)
    , newGooglePrivacyDlpV2TransformationDescription

    -- ** GooglePrivacyDlpV2TransformationDescription_Type
    , GooglePrivacyDlpV2TransformationDescription_Type (..)

    -- ** GooglePrivacyDlpV2TransformationDetails
    , GooglePrivacyDlpV2TransformationDetails (..)
    , newGooglePrivacyDlpV2TransformationDetails

    -- ** GooglePrivacyDlpV2TransformationDetailsStorageConfig
    , GooglePrivacyDlpV2TransformationDetailsStorageConfig (..)
    , newGooglePrivacyDlpV2TransformationDetailsStorageConfig

    -- ** GooglePrivacyDlpV2TransformationErrorHandling
    , GooglePrivacyDlpV2TransformationErrorHandling (..)
    , newGooglePrivacyDlpV2TransformationErrorHandling

    -- ** GooglePrivacyDlpV2TransformationLocation
    , GooglePrivacyDlpV2TransformationLocation (..)
    , newGooglePrivacyDlpV2TransformationLocation

    -- ** GooglePrivacyDlpV2TransformationLocation_ContainerType
    , GooglePrivacyDlpV2TransformationLocation_ContainerType (..)

    -- ** GooglePrivacyDlpV2TransformationOverview
    , GooglePrivacyDlpV2TransformationOverview (..)
    , newGooglePrivacyDlpV2TransformationOverview

    -- ** GooglePrivacyDlpV2TransformationResultStatus
    , GooglePrivacyDlpV2TransformationResultStatus (..)
    , newGooglePrivacyDlpV2TransformationResultStatus

    -- ** GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType
    , GooglePrivacyDlpV2TransformationResultStatus_ResultStatusType (..)

    -- ** GooglePrivacyDlpV2TransformationSummary
    , GooglePrivacyDlpV2TransformationSummary (..)
    , newGooglePrivacyDlpV2TransformationSummary

    -- ** GooglePrivacyDlpV2TransientCryptoKey
    , GooglePrivacyDlpV2TransientCryptoKey (..)
    , newGooglePrivacyDlpV2TransientCryptoKey

    -- ** GooglePrivacyDlpV2Trigger
    , GooglePrivacyDlpV2Trigger (..)
    , newGooglePrivacyDlpV2Trigger

    -- ** GooglePrivacyDlpV2UnwrappedCryptoKey
    , GooglePrivacyDlpV2UnwrappedCryptoKey (..)
    , newGooglePrivacyDlpV2UnwrappedCryptoKey

    -- ** GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (..)
    , newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest

    -- ** GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , GooglePrivacyDlpV2UpdateInspectTemplateRequest (..)
    , newGooglePrivacyDlpV2UpdateInspectTemplateRequest

    -- ** GooglePrivacyDlpV2UpdateJobTriggerRequest
    , GooglePrivacyDlpV2UpdateJobTriggerRequest (..)
    , newGooglePrivacyDlpV2UpdateJobTriggerRequest

    -- ** GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , GooglePrivacyDlpV2UpdateStoredInfoTypeRequest (..)
    , newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest

    -- ** GooglePrivacyDlpV2Value
    , GooglePrivacyDlpV2Value (..)
    , newGooglePrivacyDlpV2Value

    -- ** GooglePrivacyDlpV2Value_DayOfWeekValue
    , GooglePrivacyDlpV2Value_DayOfWeekValue (..)

    -- ** GooglePrivacyDlpV2ValueFrequency
    , GooglePrivacyDlpV2ValueFrequency (..)
    , newGooglePrivacyDlpV2ValueFrequency

    -- ** GooglePrivacyDlpV2VersionDescription
    , GooglePrivacyDlpV2VersionDescription (..)
    , newGooglePrivacyDlpV2VersionDescription

    -- ** GooglePrivacyDlpV2WordList
    , GooglePrivacyDlpV2WordList (..)
    , newGooglePrivacyDlpV2WordList

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty (..)
    , newGoogleProtobufEmpty

    -- ** GoogleRpcStatus
    , GoogleRpcStatus (..)
    , newGoogleRpcStatus

    -- ** GoogleRpcStatus_DetailsItem
    , GoogleRpcStatus_DetailsItem (..)
    , newGoogleRpcStatus_DetailsItem

    -- ** GoogleTypeDate
    , GoogleTypeDate (..)
    , newGoogleTypeDate

    -- ** GoogleTypeTimeOfDay
    , GoogleTypeTimeOfDay (..)
    , newGoogleTypeTimeOfDay

    -- ** OrganizationsLocationsDlpJobsListType
    , OrganizationsLocationsDlpJobsListType (..)

    -- ** OrganizationsLocationsJobTriggersListType
    , OrganizationsLocationsJobTriggersListType (..)

    -- ** ProjectsDlpJobsListType
    , ProjectsDlpJobsListType (..)

    -- ** ProjectsJobTriggersListType
    , ProjectsJobTriggersListType (..)

    -- ** ProjectsLocationsDlpJobsListType
    , ProjectsLocationsDlpJobsListType (..)

    -- ** ProjectsLocationsJobTriggersListType
    , ProjectsLocationsJobTriggersListType (..)
    ) where

import Gogol.DLP.InfoTypes.List
import Gogol.DLP.Locations.InfoTypes.List
import Gogol.DLP.Organizations.DeidentifyTemplates.Create
import Gogol.DLP.Organizations.DeidentifyTemplates.Delete
import Gogol.DLP.Organizations.DeidentifyTemplates.Get
import Gogol.DLP.Organizations.DeidentifyTemplates.List
import Gogol.DLP.Organizations.DeidentifyTemplates.Patch
import Gogol.DLP.Organizations.InspectTemplates.Create
import Gogol.DLP.Organizations.InspectTemplates.Delete
import Gogol.DLP.Organizations.InspectTemplates.Get
import Gogol.DLP.Organizations.InspectTemplates.List
import Gogol.DLP.Organizations.InspectTemplates.Patch
import Gogol.DLP.Organizations.Locations.DeidentifyTemplates.Create
import Gogol.DLP.Organizations.Locations.DeidentifyTemplates.Delete
import Gogol.DLP.Organizations.Locations.DeidentifyTemplates.Get
import Gogol.DLP.Organizations.Locations.DeidentifyTemplates.List
import Gogol.DLP.Organizations.Locations.DeidentifyTemplates.Patch
import Gogol.DLP.Organizations.Locations.DlpJobs.List
import Gogol.DLP.Organizations.Locations.InspectTemplates.Create
import Gogol.DLP.Organizations.Locations.InspectTemplates.Delete
import Gogol.DLP.Organizations.Locations.InspectTemplates.Get
import Gogol.DLP.Organizations.Locations.InspectTemplates.List
import Gogol.DLP.Organizations.Locations.InspectTemplates.Patch
import Gogol.DLP.Organizations.Locations.JobTriggers.Create
import Gogol.DLP.Organizations.Locations.JobTriggers.Delete
import Gogol.DLP.Organizations.Locations.JobTriggers.Get
import Gogol.DLP.Organizations.Locations.JobTriggers.List
import Gogol.DLP.Organizations.Locations.JobTriggers.Patch
import Gogol.DLP.Organizations.Locations.StoredInfoTypes.Create
import Gogol.DLP.Organizations.Locations.StoredInfoTypes.Delete
import Gogol.DLP.Organizations.Locations.StoredInfoTypes.Get
import Gogol.DLP.Organizations.Locations.StoredInfoTypes.List
import Gogol.DLP.Organizations.Locations.StoredInfoTypes.Patch
import Gogol.DLP.Organizations.StoredInfoTypes.Create
import Gogol.DLP.Organizations.StoredInfoTypes.Delete
import Gogol.DLP.Organizations.StoredInfoTypes.Get
import Gogol.DLP.Organizations.StoredInfoTypes.List
import Gogol.DLP.Organizations.StoredInfoTypes.Patch
import Gogol.DLP.Projects.Content.Deidentify
import Gogol.DLP.Projects.Content.Inspect
import Gogol.DLP.Projects.Content.Reidentify
import Gogol.DLP.Projects.DeidentifyTemplates.Create
import Gogol.DLP.Projects.DeidentifyTemplates.Delete
import Gogol.DLP.Projects.DeidentifyTemplates.Get
import Gogol.DLP.Projects.DeidentifyTemplates.List
import Gogol.DLP.Projects.DeidentifyTemplates.Patch
import Gogol.DLP.Projects.DlpJobs.Cancel
import Gogol.DLP.Projects.DlpJobs.Create
import Gogol.DLP.Projects.DlpJobs.Delete
import Gogol.DLP.Projects.DlpJobs.Get
import Gogol.DLP.Projects.DlpJobs.List
import Gogol.DLP.Projects.Image.Redact
import Gogol.DLP.Projects.InspectTemplates.Create
import Gogol.DLP.Projects.InspectTemplates.Delete
import Gogol.DLP.Projects.InspectTemplates.Get
import Gogol.DLP.Projects.InspectTemplates.List
import Gogol.DLP.Projects.InspectTemplates.Patch
import Gogol.DLP.Projects.JobTriggers.Activate
import Gogol.DLP.Projects.JobTriggers.Create
import Gogol.DLP.Projects.JobTriggers.Delete
import Gogol.DLP.Projects.JobTriggers.Get
import Gogol.DLP.Projects.JobTriggers.List
import Gogol.DLP.Projects.JobTriggers.Patch
import Gogol.DLP.Projects.Locations.Content.Deidentify
import Gogol.DLP.Projects.Locations.Content.Inspect
import Gogol.DLP.Projects.Locations.Content.Reidentify
import Gogol.DLP.Projects.Locations.DeidentifyTemplates.Create
import Gogol.DLP.Projects.Locations.DeidentifyTemplates.Delete
import Gogol.DLP.Projects.Locations.DeidentifyTemplates.Get
import Gogol.DLP.Projects.Locations.DeidentifyTemplates.List
import Gogol.DLP.Projects.Locations.DeidentifyTemplates.Patch
import Gogol.DLP.Projects.Locations.DlpJobs.Cancel
import Gogol.DLP.Projects.Locations.DlpJobs.Create
import Gogol.DLP.Projects.Locations.DlpJobs.Delete
import Gogol.DLP.Projects.Locations.DlpJobs.Finish
import Gogol.DLP.Projects.Locations.DlpJobs.Get
import Gogol.DLP.Projects.Locations.DlpJobs.HybridInspect
import Gogol.DLP.Projects.Locations.DlpJobs.List
import Gogol.DLP.Projects.Locations.Image.Redact
import Gogol.DLP.Projects.Locations.InspectTemplates.Create
import Gogol.DLP.Projects.Locations.InspectTemplates.Delete
import Gogol.DLP.Projects.Locations.InspectTemplates.Get
import Gogol.DLP.Projects.Locations.InspectTemplates.List
import Gogol.DLP.Projects.Locations.InspectTemplates.Patch
import Gogol.DLP.Projects.Locations.JobTriggers.Activate
import Gogol.DLP.Projects.Locations.JobTriggers.Create
import Gogol.DLP.Projects.Locations.JobTriggers.Delete
import Gogol.DLP.Projects.Locations.JobTriggers.Get
import Gogol.DLP.Projects.Locations.JobTriggers.HybridInspect
import Gogol.DLP.Projects.Locations.JobTriggers.List
import Gogol.DLP.Projects.Locations.JobTriggers.Patch
import Gogol.DLP.Projects.Locations.StoredInfoTypes.Create
import Gogol.DLP.Projects.Locations.StoredInfoTypes.Delete
import Gogol.DLP.Projects.Locations.StoredInfoTypes.Get
import Gogol.DLP.Projects.Locations.StoredInfoTypes.List
import Gogol.DLP.Projects.Locations.StoredInfoTypes.Patch
import Gogol.DLP.Projects.StoredInfoTypes.Create
import Gogol.DLP.Projects.StoredInfoTypes.Delete
import Gogol.DLP.Projects.StoredInfoTypes.Get
import Gogol.DLP.Projects.StoredInfoTypes.List
import Gogol.DLP.Projects.StoredInfoTypes.Patch
import Gogol.DLP.Types
