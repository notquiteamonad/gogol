{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types
    (
    -- * Service Configuration
      shoppingContentService

    -- * OAuth Scopes
    , contentScope

    -- * OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- * AccountTax
    , AccountTax
    , accountTax
    , atRules
    , atKind
    , atAccountId

    -- * OrderinvoicesCreateRefundInvoiceResponse
    , OrderinvoicesCreateRefundInvoiceResponse
    , orderinvoicesCreateRefundInvoiceResponse
    , ocrirKind
    , ocrirExecutionStatus

    -- * OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- * OrderReportTransaction
    , OrderReportTransaction
    , orderReportTransaction
    , ortMerchantId
    , ortDisbursementId
    , ortDisbursementCreationDate
    , ortProductAmountWithRemittedTax
    , ortTransactionDate
    , ortDisbursementDate
    , ortMerchantOrderId
    , ortProductAmount
    , ortOrderId
    , ortDisbursementAmount

    -- * OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- * ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- * OrderMerchantProvidedAnnotation
    , OrderMerchantProvidedAnnotation
    , orderMerchantProvidedAnnotation
    , ompaValue
    , ompaKey

    -- * OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- * TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocExplicitMarketingPreference
    , tocMarketingRightsInfo

    -- * DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- * OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- * AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- * InventoryCustomBatchRequest
    , InventoryCustomBatchRequest
    , inventoryCustomBatchRequest
    , icbrEntries

    -- * PosSaleResponse
    , PosSaleResponse
    , posSaleResponse
    , psrStoreCode
    , psrKind
    , psrItemId
    , psrQuantity
    , psrTargetCountry
    , psrGtin
    , psrPrice
    , psrContentLanguage
    , psrTimestamp
    , psrSaleId

    -- * Amount
    , Amount
    , amount
    , aPretax
    , aTax

    -- * AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- * OrderReportDisbursement
    , OrderReportDisbursement
    , orderReportDisbursement
    , ordMerchantId
    , ordDisbursementId
    , ordDisbursementCreationDate
    , ordDisbursementDate
    , ordDisbursementAmount

    -- * UnitInvoice
    , UnitInvoice
    , unitInvoice
    , uiUnitPriceTaxes
    , uiPromotions
    , uiAdditionalCharges
    , uiUnitPricePretax

    -- * PosSale
    , PosSale
    , posSale
    , psStoreCode
    , psKind
    , psItemId
    , psQuantity
    , psTargetCountry
    , psGtin
    , psPrice
    , psContentLanguage
    , psTimestamp
    , psSaleId

    -- * AccountStatusItemLevelIssue
    , AccountStatusItemLevelIssue
    , accountStatusItemLevelIssue
    , asiliNumItems
    , asiliResolution
    , asiliDocumentation
    , asiliCode
    , asiliServability
    , asiliAttributeName
    , asiliDescription
    , asiliDetail

    -- * OrderLegacyPromotionBenefit
    , OrderLegacyPromotionBenefit
    , orderLegacyPromotionBenefit
    , olpbTaxImpact
    , olpbDiscount
    , olpbOfferIds
    , olpbSubType
    , olpbType

    -- * LiaSettingsRequestGmbAccessResponse
    , LiaSettingsRequestGmbAccessResponse
    , liaSettingsRequestGmbAccessResponse
    , lsrgarKind

    -- * ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsApprovalPending
    , psdsIntention
    , psdsApprovalStatus

    -- * AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- * PostalCodeGroup
    , PostalCodeGroup
    , postalCodeGroup
    , pcgCountry
    , pcgPostalCodeRanges
    , pcgName

    -- * ProductDestination
    , ProductDestination
    , productDestination
    , pdIntention
    , pdDestinationName

    -- * DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- * OrdersCancelTestOrderByCustomerResponse
    , OrdersCancelTestOrderByCustomerResponse
    , ordersCancelTestOrderByCustomerResponse
    , octobcrKind

    -- * LiaOnDisplayToOrderSettings
    , LiaOnDisplayToOrderSettings
    , liaOnDisplayToOrderSettings
    , lodtosStatus
    , lodtosShippingCostPolicyURL

    -- * AccountAddress
    , AccountAddress
    , accountAddress
    , aaStreetAddress
    , aaCountry
    , aaPostalCode
    , aaLocality
    , aaRegion

    -- * OrdersCustomBatchRequestEntry
    , OrdersCustomBatchRequestEntry
    , ordersCustomBatchRequestEntry
    , ocbreMerchantId
    , ocbreCancelLineItem
    , ocbreInStoreRefundLineItem
    , ocbreRefund
    , ocbreUpdateShipment
    , ocbreReturnLineItem
    , ocbreMerchantOrderId
    , ocbreSetLineItemMetadata
    , ocbreReturnRefundLineItem
    , ocbreMethod
    , ocbreUpdateLineItemShippingDetails
    , ocbreShipLineItems
    , ocbreOperationId
    , ocbreOrderId
    , ocbreRejectReturnLineItem
    , ocbreCancel
    , ocbreBatchId

    -- * OrdersRefundRequest
    , OrdersRefundRequest
    , ordersRefundRequest
    , orrAmount
    , orrReason
    , orrOperationId
    , orrAmountPretax
    , orrAmountTax
    , orrReasonText

    -- * InvoiceSummaryAdditionalChargeSummary
    , InvoiceSummaryAdditionalChargeSummary
    , invoiceSummaryAdditionalChargeSummary
    , isacsTotalAmount
    , isacsType

    -- * RefundReason
    , RefundReason
    , refundReason
    , rrReasonCode
    , rrDescription

    -- * OrdersCustomBatchRequestEntryCancelLineItem
    , OrdersCustomBatchRequestEntryCancelLineItem
    , ordersCustomBatchRequestEntryCancelLineItem
    , ocbrecliAmount
    , ocbrecliQuantity
    , ocbrecliLineItemId
    , ocbrecliReason
    , ocbrecliAmountPretax
    , ocbrecliProductId
    , ocbrecliAmountTax
    , ocbrecliReasonText

    -- * OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- * Datafeed
    , Datafeed
    , datafeed
    , dKind
    , dFormat
    , dAttributeLanguage
    , dTargetCountry
    , dFetchSchedule
    , dName
    , dIntendedDestinations
    , dTargets
    , dId
    , dContentLanguage
    , dContentType
    , dFileName

    -- * OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- * AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aLinkStatus
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- * GmbAccounts
    , GmbAccounts
    , gmbAccounts
    , gaGmbAccounts
    , gaAccountId

    -- * CustomerReturnReason
    , CustomerReturnReason
    , customerReturnReason
    , crrReasonCode
    , crrDescription

    -- * AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- * PosCustomBatchRequest
    , PosCustomBatchRequest
    , posCustomBatchRequest
    , pEntries

    -- * OrderinvoicesCreateChargeInvoiceRequest
    , OrderinvoicesCreateChargeInvoiceRequest
    , orderinvoicesCreateChargeInvoiceRequest
    , occirShipmentGroupId
    , occirLineItemInvoices
    , occirInvoiceId
    , occirInvoiceSummary
    , occirOperationId

    -- * TestOrderPaymentMethod
    , TestOrderPaymentMethod
    , testOrderPaymentMethod
    , topmExpirationMonth
    , topmExpirationYear
    , topmLastFourDigits
    , topmType
    , topmPredefinedBillingAddress

    -- * OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliAnnotations
    , oliQuantityOrdered
    , oliReturnInfo
    , oliQuantityReadyForPickup
    , oliQuantityDelivered
    , oliShippingDetails
    , oliQuantityPending
    , oliCancellations
    , oliQuantityCanceled
    , oliId
    , oliTax
    , oliPrice
    , oliQuantityShipped
    , oliQuantityReturned
    , oliProduct
    , oliReturns

    -- * MinimumOrderValueTable
    , MinimumOrderValueTable
    , minimumOrderValueTable
    , movtStoreCodeSetWithMovs

    -- * Service
    , Service
    , service
    , sDeliveryCountry
    , sMinimumOrderValueTable
    , sShipmentType
    , sRateGroups
    , sDeliveryTime
    , sActive
    , sName
    , sCurrency
    , sEligibility
    , sMinimumOrderValue
    , sPickupService

    -- * ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , proEntries
    , proKind

    -- * ProductUnitPricingMeasure
    , ProductUnitPricingMeasure
    , productUnitPricingMeasure
    , pupmValue
    , pupmUnit

    -- * OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrTrackingId
    , ousrShipmentId
    , ousrDeliveryDate
    , ousrOperationId

    -- * OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId
    , oslisProductId

    -- * OrdersListStatuses
    , OrdersListStatuses (..)

    -- * OrderreportsListTransactionsResponse
    , OrderreportsListTransactionsResponse
    , orderreportsListTransactionsResponse
    , oltrNextPageToken
    , oltrTransactions
    , oltrKind

    -- * LiaSettingsCustomBatchResponse
    , LiaSettingsCustomBatchResponse
    , liaSettingsCustomBatchResponse
    , lscbrEntries
    , lscbrKind

    -- * LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- * LiaSettingsSetPosDataProviderResponse
    , LiaSettingsSetPosDataProviderResponse
    , liaSettingsSetPosDataProviderResponse
    , lsspdprKind

    -- * OrdersCustomBatchRequestEntryShipLineItems
    , OrdersCustomBatchRequestEntryShipLineItems
    , ordersCustomBatchRequestEntryShipLineItems
    , ocbresliCarrier
    , ocbresliShipmentGroupId
    , ocbresliTrackingId
    , ocbresliShipmentId
    , ocbresliShipmentInfos
    , ocbresliLineItems

    -- * AccountStatus
    , AccountStatus
    , accountStatus
    , asDataQualityIssues
    , asAccountLevelIssues
    , asKind
    , asAccountId
    , asProducts
    , asWebsiteClaimed

    -- * OrdersReturnLineItemRequest
    , OrdersReturnLineItemRequest
    , ordersReturnLineItemRequest
    , orlirQuantity
    , orlirLineItemId
    , orlirReason
    , orlirOperationId
    , orlirProductId
    , orlirReasonText

    -- * ShippingSettingsCustomBatchRequestEntry
    , ShippingSettingsCustomBatchRequestEntry
    , shippingSettingsCustomBatchRequestEntry
    , sscbreMerchantId
    , sscbreAccountId
    , sscbreMethod
    , sscbreShippingSettings
    , sscbreBatchId

    -- * PosInventoryResponse
    , PosInventoryResponse
    , posInventoryResponse
    , pirStoreCode
    , pirKind
    , pirItemId
    , pirQuantity
    , pirTargetCountry
    , pirGtin
    , pirPrice
    , pirContentLanguage
    , pirTimestamp

    -- * OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
    , OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
    , ordersCustomBatchRequestEntryUpdateLineItemShippingDetails
    , ocbreulisdShipByDate
    , ocbreulisdLineItemId
    , ocbreulisdDeliverByDate
    , ocbreulisdProductId

    -- * AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , acbrEntries

    -- * AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- * LiaSettingsRequestInventoryVerificationResponse
    , LiaSettingsRequestInventoryVerificationResponse
    , liaSettingsRequestInventoryVerificationResponse
    , lsrivrKind

    -- * OrderinvoicesCreateChargeInvoiceResponse
    , OrderinvoicesCreateChargeInvoiceResponse
    , orderinvoicesCreateChargeInvoiceResponse
    , occirKind
    , occirExecutionStatus

    -- * DatafeedsFetchNowResponse
    , DatafeedsFetchNowResponse
    , datafeedsFetchNowResponse
    , dfnrKind

    -- * OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- * AccountsCustomBatchRequestEntry
    , AccountsCustomBatchRequestEntry
    , accountsCustomBatchRequestEntry
    , accMerchantId
    , accForce
    , accAccount
    , accAccountId
    , accMethod
    , accLabelIds
    , accOverwrite
    , accBatchId
    , accLinkRequest

    -- * Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , ocbrecriroReason
    , ocbrecriroDescription

    -- * OrderPickupDetails
    , OrderPickupDetails
    , orderPickupDetails
    , opdCollectors
    , opdAddress
    , opdLocationId

    -- * LiaSettingsListResponse
    , LiaSettingsListResponse
    , liaSettingsListResponse
    , lslrNextPageToken
    , lslrKind
    , lslrResources

    -- * Error'
    , Error'
    , error'
    , eDomain
    , eReason
    , eMessage

    -- * ProductstatusesListResponse
    , ProductstatusesListResponse
    , productstatusesListResponse
    , plrNextPageToken
    , plrKind
    , plrResources

    -- * PosCustomBatchResponse
    , PosCustomBatchResponse
    , posCustomBatchResponse
    , posEntries
    , posKind

    -- * OrdersRefundResponse
    , OrdersRefundResponse
    , ordersRefundResponse
    , orrKind
    , orrExecutionStatus

    -- * OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorCountry
    , octorTestOrder

    -- * AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auPaymentsManager
    , auOrderManager
    , auEmailAddress
    , auPaymentsAnalyst

    -- * AccountStatusExampleItem
    , AccountStatusExampleItem
    , accountStatusExampleItem
    , aseiSubmittedValue
    , aseiLink
    , aseiItemId
    , aseiTitle
    , aseiValueOnLandingPage

    -- * AccountCustomerService
    , AccountCustomerService
    , accountCustomerService
    , acsEmail
    , acsURL
    , acsPhoneNumber

    -- * OrderreturnsListOrderBy
    , OrderreturnsListOrderBy (..)

    -- * GmbAccountsGmbAccount
    , GmbAccountsGmbAccount
    , gmbAccountsGmbAccount
    , gagaEmail
    , gagaListingCount
    , gagaName
    , gagaType

    -- * OrdersInStoreRefundLineItemResponse
    , OrdersInStoreRefundLineItemResponse
    , ordersInStoreRefundLineItemResponse
    , oisrlirKind
    , oisrlirExecutionStatus

    -- * DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- * OrderCustomerMarketingRightsInfo
    , OrderCustomerMarketingRightsInfo
    , orderCustomerMarketingRightsInfo
    , ocmriExplicitMarketingPreference
    , ocmriMarketingEmailAddress
    , ocmriLastUpdatedTimestamp

    -- * MerchantOrderReturnItem
    , MerchantOrderReturnItem
    , merchantOrderReturnItem
    , moriReturnShipmentIds
    , moriMerchantReturnReason
    , moriState
    , moriCustomerReturnReason
    , moriItemId
    , moriProduct

    -- * AccountStatusAccountLevelIssue
    , AccountStatusAccountLevelIssue
    , accountStatusAccountLevelIssue
    , asaliDestination
    , asaliCountry
    , asaliSeverity
    , asaliDocumentation
    , asaliId
    , asaliTitle
    , asaliDetail

    -- * Value
    , Value
    , value
    , vPricePercentage
    , vCarrierRateName
    , vFlatRate
    , vSubtableName
    , vNoShipping

    -- * Installment
    , Installment
    , installment
    , iAmount
    , iMonths

    -- * PickupServicesPickupService
    , PickupServicesPickupService
    , pickupServicesPickupService
    , pspsCountry
    , pspsServiceName
    , pspsCarrierName

    -- * DatafeedFetchSchedule
    , DatafeedFetchSchedule
    , datafeedFetchSchedule
    , dfsFetchURL
    , dfsUsername
    , dfsMinuteOfHour
    , dfsPassword
    , dfsDayOfMonth
    , dfsHour
    , dfsWeekday
    , dfsTimeZone
    , dfsPaused

    -- * PosStore
    , PosStore
    , posStore
    , pssStoreCode
    , pssKind
    , pssStoreAddress

    -- * OrdersCustomBatchRequest
    , OrdersCustomBatchRequest
    , ordersCustomBatchRequest
    , ocbrEntries

    -- * LiaSettingsSetInventoryVerificationContactResponse
    , LiaSettingsSetInventoryVerificationContactResponse
    , liaSettingsSetInventoryVerificationContactResponse
    , lssivcrKind

    -- * ShippingSettingsGetSupportedCarriersResponse
    , ShippingSettingsGetSupportedCarriersResponse
    , shippingSettingsGetSupportedCarriersResponse
    , ssgscrKind
    , ssgscrCarriers

    -- * OrdersCustomBatchRequestEntrySetLineItemMetadata
    , OrdersCustomBatchRequestEntrySetLineItemMetadata
    , ordersCustomBatchRequestEntrySetLineItemMetadata
    , ocbreslimAnnotations
    , ocbreslimLineItemId
    , ocbreslimProductId

    -- * PosDataProvidersPosDataProvider
    , PosDataProvidersPosDataProvider
    , posDataProvidersPosDataProvider
    , pdppdpProviderId
    , pdppdpFullName
    , pdppdpDisplayName

    -- * HolidaysHoliday
    , HolidaysHoliday
    , holidaysHoliday
    , hhDeliveryGuaranteeHour
    , hhDate
    , hhDeliveryGuaranteeDate
    , hhCountryCode
    , hhId
    , hhType

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- * OrderPickupDetailsCollector
    , OrderPickupDetailsCollector
    , orderPickupDetailsCollector
    , opdcName
    , opdcPhoneNumber

    -- * ProductStatusDataQualityIssue
    , ProductStatusDataQualityIssue
    , productStatusDataQualityIssue
    , psdqiDestination
    , psdqiLocation
    , psdqiFetchStatus
    , psdqiSeverity
    , psdqiValueProvided
    , psdqiId
    , psdqiValueOnLandingPage
    , psdqiTimestamp
    , psdqiDetail

    -- * AccountBusinessInformation
    , AccountBusinessInformation
    , accountBusinessInformation
    , abiAddress
    , abiPhoneNumber
    , abiCustomerService

    -- * CarriersCarrier
    , CarriersCarrier
    , carriersCarrier
    , ccCountry
    , ccName
    , ccServices

    -- * CarrierRate
    , CarrierRate
    , carrierRate
    , crOriginPostalCode
    , crFlatAdjustment
    , crCarrierService
    , crName
    , crPercentageAdjustment
    , crCarrierName

    -- * ShippingSettingsListResponse
    , ShippingSettingsListResponse
    , shippingSettingsListResponse
    , sslrNextPageToken
    , sslrKind
    , sslrResources

    -- * OrdersCreateTestReturnResponse
    , OrdersCreateTestReturnResponse
    , ordersCreateTestReturnResponse
    , octrrKind
    , octrrReturnId

    -- * OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirCarrier
    , oslirShipmentGroupId
    , oslirTrackingId
    , oslirShipmentId
    , oslirShipmentInfos
    , oslirLineItems
    , oslirOperationId

    -- * OrderreturnsListResponse
    , OrderreturnsListResponse
    , orderreturnsListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- * AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- * OrdersUpdateLineItemShippingDetailsRequest
    , OrdersUpdateLineItemShippingDetailsRequest
    , ordersUpdateLineItemShippingDetailsRequest
    , oulisdrShipByDate
    , oulisdrLineItemId
    , oulisdrDeliverByDate
    , oulisdrOperationId
    , oulisdrProductId

    -- * MerchantOrderReturn
    , MerchantOrderReturn
    , merchantOrderReturn
    , morReturnShipments
    , morMerchantOrderId
    , morReturnItems
    , morCreationDate
    , morOrderId
    , morOrderReturnId

    -- * ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- * PosCustomBatchRequestEntry
    , PosCustomBatchRequestEntry
    , posCustomBatchRequestEntry
    , pcbreMerchantId
    , pcbreStoreCode
    , pcbreTargetMerchantId
    , pcbreMethod
    , pcbreStore
    , pcbreInventory
    , pcbreSale
    , pcbreBatchId

    -- * OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osScheduledDeliveryDetails
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- * AccountsLinkResponse
    , AccountsLinkResponse
    , accountsLinkResponse
    , alrlKind

    -- * OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- * TransitTable
    , TransitTable
    , transitTable
    , ttTransitTimeLabels
    , ttPostalCodeGroupNames
    , ttRows

    -- * Account
    , Account
    , account
    , aaUsers
    , aaYouTubeChannelLinks
    , aaKind
    , aaSellerId
    , aaName
    , aaBusinessInformation
    , aaReviewsURL
    , aaId
    , aaWebsiteURL
    , aaAdwordsLinks
    , aaGoogleMyBusinessLink
    , aaAdultContent

    -- * InventorySetRequest
    , InventorySetRequest
    , inventorySetRequest
    , isrCustomLabel1
    , isrLoyaltyPoints
    , isrCustomLabel0
    , isrQuantity
    , isrInstallment
    , isrSalePrice
    , isrCustomLabel3
    , isrAvailability
    , isrPickup
    , isrSalePriceEffectiveDate
    , isrCustomLabel2
    , isrSellOnGoogleQuantity
    , isrPrice
    , isrInstoreProductLocation
    , isrCustomLabel4

    -- * ShipmentTrackingInfo
    , ShipmentTrackingInfo
    , shipmentTrackingInfo
    , stiCarrier
    , stiTrackingNumber

    -- * OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirAmount
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirAmountPretax
    , oclirProductId
    , oclirAmountTax
    , oclirReasonText

    -- * ProductShippingWeight
    , ProductShippingWeight
    , productShippingWeight
    , pswValue
    , pswUnit

    -- * AccountstatusesCustomBatchRequestEntry
    , AccountstatusesCustomBatchRequestEntry
    , accountstatusesCustomBatchRequestEntry
    , acbrecMerchantId
    , acbrecAccountId
    , acbrecDestinations
    , acbrecMethod
    , acbrecBatchId

    -- * DeliveryTime
    , DeliveryTime
    , deliveryTime
    , dtTransitTimeTable
    , dtHandlingBusinessDayConfig
    , dtTransitBusinessDayConfig
    , dtHolidayCutoffs
    , dtMinTransitTimeInDays
    , dtCutoffTime
    , dtMinHandlingTimeInDays
    , dtMaxTransitTimeInDays
    , dtMaxHandlingTimeInDays

    -- * LiaCountrySettings
    , LiaCountrySettings
    , liaCountrySettings
    , lcsPosDataProvider
    , lcsCountry
    , lcsStorePickupActive
    , lcsInventory
    , lcsAbout
    , lcsHostedLocalStorefrontActive
    , lcsOnDisplayToOrder

    -- * OrdersReturnRefundLineItemResponse
    , OrdersReturnRefundLineItemResponse
    , ordersReturnRefundLineItemResponse
    , orrlirKind
    , orrlirExecutionStatus

    -- * OrdersCustomBatchRequestEntryRejectReturnLineItem
    , OrdersCustomBatchRequestEntryRejectReturnLineItem
    , ordersCustomBatchRequestEntryRejectReturnLineItem
    , ocbrerrliQuantity
    , ocbrerrliLineItemId
    , ocbrerrliReason
    , ocbrerrliProductId
    , ocbrerrliReasonText

    -- * ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pKind
    , pProductStatus
    , pErrors
    , pBatchId

    -- * ShippingSettingsGetSupportedHolidaysResponse
    , ShippingSettingsGetSupportedHolidaysResponse
    , shippingSettingsGetSupportedHolidaysResponse
    , ssgshrKind
    , ssgshrHolidays

    -- * LiaPosDataProvider
    , LiaPosDataProvider
    , liaPosDataProvider
    , lpdpPosExternalAccountId
    , lpdpPosDataProviderId

    -- * OrdersCustomBatchRequestEntryCancel
    , OrdersCustomBatchRequestEntryCancel
    , ordersCustomBatchRequestEntryCancel
    , ocbrecReason
    , ocbrecReasonText

    -- * DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- * LiaSettings
    , LiaSettings
    , liaSettings
    , lsCountrySettings
    , lsKind
    , lsAccountId

    -- * TransitTableTransitTimeRow
    , TransitTableTransitTimeRow
    , transitTableTransitTimeRow
    , ttttrValues

    -- * ProductShipping
    , ProductShipping
    , productShipping
    , pService
    , pLocationGroupName
    , pCountry
    , pPostalCode
    , pPrice
    , pRegion
    , pLocationId

    -- * ShippingSettingsCustomBatchRequest
    , ShippingSettingsCustomBatchRequest
    , shippingSettingsCustomBatchRequest
    , sscbrEntries

    -- * LiaSettingsCustomBatchResponseEntry
    , LiaSettingsCustomBatchResponseEntry
    , liaSettingsCustomBatchResponseEntry
    , lscbreGmbAccounts
    , lscbreKind
    , lscbreLiaSettings
    , lscbreErrors
    , lscbrePosDataProviders
    , lscbreBatchId

    -- * AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , aEntries

    -- * PosCustomBatchResponseEntry
    , PosCustomBatchResponseEntry
    , posCustomBatchResponseEntry
    , pcbrecKind
    , pcbrecStore
    , pcbrecInventory
    , pcbrecErrors
    , pcbrecSale
    , pcbrecBatchId

    -- * CustomGroup
    , CustomGroup
    , customGroup
    , cgName
    , cgAttributes

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , oReason
    , oDescription

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , oNextPageToken
    , oKind
    , oResources

    -- * OrdersUpdateLineItemShippingDetailsResponse
    , OrdersUpdateLineItemShippingDetailsResponse
    , ordersUpdateLineItemShippingDetailsResponse
    , oulisdrKind
    , oulisdrExecutionStatus

    -- * Headers
    , Headers
    , headers
    , hNumberOfItems
    , hPostalCodeGroupNames
    , hPrices
    , hWeights
    , hLocations

    -- * UnitInvoiceAdditionalCharge
    , UnitInvoiceAdditionalCharge
    , unitInvoiceAdditionalCharge
    , uiacAdditionalChargePromotions
    , uiacAdditionalChargeAmount
    , uiacType

    -- * OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- * UnitInvoiceTaxLine
    , UnitInvoiceTaxLine
    , unitInvoiceTaxLine
    , uitlTaxName
    , uitlTaxType
    , uitlTaxAmount

    -- * OrdersCreateTestReturnRequest
    , OrdersCreateTestReturnRequest
    , ordersCreateTestReturnRequest
    , octrrItems

    -- * ShippingSettings
    , ShippingSettings
    , shippingSettings
    , ssPostalCodeGroups
    , ssAccountId
    , ssServices

    -- * ProductAmount
    , ProductAmount
    , productAmount
    , paRemittedTaxAmount
    , paTaxAmount
    , paPriceAmount

    -- * PostalCodeRange
    , PostalCodeRange
    , postalCodeRange
    , pcrPostalCodeRangeBegin
    , pcrPostalCodeRangeEnd

    -- * OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- * ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , pcbrcEntries

    -- * AccountYouTubeChannelLink
    , AccountYouTubeChannelLink
    , accountYouTubeChannelLink
    , aytclStatus
    , aytclChannelId

    -- * OrdersReturnLineItemResponse
    , OrdersReturnLineItemResponse
    , ordersReturnLineItemResponse
    , orlirKind
    , orlirExecutionStatus

    -- * LiaAboutPageSettings
    , LiaAboutPageSettings
    , liaAboutPageSettings
    , lapsStatus
    , lapsURL

    -- * LiaSettingsCustomBatchRequest
    , LiaSettingsCustomBatchRequest
    , liaSettingsCustomBatchRequest
    , lEntries

    -- * CustomAttribute
    , CustomAttribute
    , customAttribute
    , caValue
    , caName
    , caType
    , caUnit

    -- * PosInventoryRequest
    , PosInventoryRequest
    , posInventoryRequest
    , posStoreCode
    , posItemId
    , posQuantity
    , posTargetCountry
    , posGtin
    , posPrice
    , posContentLanguage
    , posTimestamp

    -- * AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acccEntries
    , acccKind

    -- * ShippingSettingsCustomBatchResponseEntry
    , ShippingSettingsCustomBatchResponseEntry
    , shippingSettingsCustomBatchResponseEntry
    , sKind
    , sShippingSettings
    , sErrors
    , sBatchId

    -- * ProductStatus
    , ProductStatus
    , productStatus
    , ppDataQualityIssues
    , ppKind
    , ppLink
    , ppDestinationStatuses
    , ppLastUpdateDate
    , ppCreationDate
    , ppTitle
    , ppProduct
    , ppGoogleExpirationDate
    , ppProductId
    , ppItemLevelIssues

    -- * AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- * OrdersSetLineItemMetadataResponse
    , OrdersSetLineItemMetadataResponse
    , ordersSetLineItemMetadataResponse
    , oslimrKind
    , oslimrExecutionStatus

    -- * AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , accEntries

    -- * ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , prorMerchantId
    , prorMethod
    , prorProduct
    , prorProductId
    , prorBatchId

    -- * AccountGoogleMyBusinessLink
    , AccountGoogleMyBusinessLink
    , accountGoogleMyBusinessLink
    , agmblGmbEmail
    , agmblStatus

    -- * DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , dMerchantId
    , dCountry
    , dMethod
    , dDatafeedId
    , dLanguage
    , dBatchId

    -- * Xgafv
    , Xgafv (..)

    -- * OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocExplicitMarketingPreference
    , ocInvoiceReceivingEmail
    , ocMarketingRightsInfo

    -- * InventoryCustomBatchResponseEntry
    , InventoryCustomBatchResponseEntry
    , inventoryCustomBatchResponseEntry
    , icbreKind
    , icbreErrors
    , icbreBatchId

    -- * LocationIdSet
    , LocationIdSet
    , locationIdSet
    , lisLocationIds

    -- * Row
    , Row
    , row
    , rCells

    -- * Inventory
    , Inventory
    , inventory
    , iCustomLabel1
    , iLoyaltyPoints
    , iCustomLabel0
    , iKind
    , iQuantity
    , iInstallment
    , iSalePrice
    , iCustomLabel3
    , iAvailability
    , iPickup
    , iSalePriceEffectiveDate
    , iCustomLabel2
    , iSellOnGoogleQuantity
    , iPrice
    , iInstoreProductLocation
    , iCustomLabel4

    -- * OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- * OrdersRejectReturnLineItemRequest
    , OrdersRejectReturnLineItemRequest
    , ordersRejectReturnLineItemRequest
    , orrlirQuantity
    , orrlirLineItemId
    , orrlirReason
    , orrlirOperationId
    , orrlirProductId
    , orrlirReasonText

    -- * OrdersCustomBatchRequestEntryInStoreRefundLineItem
    , OrdersCustomBatchRequestEntryInStoreRefundLineItem
    , ordersCustomBatchRequestEntryInStoreRefundLineItem
    , ocbreisrliQuantity
    , ocbreisrliLineItemId
    , ocbreisrliReason
    , ocbreisrliAmountPretax
    , ocbreisrliProductId
    , ocbreisrliAmountTax
    , ocbreisrliReasonText

    -- * OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- * ReturnShipment
    , ReturnShipment
    , returnShipment
    , rsState
    , rsShipmentTrackingInfos
    , rsReturnMethodType
    , rsShipmentId
    , rsCreationDate
    , rsDeliveryDate
    , rsShippingDate

    -- * OrdersCancelTestOrderByCustomerRequest
    , OrdersCancelTestOrderByCustomerRequest
    , ordersCancelTestOrderByCustomerRequest
    , octobcrReason

    -- * TestOrderCustomerMarketingRightsInfo
    , TestOrderCustomerMarketingRightsInfo
    , testOrderCustomerMarketingRightsInfo
    , tocmriExplicitMarketingPreference
    , tocmriLastUpdatedTimestamp

    -- * ProductStatusItemLevelIssue
    , ProductStatusItemLevelIssue
    , productStatusItemLevelIssue
    , psiliDestination
    , psiliResolution
    , psiliDocumentation
    , psiliCode
    , psiliServability
    , psiliAttributeName
    , psiliDescription
    , psiliDetail

    -- * OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- * OrdersCustomBatchResponseEntry
    , OrdersCustomBatchResponseEntry
    , ordersCustomBatchResponseEntry
    , ordKind
    , ordExecutionStatus
    , ordErrors
    , ordOrder
    , ordBatchId

    -- * RateGroup
    , RateGroup
    , rateGroup
    , rgCarrierRates
    , rgName
    , rgApplicableShippingLabels
    , rgMainTable
    , rgSingleValue
    , rgSubtables

    -- * AccountStatusProducts
    , AccountStatusProducts
    , accountStatusProducts
    , aspDestination
    , aspCountry
    , aspChannel
    , aspStatistics
    , aspItemLevelIssues

    -- * Price
    , Price
    , price
    , pValue
    , pCurrency

    -- * OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate
    , olisdType

    -- * PickupCarrierService
    , PickupCarrierService
    , pickupCarrierService
    , pcsServiceName
    , pcsCarrierName

    -- * DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- * InvoiceSummary
    , InvoiceSummary
    , invoiceSummary
    , isMerchantBalance
    , isCustomerBalance
    , isGoogleBalance
    , isProductTotal
    , isAdditionalChargeSummaries
    , isPromotionSummaries

    -- * PosListResponse
    , PosListResponse
    , posListResponse
    , plrlKind
    , plrlResources

    -- * OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- * OrderLineItemProductFee
    , OrderLineItemProductFee
    , orderLineItemProductFee
    , olipfAmount
    , olipfName

    -- * BusinessDayConfig
    , BusinessDayConfig
    , businessDayConfig
    , bdcBusinessDays

    -- * OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- * OrdersSetLineItemMetadataRequest
    , OrdersSetLineItemMetadataRequest
    , ordersSetLineItemMetadataRequest
    , oslimrAnnotations
    , oslimrLineItemId
    , oslimrOperationId
    , oslimrProductId

    -- * OrdersRejectReturnLineItemResponse
    , OrdersRejectReturnLineItemResponse
    , ordersRejectReturnLineItemResponse
    , orrlirrKind
    , orrlirrExecutionStatus

    -- * TestOrder
    , TestOrder
    , testOrder
    , toKind
    , toPredefinedPickupDetails
    , toLineItems
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toShippingCostTax
    , toCustomer
    , toEnableOrderinvoices
    , toPaymentMethod
    , toPromotions
    , toNotificationMode
    , toShippingCost

    -- * CutoffTime
    , CutoffTime
    , cutoffTime
    , ctHour
    , ctTimezone
    , ctMinute

    -- * DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , datErrors
    , datDatafeedStatus
    , datBatchId

    -- * OrderRefund
    , OrderRefund
    , orderRefund
    , ordAmount
    , ordActor
    , ordReason
    , ordCreationDate
    , ordReasonText

    -- * TestOrderLineItemProduct
    , TestOrderLineItemProduct
    , testOrderLineItemProduct
    , tolipImageLink
    , tolipFees
    , tolipChannel
    , tolipBrand
    , tolipTargetCountry
    , tolipGtin
    , tolipItemGroupId
    , tolipOfferId
    , tolipPrice
    , tolipVariantAttributes
    , tolipTitle
    , tolipContentLanguage
    , tolipMpn
    , tolipCondition

    -- * OrdersCustomBatchRequestEntryReturnRefundLineItem
    , OrdersCustomBatchRequestEntryReturnRefundLineItem
    , ordersCustomBatchRequestEntryReturnRefundLineItem
    , ocbrerrlicQuantity
    , ocbrerrlicLineItemId
    , ocbrerrlicReason
    , ocbrerrlicAmountPretax
    , ocbrerrlicProductId
    , ocbrerrlicAmountTax
    , ocbrerrlicReasonText

    -- * AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- * InventoryCustomBatchRequestEntry
    , InventoryCustomBatchRequestEntry
    , inventoryCustomBatchRequestEntry
    , iMerchantId
    , iStoreCode
    , iInventory
    , iProductId
    , iBatchId

    -- * OrderLegacyPromotion
    , OrderLegacyPromotion
    , orderLegacyPromotion
    , olpEffectiveDates
    , olpGenericRedemptionCode
    , olpRedemptionChannel
    , olpBenefits
    , olpLongTitle
    , olpId
    , olpProductApplicability

    -- * AccountsClaimWebsiteResponse
    , AccountsClaimWebsiteResponse
    , accountsClaimWebsiteResponse
    , acwrKind

    -- * OrderAddress
    , OrderAddress
    , orderAddress
    , oaRecipientName
    , oaStreetAddress
    , oaCountry
    , oaPostalCode
    , oaLocality
    , oaIsPostOfficeBox
    , oaFullAddress
    , oaRegion

    -- * OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ocbrectrriQuantity
    , ocbrectrriLineItemId

    -- * ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- * LiaSettingsGetAccessibleGmbAccountsResponse
    , LiaSettingsGetAccessibleGmbAccountsResponse
    , liaSettingsGetAccessibleGmbAccountsResponse
    , lsgagarGmbAccounts
    , lsgagarKind
    , lsgagarAccountId

    -- * DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- * TransitTableTransitTimeRowTransitTimeValue
    , TransitTableTransitTimeRowTransitTimeValue
    , transitTableTransitTimeRowTransitTimeValue
    , ttttrttvMinTransitTimeInDays
    , ttttrttvMaxTransitTimeInDays

    -- * AccountStatusStatistics
    , AccountStatusStatistics
    , accountStatusStatistics
    , assPending
    , assExpiring
    , assActive
    , assDisApproved

    -- * ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , pcbre1Kind
    , pcbre1Product
    , pcbre1Errors
    , pcbre1BatchId

    -- * OrderPaymentMethod
    , OrderPaymentMethod
    , orderPaymentMethod
    , opmExpirationMonth
    , opmExpirationYear
    , opmPhoneNumber
    , opmBillingAddress
    , opmLastFourDigits
    , opmType

    -- * Product
    , Product
    , product
    , prorDisplayAdsLink
    , prorCustomLabel1
    , prorShippingWidth
    , prorCustomGroups
    , prorImageLink
    , prorDisplayAdsValue
    , prorCanonicalLink
    , prorLoyaltyPoints
    , prorAdditionalImageLinks
    , prorValidatedDestinations
    , prorColor
    , prorCustomLabel0
    , prorKind
    , prorMinHandlingTime
    , prorMultipack
    , prorPattern
    , prorLink
    , prorSizeSystem
    , prorUnitPricingBaseMeasure
    , prorTaxes
    , prorMaterial
    , prorInstallment
    , prorChannel
    , prorProductType
    , prorIdentifierExists
    , prorOnlineOnly
    , prorBrand
    , prorUnitPricingMeasure
    , prorSalePrice
    , prorCostOfGoodsSold
    , prorShippingLength
    , prorCustomLabel3
    , prorMaxHandlingTime
    , prorWarnings
    , prorAdditionalProductTypes
    , prorAvailability
    , prorMinEnergyEfficiencyClass
    , prorTargetCountry
    , prorShippingLabel
    , prorCustomAttributes
    , prorGtin
    , prorAgeGroup
    , prorDisplayAdsTitle
    , prorMaxEnergyEfficiencyClass
    , prorGender
    , prorDestinations
    , prorExpirationDate
    , prorItemGroupId
    , prorAdwordsGrouping
    , prorSalePriceEffectiveDate
    , prorCustomLabel2
    , prorGoogleProductCategory
    , prorShipping
    , prorAdwordsRedirect
    , prorShippingWeight
    , prorSellOnGoogleQuantity
    , prorShippingHeight
    , prorAvailabilityDate
    , prorSource
    , prorOfferId
    , prorId
    , prorAdwordsLabels
    , prorPrice
    , prorPromotionIds
    , prorSizeType
    , prorMobileLink
    , prorTitle
    , prorAdult
    , prorContentLanguage
    , prorAspects
    , prorEnergyEfficiencyClass
    , prorDisplayAdsSimilarIds
    , prorMpn
    , prorCondition
    , prorSizes
    , prorIsBundle
    , prorDescription
    , prorCustomLabel4
    , prorDisplayAdsId

    -- * LiaSettingsCustomBatchRequestEntry
    , LiaSettingsCustomBatchRequestEntry
    , liaSettingsCustomBatchRequestEntry
    , lGmbEmail
    , lContactEmail
    , lMerchantId
    , lCountry
    , lLiaSettings
    , lAccountId
    , lMethod
    , lContactName
    , lPosExternalAccountId
    , lPosDataProviderId
    , lBatchId

    -- * Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- * LiaInventorySettings
    , LiaInventorySettings
    , liaInventorySettings
    , lisInventoryVerificationContactName
    , lisStatus
    , lisInventoryVerificationContactEmail
    , lisInventoryVerificationContactStatus

    -- * AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , aaAccountStatus
    , aaErrors
    , aaBatchId

    -- * InventorySetResponse
    , InventorySetResponse
    , inventorySetResponse
    , isrKind

    -- * OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- * HolidayCutoff
    , HolidayCutoff
    , holidayCutoff
    , hcDeadlineHour
    , hcDeadlineTimezone
    , hcVisibleFromDate
    , hcHolidayId
    , hcDeadlineDate

    -- * TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- * MinimumOrderValueTableStoreCodeSetWithMov
    , MinimumOrderValueTableStoreCodeSetWithMov
    , minimumOrderValueTableStoreCodeSetWithMov
    , movtscswmValue
    , movtscswmStoreCodes

    -- * ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , p1MerchantId
    , p1Destinations
    , p1Method
    , p1IncludeAttributes
    , p1ProductId
    , p1BatchId

    -- * ShippingSettingsCustomBatchResponse
    , ShippingSettingsCustomBatchResponse
    , shippingSettingsCustomBatchResponse
    , shiEntries
    , shiKind

    -- * OrdersReturnRefundLineItemRequest
    , OrdersReturnRefundLineItemRequest
    , ordersReturnRefundLineItemRequest
    , orrlirrQuantity
    , orrlirrLineItemId
    , orrlirrReason
    , orrlirrOperationId
    , orrlirrAmountPretax
    , orrlirrProductId
    , orrlirrAmountTax
    , orrlirrReasonText

    -- * ShipmentInvoiceLineItemInvoice
    , ShipmentInvoiceLineItemInvoice
    , shipmentInvoiceLineItemInvoice
    , siliiUnitInvoice
    , siliiShipmentUnitIds
    , siliiLineItemId
    , siliiProductId

    -- * OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ocbreslisiCarrier
    , ocbreslisiTrackingId
    , ocbreslisiShipmentId

    -- * ProductAspect
    , ProductAspect
    , productAspect
    , paIntention
    , paAspectName
    , paDestinationName

    -- * AccountsLinkRequest
    , AccountsLinkRequest
    , accountsLinkRequest
    , alrAction
    , alrLinkedAccountId
    , alrLinkType

    -- * Promotion
    , Promotion
    , promotion
    , pPromotionAmount
    , pPromotionId

    -- * DatafeedTarget
    , DatafeedTarget
    , datafeedTarget
    , dtIncludedDestinations
    , dtExcludedDestinations
    , dtCountry
    , dtLanguage

    -- * OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- * OrderreportsListDisbursementsResponse
    , OrderreportsListDisbursementsResponse
    , orderreportsListDisbursementsResponse
    , oldrNextPageToken
    , oldrKind
    , oldrDisbursements

    -- * InventoryPickup
    , InventoryPickup
    , inventoryPickup
    , ipPickupSla
    , ipPickupMethod

    -- * DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- * OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- * PosSaleRequest
    , PosSaleRequest
    , posSaleRequest
    , psrsStoreCode
    , psrsItemId
    , psrsQuantity
    , psrsTargetCountry
    , psrsGtin
    , psrsPrice
    , psrsContentLanguage
    , psrsTimestamp
    , psrsSaleId

    -- * Table
    , Table
    , table
    , tRows
    , tName
    , tColumnHeaders
    , tRowHeaders

    -- * Order
    , Order
    , order
    , ord1Status
    , ord1MerchantId
    , ord1Refunds
    , ord1Kind
    , ord1LineItems
    , ord1Shipments
    , ord1NetAmount
    , ord1PlacedDate
    , ord1DeliveryDetails
    , ord1ShippingOption
    , ord1MerchantOrderId
    , ord1Acknowledged
    , ord1ShippingCostTax
    , ord1Customer
    , ord1Id
    , ord1PaymentMethod
    , ord1Promotions
    , ord1ChannelType
    , ord1PickupDetails
    , ord1TaxCollector
    , ord1PaymentStatus
    , ord1ShippingCost

    -- * InventoryCustomBatchResponse
    , InventoryCustomBatchResponse
    , inventoryCustomBatchResponse
    , invEntries
    , invKind

    -- * OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipFees
    , olipChannel
    , olipBrand
    , olipTargetCountry
    , olipGtin
    , olipItemGroupId
    , olipOfferId
    , olipId
    , olipPrice
    , olipVariantAttributes
    , olipTitle
    , olipContentLanguage
    , olipMpn
    , olipCondition

    -- * AccounttaxCustomBatchRequestEntry
    , AccounttaxCustomBatchRequestEntry
    , accounttaxCustomBatchRequestEntry
    , acccAccountTax
    , acccMerchantId
    , acccAccountId
    , acccMethod
    , acccBatchId

    -- * ShippingSettingsGetSupportedPickupServicesResponse
    , ShippingSettingsGetSupportedPickupServicesResponse
    , shippingSettingsGetSupportedPickupServicesResponse
    , ssgspsrKind
    , ssgspsrPickupServices

    -- * DatafeedStatusError
    , DatafeedStatusError
    , datafeedStatusError
    , dseCount
    , dseCode
    , dseMessage
    , dseExamples

    -- * ProductsCustomBatchRequest
    , ProductsCustomBatchRequest
    , productsCustomBatchRequest
    , ppEntries

    -- * OrdersCustomBatchRequestEntryReturnLineItem
    , OrdersCustomBatchRequestEntryReturnLineItem
    , ordersCustomBatchRequestEntryReturnLineItem
    , ocbrerliQuantity
    , ocbrerliLineItemId
    , ocbrerliReason
    , ocbrerliProductId
    , ocbrerliReasonText

    -- * PosDataProviders
    , PosDataProviders
    , posDataProviders
    , pdpCountry
    , pdpPosDataProviders

    -- * PosInventory
    , PosInventory
    , posInventory
    , piStoreCode
    , piKind
    , piItemId
    , piQuantity
    , piTargetCountry
    , piGtin
    , piPrice
    , piContentLanguage
    , piTimestamp

    -- * OrdersCustomBatchRequestEntryUpdateShipment
    , OrdersCustomBatchRequestEntryUpdateShipment
    , ordersCustomBatchRequestEntryUpdateShipment
    , ocbreusCarrier
    , ocbreusStatus
    , ocbreusTrackingId
    , ocbreusShipmentId
    , ocbreusDeliveryDate

    -- * LiaSettingsListPosDataProvidersResponse
    , LiaSettingsListPosDataProvidersResponse
    , liaSettingsListPosDataProvidersResponse
    , lslpdprKind
    , lslpdprPosDataProviders

    -- * OrderinvoicesCreateRefundInvoiceRequest
    , OrderinvoicesCreateRefundInvoiceRequest
    , orderinvoicesCreateRefundInvoiceRequest
    , ocrirRefundOnlyOption
    , ocrirInvoiceId
    , ocrirShipmentInvoices
    , ocrirOperationId
    , ocrirReturnOption

    -- * DatafeedStatus
    , DatafeedStatus
    , datafeedStatus
    , dsItemsTotal
    , dsCountry
    , dsKind
    , dsWarnings
    , dsDatafeedId
    , dsProcessingStatus
    , dsLanguage
    , dsLastUploadDate
    , dsItemsValid
    , dsErrors

    -- * DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- * AccountStatusDataQualityIssue
    , AccountStatusDataQualityIssue
    , accountStatusDataQualityIssue
    , asdqiDestination
    , asdqiSubmittedValue
    , asdqiLocation
    , asdqiCountry
    , asdqiDisplayedValue
    , asdqiNumItems
    , asdqiSeverity
    , asdqiExampleItems
    , asdqiLastChecked
    , asdqiId
    , asdqiDetail

    -- * OrdersInStoreRefundLineItemRequest
    , OrdersInStoreRefundLineItemRequest
    , ordersInStoreRefundLineItemRequest
    , oisrlirQuantity
    , oisrlirLineItemId
    , oisrlirReason
    , oisrlirOperationId
    , oisrlirAmountPretax
    , oisrlirProductId
    , oisrlirAmountTax
    , oisrlirReasonText

    -- * AccountsCustomBatchRequestEntryLinkRequest
    , AccountsCustomBatchRequestEntryLinkRequest
    , accountsCustomBatchRequestEntryLinkRequest
    , acbrelrAction
    , acbrelrLinkedAccountId
    , acbrelrLinkType

    -- * ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- * DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- * OrdersCustomBatchRequestEntryRefund
    , OrdersCustomBatchRequestEntryRefund
    , ordersCustomBatchRequestEntryRefund
    , ocbrerAmount
    , ocbrerReason
    , ocbrerAmountPretax
    , ocbrerAmountTax
    , ocbrerReasonText

    -- * DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- * ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plr1NextPageToken
    , plr1Kind
    , plr1Resources

    -- * AccountAdwordsLink
    , AccountAdwordsLink
    , accountAdwordsLink
    , aalStatus
    , aalAdwordsId

    -- * ShipmentInvoice
    , ShipmentInvoice
    , shipmentInvoice
    , siShipmentGroupId
    , siLineItemInvoices
    , siInvoiceSummary

    -- * OrderShipmentScheduledDeliveryDetails
    , OrderShipmentScheduledDeliveryDetails
    , orderShipmentScheduledDeliveryDetails
    , ossddScheduledDate
    , ossddCarrierPhoneNumber

    -- * OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- * OrdersCustomBatchResponse
    , OrdersCustomBatchResponse
    , ordersCustomBatchResponse
    , ocbrcEntries
    , ocbrcKind
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types.Product
import Network.Google.ShoppingContent.Types.Sum

-- | Default request referring to version 'v2' of the Content API for Shopping. This contains the host and root path used as a starting point for constructing service requests.
shoppingContentService :: ServiceConfig
shoppingContentService
  = defaultService (ServiceId "content:v2")
      "shoppingcontent.googleapis.com"

-- | Manage your product listings and accounts for Google Shopping
contentScope :: Proxy '["https://www.googleapis.com/auth/content"]
contentScope = Proxy
