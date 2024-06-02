// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenseaModel _$OpenseaModelFromJson(Map<String, dynamic> json) => OpenseaModel(
      next: json['next'] as String,
      previous: json['previous'],
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenseaModelToJson(OpenseaModel instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'orders': instance.orders,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      closingDate: DateTime.parse(json['closing_date'] as String),
      listingTime: (json['listing_time'] as num).toInt(),
      expirationTime: (json['expiration_time'] as num).toInt(),
      orderHash: json['order_hash'] as String,
      protocolData:
          ProtocolData.fromJson(json['protocol_data'] as Map<String, dynamic>),
      protocolAddress:
          $enumDecode(_$ProtocolAddressEnumMap, json['protocol_address']),
      currentPrice: json['current_price'] as String,
      maker: Maker.fromJson(json['maker'] as Map<String, dynamic>),
      taker: json['taker'] == null
          ? null
          : Maker.fromJson(json['taker'] as Map<String, dynamic>),
      makerAssetBundle: MakerAssetBundle.fromJson(
          json['maker_asset_bundle'] as Map<String, dynamic>),
      takerAssetBundle: TakerAssetBundle.fromJson(
          json['taker_asset_bundle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'closing_date': instance.closingDate.toIso8601String(),
      'listing_time': instance.listingTime,
      'expiration_time': instance.expirationTime,
      'order_hash': instance.orderHash,
      'protocol_data': instance.protocolData,
      'protocol_address': _$ProtocolAddressEnumMap[instance.protocolAddress]!,
      'current_price': instance.currentPrice,
      'maker': instance.maker,
      'taker': instance.taker,
      'maker_asset_bundle': instance.makerAssetBundle,
      'taker_asset_bundle': instance.takerAssetBundle,
    };

const _$ProtocolAddressEnumMap = {
  ProtocolAddress.THE_0_X0000000000000068_F116_A894984_E2_DB1123_EB395:
      '0x0000000000000068f116a894984e2db1123eb395',
  ProtocolAddress.THE_0_X00000000000000_ADC04_C56_BF30_AC9_D3_C0_AAF14_DC:
      '0x00000000000000adc04c56bf30ac9d3c0aaf14dc',
};

Maker _$MakerFromJson(Map<String, dynamic> json) => Maker(
      user: (json['user'] as num?)?.toInt(),
      profileImgUrl: json['profile_img_url'] as String,
      address: json['address'] as String,
      config: json['config'] as String,
    );

Map<String, dynamic> _$MakerToJson(Maker instance) => <String, dynamic>{
      'user': instance.user,
      'profile_img_url': instance.profileImgUrl,
      'address': instance.address,
      'config': instance.config,
    };

MakerAssetBundle _$MakerAssetBundleFromJson(Map<String, dynamic> json) =>
    MakerAssetBundle(
      assets: (json['assets'] as List<dynamic>)
          .map((e) => MakerAssetBundleAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      maker: json['maker'],
      slug: json['slug'],
      name: json['name'],
      description: json['description'],
      externalLink: json['external_link'],
      assetContract: json['asset_contract'],
      permalink: json['permalink'],
      seaportSellOrders: json['seaport_sell_orders'],
    );

Map<String, dynamic> _$MakerAssetBundleToJson(MakerAssetBundle instance) =>
    <String, dynamic>{
      'assets': instance.assets,
      'maker': instance.maker,
      'slug': instance.slug,
      'name': instance.name,
      'description': instance.description,
      'external_link': instance.externalLink,
      'asset_contract': instance.assetContract,
      'permalink': instance.permalink,
      'seaport_sell_orders': instance.seaportSellOrders,
    };

MakerAssetBundleAsset _$MakerAssetBundleAssetFromJson(
        Map<String, dynamic> json) =>
    MakerAssetBundleAsset(
      id: (json['id'] as num).toInt(),
      tokenId: json['token_id'] as String,
      numSales: (json['num_sales'] as num).toInt(),
      backgroundColor: json['background_color'],
      imageUrl: json['image_url'] as String,
      imagePreviewUrl: json['image_preview_url'] as String,
      imageThumbnailUrl: json['image_thumbnail_url'] as String,
      imageOriginalUrl: json['image_original_url'] as String?,
      animationUrl: json['animation_url'] as String?,
      animationOriginalUrl: json['animation_original_url'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      externalLink: json['external_link'] as String?,
      assetContract: AssetContract.fromJson(
          json['asset_contract'] as Map<String, dynamic>),
      permalink: json['permalink'] as String,
      collection:
          PurpleCollection.fromJson(json['collection'] as Map<String, dynamic>),
      decimals: (json['decimals'] as num?)?.toInt(),
      tokenMetadata: json['token_metadata'] as String?,
      isNsfw: json['is_nsfw'] as bool,
      owner: json['owner'],
    );

Map<String, dynamic> _$MakerAssetBundleAssetToJson(
        MakerAssetBundleAsset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token_id': instance.tokenId,
      'num_sales': instance.numSales,
      'background_color': instance.backgroundColor,
      'image_url': instance.imageUrl,
      'image_preview_url': instance.imagePreviewUrl,
      'image_thumbnail_url': instance.imageThumbnailUrl,
      'image_original_url': instance.imageOriginalUrl,
      'animation_url': instance.animationUrl,
      'animation_original_url': instance.animationOriginalUrl,
      'name': instance.name,
      'description': instance.description,
      'external_link': instance.externalLink,
      'asset_contract': instance.assetContract,
      'permalink': instance.permalink,
      'collection': instance.collection,
      'decimals': instance.decimals,
      'token_metadata': instance.tokenMetadata,
      'is_nsfw': instance.isNsfw,
      'owner': instance.owner,
    };

AssetContract _$AssetContractFromJson(Map<String, dynamic> json) =>
    AssetContract(
      address: json['address'] as String,
      assetContractType:
          $enumDecode(_$AssetContractTypeEnumMap, json['asset_contract_type']),
      chainIdentifier:
          $enumDecode(_$ChainIdentifierEnumMap, json['chain_identifier']),
      createdDate: DateTime.parse(json['created_date'] as String),
      name: json['name'] as String,
      nftVersion: json['nft_version'],
      openseaVersion: json['opensea_version'] as String?,
      owner: (json['owner'] as num?)?.toInt(),
      schemaName: $enumDecode(_$SchemaNameEnumMap, json['schema_name']),
      symbol: json['symbol'] as String,
      totalSupply: json['total_supply'] as String?,
      description: json['description'] as String,
      externalLink: json['external_link'] as String?,
      imageUrl: json['image_url'] as String?,
      defaultToFiat: json['default_to_fiat'] as bool,
      devBuyerFeeBasisPoints:
          (json['dev_buyer_fee_basis_points'] as num).toInt(),
      devSellerFeeBasisPoints:
          (json['dev_seller_fee_basis_points'] as num).toInt(),
      onlyProxiedTransfers: json['only_proxied_transfers'] as bool,
      openseaBuyerFeeBasisPoints:
          (json['opensea_buyer_fee_basis_points'] as num).toInt(),
      openseaSellerFeeBasisPoints:
          (json['opensea_seller_fee_basis_points'] as num).toInt(),
      buyerFeeBasisPoints: (json['buyer_fee_basis_points'] as num).toInt(),
      sellerFeeBasisPoints: (json['seller_fee_basis_points'] as num).toInt(),
      payoutAddress: json['payout_address'] as String?,
    );

Map<String, dynamic> _$AssetContractToJson(AssetContract instance) =>
    <String, dynamic>{
      'address': instance.address,
      'asset_contract_type':
          _$AssetContractTypeEnumMap[instance.assetContractType]!,
      'chain_identifier': _$ChainIdentifierEnumMap[instance.chainIdentifier]!,
      'created_date': instance.createdDate.toIso8601String(),
      'name': instance.name,
      'nft_version': instance.nftVersion,
      'opensea_version': instance.openseaVersion,
      'owner': instance.owner,
      'schema_name': _$SchemaNameEnumMap[instance.schemaName]!,
      'symbol': instance.symbol,
      'total_supply': instance.totalSupply,
      'description': instance.description,
      'external_link': instance.externalLink,
      'image_url': instance.imageUrl,
      'default_to_fiat': instance.defaultToFiat,
      'dev_buyer_fee_basis_points': instance.devBuyerFeeBasisPoints,
      'dev_seller_fee_basis_points': instance.devSellerFeeBasisPoints,
      'only_proxied_transfers': instance.onlyProxiedTransfers,
      'opensea_buyer_fee_basis_points': instance.openseaBuyerFeeBasisPoints,
      'opensea_seller_fee_basis_points': instance.openseaSellerFeeBasisPoints,
      'buyer_fee_basis_points': instance.buyerFeeBasisPoints,
      'seller_fee_basis_points': instance.sellerFeeBasisPoints,
      'payout_address': instance.payoutAddress,
    };

const _$AssetContractTypeEnumMap = {
  AssetContractType.FUNGIBLE: 'fungible',
  AssetContractType.NON_FUNGIBLE: 'non-fungible',
  AssetContractType.SEMI_FUNGIBLE: 'semi-fungible',
};

const _$ChainIdentifierEnumMap = {
  ChainIdentifier.ETHEREUM: 'ethereum',
};

const _$SchemaNameEnumMap = {
  SchemaName.ERC1155: 'ERC1155',
  SchemaName.ERC20: 'ERC20',
  SchemaName.ERC721: 'ERC721',
};

PurpleCollection _$PurpleCollectionFromJson(Map<String, dynamic> json) =>
    PurpleCollection(
      bannerImageUrl: json['banner_image_url'] as String?,
      chatUrl: json['chat_url'],
      createdDate: DateTime.parse(json['created_date'] as String),
      defaultToFiat: json['default_to_fiat'] as bool,
      description: json['description'] as String,
      devBuyerFeeBasisPoints: json['dev_buyer_fee_basis_points'] as String,
      devSellerFeeBasisPoints: json['dev_seller_fee_basis_points'] as String,
      discordUrl: json['discord_url'] as String?,
      displayData:
          DisplayData.fromJson(json['display_data'] as Map<String, dynamic>),
      externalUrl: json['external_url'] as String?,
      featured: json['featured'] as bool,
      featuredImageUrl: json['featured_image_url'] as String?,
      hidden: json['hidden'] as bool,
      safelistRequestStatus: $enumDecode(
          _$SafelistRequestStatusEnumMap, json['safelist_request_status']),
      imageUrl: json['image_url'] as String?,
      isSubjectToWhitelist: json['is_subject_to_whitelist'] as bool,
      largeImageUrl: json['large_image_url'] as String?,
      mediumUsername: json['medium_username'] as String?,
      name: json['name'] as String,
      onlyProxiedTransfers: json['only_proxied_transfers'] as bool,
      openseaBuyerFeeBasisPoints:
          json['opensea_buyer_fee_basis_points'] as String,
      openseaSellerFeeBasisPoints:
          (json['opensea_seller_fee_basis_points'] as num).toInt(),
      payoutAddress: json['payout_address'] as String?,
      requireEmail: json['require_email'] as bool,
      shortDescription: json['short_description'],
      slug: json['slug'] as String,
      telegramUrl: json['telegram_url'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      instagramUsername: json['instagram_username'] as String?,
      wikiUrl: json['wiki_url'],
      isNsfw: json['is_nsfw'] as bool,
      fees: PurpleFees.fromJson(json['fees'] as Map<String, dynamic>),
      isRarityEnabled: json['is_rarity_enabled'] as bool,
      isCreatorFeesEnforced: json['is_creator_fees_enforced'] as bool,
    );

Map<String, dynamic> _$PurpleCollectionToJson(PurpleCollection instance) =>
    <String, dynamic>{
      'banner_image_url': instance.bannerImageUrl,
      'chat_url': instance.chatUrl,
      'created_date': instance.createdDate.toIso8601String(),
      'default_to_fiat': instance.defaultToFiat,
      'description': instance.description,
      'dev_buyer_fee_basis_points': instance.devBuyerFeeBasisPoints,
      'dev_seller_fee_basis_points': instance.devSellerFeeBasisPoints,
      'discord_url': instance.discordUrl,
      'display_data': instance.displayData,
      'external_url': instance.externalUrl,
      'featured': instance.featured,
      'featured_image_url': instance.featuredImageUrl,
      'hidden': instance.hidden,
      'safelist_request_status':
          _$SafelistRequestStatusEnumMap[instance.safelistRequestStatus]!,
      'image_url': instance.imageUrl,
      'is_subject_to_whitelist': instance.isSubjectToWhitelist,
      'large_image_url': instance.largeImageUrl,
      'medium_username': instance.mediumUsername,
      'name': instance.name,
      'only_proxied_transfers': instance.onlyProxiedTransfers,
      'opensea_buyer_fee_basis_points': instance.openseaBuyerFeeBasisPoints,
      'opensea_seller_fee_basis_points': instance.openseaSellerFeeBasisPoints,
      'payout_address': instance.payoutAddress,
      'require_email': instance.requireEmail,
      'short_description': instance.shortDescription,
      'slug': instance.slug,
      'telegram_url': instance.telegramUrl,
      'twitter_username': instance.twitterUsername,
      'instagram_username': instance.instagramUsername,
      'wiki_url': instance.wikiUrl,
      'is_nsfw': instance.isNsfw,
      'fees': instance.fees,
      'is_rarity_enabled': instance.isRarityEnabled,
      'is_creator_fees_enforced': instance.isCreatorFeesEnforced,
    };

const _$SafelistRequestStatusEnumMap = {
  SafelistRequestStatus.APPROVED: 'approved',
  SafelistRequestStatus.DISABLED_TOP_TRENDING: 'disabled_top_trending',
  SafelistRequestStatus.REQUESTED: 'requested',
  SafelistRequestStatus.VERIFIED: 'verified',
};

DisplayData _$DisplayDataFromJson(Map<String, dynamic> json) => DisplayData(
      cardDisplayStyle:
          $enumDecode(_$CardDisplayStyleEnumMap, json['card_display_style']),
      images: json['images'] as List<dynamic>?,
    );

Map<String, dynamic> _$DisplayDataToJson(DisplayData instance) =>
    <String, dynamic>{
      'card_display_style':
          _$CardDisplayStyleEnumMap[instance.cardDisplayStyle]!,
      'images': instance.images,
    };

const _$CardDisplayStyleEnumMap = {
  CardDisplayStyle.CONTAIN: 'contain',
  CardDisplayStyle.COVER: 'cover',
  CardDisplayStyle.PADDED: 'padded',
};

PurpleFees _$PurpleFeesFromJson(Map<String, dynamic> json) => PurpleFees(
      sellerFees: Map<String, int>.from(json['seller_fees'] as Map),
      openseaFees:
          OpenseaFees.fromJson(json['opensea_fees'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PurpleFeesToJson(PurpleFees instance) =>
    <String, dynamic>{
      'seller_fees': instance.sellerFees,
      'opensea_fees': instance.openseaFees,
    };

OpenseaFees _$OpenseaFeesFromJson(Map<String, dynamic> json) => OpenseaFees(
      the0X0000A26B00C1F0Df003000390027140000Faa719:
          (json['0x0000a26b00c1f0df003000390027140000faa719'] as num).toInt(),
    );

Map<String, dynamic> _$OpenseaFeesToJson(OpenseaFees instance) =>
    <String, dynamic>{
      '0x0000a26b00c1f0df003000390027140000faa719':
          instance.the0X0000A26B00C1F0Df003000390027140000Faa719,
    };

MakerFee _$MakerFeeFromJson(Map<String, dynamic> json) => MakerFee(
      account: Maker.fromJson(json['account'] as Map<String, dynamic>),
      basisPoints: json['basis_points'] as String,
    );

Map<String, dynamic> _$MakerFeeToJson(MakerFee instance) => <String, dynamic>{
      'account': instance.account,
      'basis_points': instance.basisPoints,
    };

ProtocolData _$ProtocolDataFromJson(Map<String, dynamic> json) => ProtocolData(
      parameters:
          Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      signature: json['signature'],
    );

Map<String, dynamic> _$ProtocolDataToJson(ProtocolData instance) =>
    <String, dynamic>{
      'parameters': instance.parameters,
      'signature': instance.signature,
    };

Parameters _$ParametersFromJson(Map<String, dynamic> json) => Parameters(
      offerer: json['offerer'] as String,
      offer: (json['offer'] as List<dynamic>)
          .map((e) => Consideration.fromJson(e as Map<String, dynamic>))
          .toList(),
      consideration: (json['consideration'] as List<dynamic>)
          .map((e) => Consideration.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      orderType: (json['orderType'] as num).toInt(),
      zone: $enumDecode(_$ZoneEnumMap, json['zone']),
      zoneHash: json['zoneHash'] as String,
      salt: json['salt'] as String,
      conduitKey: json['conduitKey'] as String,
      totalOriginalConsiderationItems:
          (json['totalOriginalConsiderationItems'] as num).toInt(),
      counter: json['counter'],
    );

Map<String, dynamic> _$ParametersToJson(Parameters instance) =>
    <String, dynamic>{
      'offerer': instance.offerer,
      'offer': instance.offer,
      'consideration': instance.consideration,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'orderType': instance.orderType,
      'zone': _$ZoneEnumMap[instance.zone]!,
      'zoneHash': instance.zoneHash,
      'salt': instance.salt,
      'conduitKey': instance.conduitKey,
      'totalOriginalConsiderationItems':
          instance.totalOriginalConsiderationItems,
      'counter': instance.counter,
    };

const _$ZoneEnumMap = {
  Zone.THE_0_X0000000000000000000000000000000000000000:
      '0x0000000000000000000000000000000000000000',
  Zone.THE_0_X000056_F7000000_EC_E9003_CA63978907_A00_FFD100:
      '0x000056F7000000EcE9003ca63978907a00FFD100',
  Zone.THE_0_X004_C00500000_A_D104_D7_D_BD00_E3_AE0_A5_C00560_C00:
      '0x004C00500000aD104D7DBd00e3ae0A5C00560C00',
};

Consideration _$ConsiderationFromJson(Map<String, dynamic> json) =>
    Consideration(
      itemType: (json['itemType'] as num).toInt(),
      token: json['token'] as String,
      identifierOrCriteria: json['identifierOrCriteria'] as String,
      startAmount: json['startAmount'] as String,
      endAmount: json['endAmount'] as String,
      recipient: json['recipient'] as String?,
    );

Map<String, dynamic> _$ConsiderationToJson(Consideration instance) =>
    <String, dynamic>{
      'itemType': instance.itemType,
      'token': instance.token,
      'identifierOrCriteria': instance.identifierOrCriteria,
      'startAmount': instance.startAmount,
      'endAmount': instance.endAmount,
      'recipient': instance.recipient,
    };

TakerAssetBundle _$TakerAssetBundleFromJson(Map<String, dynamic> json) =>
    TakerAssetBundle(
      assets: (json['assets'] as List<dynamic>)
          .map((e) => TakerAssetBundleAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      maker: json['maker'],
      slug: json['slug'],
      name: json['name'],
      description: json['description'],
      externalLink: json['external_link'],
      assetContract: json['asset_contract'],
      permalink: json['permalink'],
      seaportSellOrders: json['seaport_sell_orders'],
    );

Map<String, dynamic> _$TakerAssetBundleToJson(TakerAssetBundle instance) =>
    <String, dynamic>{
      'assets': instance.assets,
      'maker': instance.maker,
      'slug': instance.slug,
      'name': instance.name,
      'description': instance.description,
      'external_link': instance.externalLink,
      'asset_contract': instance.assetContract,
      'permalink': instance.permalink,
      'seaport_sell_orders': instance.seaportSellOrders,
    };

TakerAssetBundleAsset _$TakerAssetBundleAssetFromJson(
        Map<String, dynamic> json) =>
    TakerAssetBundleAsset(
      id: (json['id'] as num).toInt(),
      tokenId: json['token_id'] as String,
      numSales: (json['num_sales'] as num).toInt(),
      backgroundColor: json['background_color'],
      imageUrl: json['image_url'] as String,
      imagePreviewUrl: json['image_preview_url'] as String,
      imageThumbnailUrl: json['image_thumbnail_url'] as String,
      imageOriginalUrl: json['image_original_url'] as String,
      animationUrl: json['animation_url'],
      animationOriginalUrl: json['animation_original_url'],
      name: $enumDecode(_$AssetNameEnumMap, json['name']),
      description: json['description'],
      externalLink: json['external_link'],
      assetContract: AssetContract.fromJson(
          json['asset_contract'] as Map<String, dynamic>),
      permalink: json['permalink'] as String,
      collection:
          FluffyCollection.fromJson(json['collection'] as Map<String, dynamic>),
      decimals: (json['decimals'] as num).toInt(),
      tokenMetadata: json['token_metadata'],
      isNsfw: json['is_nsfw'] as bool,
      owner: json['owner'],
    );

Map<String, dynamic> _$TakerAssetBundleAssetToJson(
        TakerAssetBundleAsset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token_id': instance.tokenId,
      'num_sales': instance.numSales,
      'background_color': instance.backgroundColor,
      'image_url': instance.imageUrl,
      'image_preview_url': instance.imagePreviewUrl,
      'image_thumbnail_url': instance.imageThumbnailUrl,
      'image_original_url': instance.imageOriginalUrl,
      'animation_url': instance.animationUrl,
      'animation_original_url': instance.animationOriginalUrl,
      'name': _$AssetNameEnumMap[instance.name]!,
      'description': instance.description,
      'external_link': instance.externalLink,
      'asset_contract': instance.assetContract,
      'permalink': instance.permalink,
      'collection': instance.collection,
      'decimals': instance.decimals,
      'token_metadata': instance.tokenMetadata,
      'is_nsfw': instance.isNsfw,
      'owner': instance.owner,
    };

const _$AssetNameEnumMap = {
  AssetName.ETHER: 'Ether',
};

FluffyCollection _$FluffyCollectionFromJson(Map<String, dynamic> json) =>
    FluffyCollection(
      bannerImageUrl: json['banner_image_url'],
      chatUrl: json['chat_url'],
      createdDate: DateTime.parse(json['created_date'] as String),
      defaultToFiat: json['default_to_fiat'] as bool,
      description: json['description'] as String,
      devBuyerFeeBasisPoints: json['dev_buyer_fee_basis_points'] as String,
      devSellerFeeBasisPoints: json['dev_seller_fee_basis_points'] as String,
      discordUrl: json['discord_url'],
      displayData:
          DisplayData.fromJson(json['display_data'] as Map<String, dynamic>),
      externalUrl: json['external_url'],
      featured: json['featured'] as bool,
      featuredImageUrl: json['featured_image_url'],
      hidden: json['hidden'] as bool,
      safelistRequestStatus: $enumDecode(
          _$SafelistRequestStatusEnumMap, json['safelist_request_status']),
      imageUrl: json['image_url'],
      isSubjectToWhitelist: json['is_subject_to_whitelist'] as bool,
      largeImageUrl: json['large_image_url'],
      mediumUsername: json['medium_username'],
      name: $enumDecode(_$CollectionNameEnumMap, json['name']),
      onlyProxiedTransfers: json['only_proxied_transfers'] as bool,
      openseaBuyerFeeBasisPoints:
          json['opensea_buyer_fee_basis_points'] as String,
      openseaSellerFeeBasisPoints:
          (json['opensea_seller_fee_basis_points'] as num).toInt(),
      payoutAddress: json['payout_address'],
      requireEmail: json['require_email'] as bool,
      shortDescription: json['short_description'],
      slug: $enumDecode(_$SlugEnumMap, json['slug']),
      telegramUrl: json['telegram_url'],
      twitterUsername: json['twitter_username'],
      instagramUsername: json['instagram_username'],
      wikiUrl: json['wiki_url'],
      isNsfw: json['is_nsfw'] as bool,
      fees: FluffyFees.fromJson(json['fees'] as Map<String, dynamic>),
      isRarityEnabled: json['is_rarity_enabled'] as bool,
      isCreatorFeesEnforced: json['is_creator_fees_enforced'] as bool,
    );

Map<String, dynamic> _$FluffyCollectionToJson(FluffyCollection instance) =>
    <String, dynamic>{
      'banner_image_url': instance.bannerImageUrl,
      'chat_url': instance.chatUrl,
      'created_date': instance.createdDate.toIso8601String(),
      'default_to_fiat': instance.defaultToFiat,
      'description': instance.description,
      'dev_buyer_fee_basis_points': instance.devBuyerFeeBasisPoints,
      'dev_seller_fee_basis_points': instance.devSellerFeeBasisPoints,
      'discord_url': instance.discordUrl,
      'display_data': instance.displayData,
      'external_url': instance.externalUrl,
      'featured': instance.featured,
      'featured_image_url': instance.featuredImageUrl,
      'hidden': instance.hidden,
      'safelist_request_status':
          _$SafelistRequestStatusEnumMap[instance.safelistRequestStatus]!,
      'image_url': instance.imageUrl,
      'is_subject_to_whitelist': instance.isSubjectToWhitelist,
      'large_image_url': instance.largeImageUrl,
      'medium_username': instance.mediumUsername,
      'name': _$CollectionNameEnumMap[instance.name]!,
      'only_proxied_transfers': instance.onlyProxiedTransfers,
      'opensea_buyer_fee_basis_points': instance.openseaBuyerFeeBasisPoints,
      'opensea_seller_fee_basis_points': instance.openseaSellerFeeBasisPoints,
      'payout_address': instance.payoutAddress,
      'require_email': instance.requireEmail,
      'short_description': instance.shortDescription,
      'slug': _$SlugEnumMap[instance.slug]!,
      'telegram_url': instance.telegramUrl,
      'twitter_username': instance.twitterUsername,
      'instagram_username': instance.instagramUsername,
      'wiki_url': instance.wikiUrl,
      'is_nsfw': instance.isNsfw,
      'fees': instance.fees,
      'is_rarity_enabled': instance.isRarityEnabled,
      'is_creator_fees_enforced': instance.isCreatorFeesEnforced,
    };

const _$CollectionNameEnumMap = {
  CollectionName.OPEN_SEA_PAYMENT_ASSETS: 'OpenSea PaymentAssets',
};

const _$SlugEnumMap = {
  Slug.OPENSEA_PAYMENTASSETS: 'opensea-paymentassets',
};

FluffyFees _$FluffyFeesFromJson(Map<String, dynamic> json) => FluffyFees(
      sellerFees:
          SellerFees.fromJson(json['seller_fees'] as Map<String, dynamic>),
      openseaFees:
          OpenseaFees.fromJson(json['opensea_fees'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FluffyFeesToJson(FluffyFees instance) =>
    <String, dynamic>{
      'seller_fees': instance.sellerFees,
      'opensea_fees': instance.openseaFees,
    };

SellerFees _$SellerFeesFromJson(Map<String, dynamic> json) => SellerFees();

Map<String, dynamic> _$SellerFeesToJson(SellerFees instance) =>
    <String, dynamic>{};
