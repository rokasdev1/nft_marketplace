import 'package:json_annotation/json_annotation.dart';

part 'nft.g.dart';

@JsonSerializable()
class OpenseaModel {
  OpenseaModel({
    required this.next,
    required this.previous,
    required this.orders,
  });

  factory OpenseaModel.fromJson(Map<String, dynamic> json) =>
      _$OpenseaModelFromJson(json);
  @JsonKey(name: 'next')
  String next;
  @JsonKey(name: 'previous')
  dynamic previous;
  @JsonKey(name: 'orders')
  List<Order> orders;

  Map<String, dynamic> toJson() => _$OpenseaModelToJson(this);
}

@JsonSerializable()
class Order {
  Order({
    required this.closingDate,
    required this.listingTime,
    required this.expirationTime,
    required this.orderHash,
    required this.protocolData,
    required this.protocolAddress,
    required this.currentPrice,
    required this.maker,
    required this.taker,
    required this.makerAssetBundle,
    required this.takerAssetBundle,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  @JsonKey(name: 'closing_date')
  DateTime closingDate;
  @JsonKey(name: 'listing_time')
  int listingTime;
  @JsonKey(name: 'expiration_time')
  int expirationTime;
  @JsonKey(name: 'order_hash')
  String orderHash;
  @JsonKey(name: 'protocol_data')
  ProtocolData protocolData;
  @JsonKey(name: 'protocol_address')
  ProtocolAddress protocolAddress;
  @JsonKey(name: 'current_price')
  String currentPrice;
  @JsonKey(name: 'maker')
  Maker maker;
  @JsonKey(name: 'taker')
  Maker? taker;

  @JsonKey(name: 'maker_asset_bundle')
  MakerAssetBundle makerAssetBundle;
  @JsonKey(name: 'taker_asset_bundle')
  TakerAssetBundle takerAssetBundle;

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class Maker {
  Maker({
    required this.user,
    required this.profileImgUrl,
    required this.address,
    required this.config,
  });

  factory Maker.fromJson(Map<String, dynamic> json) => _$MakerFromJson(json);
  @JsonKey(name: 'user')
  int? user;
  @JsonKey(name: 'profile_img_url')
  String profileImgUrl;
  @JsonKey(name: 'address')
  String address;
  @JsonKey(name: 'config')
  String config;

  Map<String, dynamic> toJson() => _$MakerToJson(this);
}

@JsonSerializable()
class MakerAssetBundle {
  MakerAssetBundle({
    required this.assets,
    required this.maker,
    required this.slug,
    required this.name,
    required this.description,
    required this.externalLink,
    required this.assetContract,
    required this.permalink,
    required this.seaportSellOrders,
  });

  factory MakerAssetBundle.fromJson(Map<String, dynamic> json) =>
      _$MakerAssetBundleFromJson(json);
  @JsonKey(name: 'assets')
  List<MakerAssetBundleAsset> assets;
  @JsonKey(name: 'maker')
  dynamic maker;
  @JsonKey(name: 'slug')
  dynamic slug;
  @JsonKey(name: 'name')
  dynamic name;
  @JsonKey(name: 'description')
  dynamic description;
  @JsonKey(name: 'external_link')
  dynamic externalLink;
  @JsonKey(name: 'asset_contract')
  dynamic assetContract;
  @JsonKey(name: 'permalink')
  dynamic permalink;
  @JsonKey(name: 'seaport_sell_orders')
  dynamic seaportSellOrders;

  Map<String, dynamic> toJson() => _$MakerAssetBundleToJson(this);
}

@JsonSerializable()
class MakerAssetBundleAsset {
  MakerAssetBundleAsset({
    required this.id,
    required this.tokenId,
    required this.numSales,
    required this.backgroundColor,
    required this.imageUrl,
    required this.imagePreviewUrl,
    required this.imageThumbnailUrl,
    required this.imageOriginalUrl,
    required this.animationUrl,
    required this.animationOriginalUrl,
    required this.name,
    required this.description,
    required this.externalLink,
    required this.assetContract,
    required this.permalink,
    required this.collection,
    required this.decimals,
    required this.tokenMetadata,
    required this.isNsfw,
    required this.owner,
  });

  factory MakerAssetBundleAsset.fromJson(Map<String, dynamic> json) =>
      _$MakerAssetBundleAssetFromJson(json);
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'token_id')
  String tokenId;
  @JsonKey(name: 'num_sales')
  int numSales;
  @JsonKey(name: 'background_color')
  dynamic backgroundColor;
  @JsonKey(name: 'image_url')
  String imageUrl;
  @JsonKey(name: 'image_preview_url')
  String imagePreviewUrl;
  @JsonKey(name: 'image_thumbnail_url')
  String imageThumbnailUrl;
  @JsonKey(name: 'image_original_url')
  String? imageOriginalUrl;
  @JsonKey(name: 'animation_url')
  String? animationUrl;
  @JsonKey(name: 'animation_original_url')
  String? animationOriginalUrl;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'external_link')
  String? externalLink;
  @JsonKey(name: 'asset_contract')
  AssetContract assetContract;
  @JsonKey(name: 'permalink')
  String permalink;
  @JsonKey(name: 'collection')
  PurpleCollection collection;
  @JsonKey(name: 'decimals')
  int? decimals;
  @JsonKey(name: 'token_metadata')
  String? tokenMetadata;
  @JsonKey(name: 'is_nsfw')
  bool isNsfw;
  @JsonKey(name: 'owner')
  dynamic owner;

  Map<String, dynamic> toJson() => _$MakerAssetBundleAssetToJson(this);
}

@JsonSerializable()
class AssetContract {
  AssetContract({
    required this.address,
    required this.assetContractType,
    required this.chainIdentifier,
    required this.createdDate,
    required this.name,
    required this.nftVersion,
    required this.openseaVersion,
    required this.owner,
    required this.schemaName,
    required this.symbol,
    required this.totalSupply,
    required this.description,
    required this.externalLink,
    required this.imageUrl,
    required this.defaultToFiat,
    required this.devBuyerFeeBasisPoints,
    required this.devSellerFeeBasisPoints,
    required this.onlyProxiedTransfers,
    required this.openseaBuyerFeeBasisPoints,
    required this.openseaSellerFeeBasisPoints,
    required this.buyerFeeBasisPoints,
    required this.sellerFeeBasisPoints,
    required this.payoutAddress,
  });

  factory AssetContract.fromJson(Map<String, dynamic> json) =>
      _$AssetContractFromJson(json);
  @JsonKey(name: 'address')
  String address;
  @JsonKey(name: 'asset_contract_type')
  AssetContractType assetContractType;
  @JsonKey(name: 'chain_identifier')
  ChainIdentifier chainIdentifier;
  @JsonKey(name: 'created_date')
  DateTime createdDate;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'nft_version')
  dynamic nftVersion;
  @JsonKey(name: 'opensea_version')
  String? openseaVersion;
  @JsonKey(name: 'owner')
  int? owner;
  @JsonKey(name: 'schema_name')
  SchemaName schemaName;
  @JsonKey(name: 'symbol')
  String symbol;
  @JsonKey(name: 'total_supply')
  String? totalSupply;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'external_link')
  String? externalLink;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'default_to_fiat')
  bool defaultToFiat;
  @JsonKey(name: 'dev_buyer_fee_basis_points')
  int devBuyerFeeBasisPoints;
  @JsonKey(name: 'dev_seller_fee_basis_points')
  int devSellerFeeBasisPoints;
  @JsonKey(name: 'only_proxied_transfers')
  bool onlyProxiedTransfers;
  @JsonKey(name: 'opensea_buyer_fee_basis_points')
  int openseaBuyerFeeBasisPoints;
  @JsonKey(name: 'opensea_seller_fee_basis_points')
  int openseaSellerFeeBasisPoints;
  @JsonKey(name: 'buyer_fee_basis_points')
  int buyerFeeBasisPoints;
  @JsonKey(name: 'seller_fee_basis_points')
  int sellerFeeBasisPoints;
  @JsonKey(name: 'payout_address')
  String? payoutAddress;

  Map<String, dynamic> toJson() => _$AssetContractToJson(this);
}

enum AssetContractType {
  @JsonValue('fungible')
  FUNGIBLE,
  @JsonValue('non-fungible')
  NON_FUNGIBLE,
  @JsonValue('semi-fungible')
  SEMI_FUNGIBLE
}

enum ChainIdentifier {
  @JsonValue('ethereum')
  ETHEREUM
}

enum SchemaName {
  @JsonValue('ERC1155')
  ERC1155,
  @JsonValue('ERC20')
  ERC20,
  @JsonValue('ERC721')
  ERC721
}

@JsonSerializable()
class PurpleCollection {
  PurpleCollection({
    required this.bannerImageUrl,
    required this.chatUrl,
    required this.createdDate,
    required this.defaultToFiat,
    required this.description,
    required this.devBuyerFeeBasisPoints,
    required this.devSellerFeeBasisPoints,
    required this.discordUrl,
    required this.displayData,
    required this.externalUrl,
    required this.featured,
    required this.featuredImageUrl,
    required this.hidden,
    required this.safelistRequestStatus,
    required this.imageUrl,
    required this.isSubjectToWhitelist,
    required this.largeImageUrl,
    required this.mediumUsername,
    required this.name,
    required this.onlyProxiedTransfers,
    required this.openseaBuyerFeeBasisPoints,
    required this.openseaSellerFeeBasisPoints,
    required this.payoutAddress,
    required this.requireEmail,
    required this.shortDescription,
    required this.slug,
    required this.telegramUrl,
    required this.twitterUsername,
    required this.instagramUsername,
    required this.wikiUrl,
    required this.isNsfw,
    required this.fees,
    required this.isRarityEnabled,
    required this.isCreatorFeesEnforced,
  });

  factory PurpleCollection.fromJson(Map<String, dynamic> json) =>
      _$PurpleCollectionFromJson(json);
  @JsonKey(name: 'banner_image_url')
  String? bannerImageUrl;
  @JsonKey(name: 'chat_url')
  dynamic chatUrl;
  @JsonKey(name: 'created_date')
  DateTime createdDate;
  @JsonKey(name: 'default_to_fiat')
  bool defaultToFiat;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'dev_buyer_fee_basis_points')
  String devBuyerFeeBasisPoints;
  @JsonKey(name: 'dev_seller_fee_basis_points')
  String devSellerFeeBasisPoints;
  @JsonKey(name: 'discord_url')
  String? discordUrl;
  @JsonKey(name: 'display_data')
  DisplayData displayData;
  @JsonKey(name: 'external_url')
  String? externalUrl;
  @JsonKey(name: 'featured')
  bool featured;
  @JsonKey(name: 'featured_image_url')
  String? featuredImageUrl;
  @JsonKey(name: 'hidden')
  bool hidden;
  @JsonKey(name: 'safelist_request_status')
  SafelistRequestStatus safelistRequestStatus;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'is_subject_to_whitelist')
  bool isSubjectToWhitelist;
  @JsonKey(name: 'large_image_url')
  String? largeImageUrl;
  @JsonKey(name: 'medium_username')
  String? mediumUsername;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'only_proxied_transfers')
  bool onlyProxiedTransfers;
  @JsonKey(name: 'opensea_buyer_fee_basis_points')
  String openseaBuyerFeeBasisPoints;
  @JsonKey(name: 'opensea_seller_fee_basis_points')
  int openseaSellerFeeBasisPoints;
  @JsonKey(name: 'payout_address')
  String? payoutAddress;
  @JsonKey(name: 'require_email')
  bool requireEmail;
  @JsonKey(name: 'short_description')
  dynamic shortDescription;
  @JsonKey(name: 'slug')
  String slug;
  @JsonKey(name: 'telegram_url')
  String? telegramUrl;
  @JsonKey(name: 'twitter_username')
  String? twitterUsername;
  @JsonKey(name: 'instagram_username')
  String? instagramUsername;
  @JsonKey(name: 'wiki_url')
  dynamic wikiUrl;
  @JsonKey(name: 'is_nsfw')
  bool isNsfw;
  @JsonKey(name: 'fees')
  PurpleFees fees;
  @JsonKey(name: 'is_rarity_enabled')
  bool isRarityEnabled;
  @JsonKey(name: 'is_creator_fees_enforced')
  bool isCreatorFeesEnforced;

  Map<String, dynamic> toJson() => _$PurpleCollectionToJson(this);
}

@JsonSerializable()
class DisplayData {
  DisplayData({
    required this.cardDisplayStyle,
    this.images,
  });

  factory DisplayData.fromJson(Map<String, dynamic> json) =>
      _$DisplayDataFromJson(json);
  @JsonKey(name: 'card_display_style')
  CardDisplayStyle cardDisplayStyle;
  @JsonKey(name: 'images')
  List<dynamic>? images;

  Map<String, dynamic> toJson() => _$DisplayDataToJson(this);
}

enum CardDisplayStyle {
  @JsonValue('contain')
  CONTAIN,
  @JsonValue('cover')
  COVER,
  @JsonValue('padded')
  PADDED
}

@JsonSerializable()
class PurpleFees {
  PurpleFees({
    required this.sellerFees,
    required this.openseaFees,
  });

  factory PurpleFees.fromJson(Map<String, dynamic> json) =>
      _$PurpleFeesFromJson(json);
  @JsonKey(name: 'seller_fees')
  Map<String, int> sellerFees;
  @JsonKey(name: 'opensea_fees')
  OpenseaFees openseaFees;

  Map<String, dynamic> toJson() => _$PurpleFeesToJson(this);
}

@JsonSerializable()
class OpenseaFees {
  OpenseaFees({
    required this.the0X0000A26B00C1F0Df003000390027140000Faa719,
  });

  factory OpenseaFees.fromJson(Map<String, dynamic> json) =>
      _$OpenseaFeesFromJson(json);
  @JsonKey(name: '0x0000a26b00c1f0df003000390027140000faa719')
  int the0X0000A26B00C1F0Df003000390027140000Faa719;

  Map<String, dynamic> toJson() => _$OpenseaFeesToJson(this);
}

enum SafelistRequestStatus {
  @JsonValue('approved')
  APPROVED,
  @JsonValue('disabled_top_trending')
  DISABLED_TOP_TRENDING,
  @JsonValue('requested')
  REQUESTED,
  @JsonValue('verified')
  VERIFIED
}

@JsonSerializable()
class MakerFee {
  MakerFee({
    required this.account,
    required this.basisPoints,
  });

  factory MakerFee.fromJson(Map<String, dynamic> json) =>
      _$MakerFeeFromJson(json);
  @JsonKey(name: 'account')
  Maker account;
  @JsonKey(name: 'basis_points')
  String basisPoints;

  Map<String, dynamic> toJson() => _$MakerFeeToJson(this);
}

enum OrderType {
  @JsonValue('basic')
  BASIC
}

enum ProtocolAddress {
  @JsonValue('0x0000000000000068f116a894984e2db1123eb395')
  THE_0_X0000000000000068_F116_A894984_E2_DB1123_EB395,
  @JsonValue('0x00000000000000adc04c56bf30ac9d3c0aaf14dc')
  THE_0_X00000000000000_ADC04_C56_BF30_AC9_D3_C0_AAF14_DC
}

@JsonSerializable()
class ProtocolData {
  ProtocolData({
    required this.parameters,
    required this.signature,
  });

  factory ProtocolData.fromJson(Map<String, dynamic> json) =>
      _$ProtocolDataFromJson(json);
  @JsonKey(name: 'parameters')
  Parameters parameters;
  @JsonKey(name: 'signature')
  dynamic signature;

  Map<String, dynamic> toJson() => _$ProtocolDataToJson(this);
}

@JsonSerializable()
class Parameters {
  Parameters({
    required this.offerer,
    required this.offer,
    required this.consideration,
    required this.startTime,
    required this.endTime,
    required this.orderType,
    required this.zone,
    required this.zoneHash,
    required this.salt,
    required this.conduitKey,
    required this.totalOriginalConsiderationItems,
    required this.counter,
  });

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);
  @JsonKey(name: 'offerer')
  String offerer;
  @JsonKey(name: 'offer')
  List<Consideration> offer;
  @JsonKey(name: 'consideration')
  List<Consideration> consideration;
  @JsonKey(name: 'startTime')
  String startTime;
  @JsonKey(name: 'endTime')
  String endTime;
  @JsonKey(name: 'orderType')
  int orderType;
  @JsonKey(name: 'zone')
  Zone zone;
  @JsonKey(name: 'zoneHash')
  String zoneHash;
  @JsonKey(name: 'salt')
  String salt;
  @JsonKey(name: 'conduitKey')
  String conduitKey;
  @JsonKey(name: 'totalOriginalConsiderationItems')
  int totalOriginalConsiderationItems;
  @JsonKey(name: 'counter')
  dynamic counter;

  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}

@JsonSerializable()
class Consideration {
  Consideration({
    required this.itemType,
    required this.token,
    required this.identifierOrCriteria,
    required this.startAmount,
    required this.endAmount,
    this.recipient,
  });

  factory Consideration.fromJson(Map<String, dynamic> json) =>
      _$ConsiderationFromJson(json);
  @JsonKey(name: 'itemType')
  int itemType;
  @JsonKey(name: 'token')
  String token;
  @JsonKey(name: 'identifierOrCriteria')
  String identifierOrCriteria;
  @JsonKey(name: 'startAmount')
  String startAmount;
  @JsonKey(name: 'endAmount')
  String endAmount;
  @JsonKey(name: 'recipient')
  String? recipient;

  Map<String, dynamic> toJson() => _$ConsiderationToJson(this);
}

enum Zone {
  @JsonValue('0x0000000000000000000000000000000000000000')
  THE_0_X0000000000000000000000000000000000000000,
  @JsonValue('0x000056F7000000EcE9003ca63978907a00FFD100')
  THE_0_X000056_F7000000_EC_E9003_CA63978907_A00_FFD100,
  @JsonValue('0x004C00500000aD104D7DBd00e3ae0A5C00560C00')
  THE_0_X004_C00500000_A_D104_D7_D_BD00_E3_AE0_A5_C00560_C00
}

enum Side {
  @JsonValue('ask')
  ASK
}

@JsonSerializable()
class TakerAssetBundle {
  TakerAssetBundle({
    required this.assets,
    required this.maker,
    required this.slug,
    required this.name,
    required this.description,
    required this.externalLink,
    required this.assetContract,
    required this.permalink,
    required this.seaportSellOrders,
  });

  factory TakerAssetBundle.fromJson(Map<String, dynamic> json) =>
      _$TakerAssetBundleFromJson(json);
  @JsonKey(name: 'assets')
  List<TakerAssetBundleAsset> assets;
  @JsonKey(name: 'maker')
  dynamic maker;
  @JsonKey(name: 'slug')
  dynamic slug;
  @JsonKey(name: 'name')
  dynamic name;
  @JsonKey(name: 'description')
  dynamic description;
  @JsonKey(name: 'external_link')
  dynamic externalLink;
  @JsonKey(name: 'asset_contract')
  dynamic assetContract;
  @JsonKey(name: 'permalink')
  dynamic permalink;
  @JsonKey(name: 'seaport_sell_orders')
  dynamic seaportSellOrders;

  Map<String, dynamic> toJson() => _$TakerAssetBundleToJson(this);
}

@JsonSerializable()
class TakerAssetBundleAsset {
  TakerAssetBundleAsset({
    required this.id,
    required this.tokenId,
    required this.numSales,
    required this.backgroundColor,
    required this.imageUrl,
    required this.imagePreviewUrl,
    required this.imageThumbnailUrl,
    required this.imageOriginalUrl,
    required this.animationUrl,
    required this.animationOriginalUrl,
    required this.name,
    required this.description,
    required this.externalLink,
    required this.assetContract,
    required this.permalink,
    required this.collection,
    required this.decimals,
    required this.tokenMetadata,
    required this.isNsfw,
    required this.owner,
  });

  factory TakerAssetBundleAsset.fromJson(Map<String, dynamic> json) =>
      _$TakerAssetBundleAssetFromJson(json);
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'token_id')
  String tokenId;
  @JsonKey(name: 'num_sales')
  int numSales;
  @JsonKey(name: 'background_color')
  dynamic backgroundColor;
  @JsonKey(name: 'image_url')
  String imageUrl;
  @JsonKey(name: 'image_preview_url')
  String imagePreviewUrl;
  @JsonKey(name: 'image_thumbnail_url')
  String imageThumbnailUrl;
  @JsonKey(name: 'image_original_url')
  String imageOriginalUrl;
  @JsonKey(name: 'animation_url')
  dynamic animationUrl;
  @JsonKey(name: 'animation_original_url')
  dynamic animationOriginalUrl;
  @JsonKey(name: 'name')
  AssetName name;
  @JsonKey(name: 'description')
  dynamic description;
  @JsonKey(name: 'external_link')
  dynamic externalLink;
  @JsonKey(name: 'asset_contract')
  AssetContract assetContract;
  @JsonKey(name: 'permalink')
  String permalink;
  @JsonKey(name: 'collection')
  FluffyCollection collection;
  @JsonKey(name: 'decimals')
  int decimals;
  @JsonKey(name: 'token_metadata')
  dynamic tokenMetadata;
  @JsonKey(name: 'is_nsfw')
  bool isNsfw;
  @JsonKey(name: 'owner')
  dynamic owner;

  Map<String, dynamic> toJson() => _$TakerAssetBundleAssetToJson(this);
}

@JsonSerializable()
class FluffyCollection {
  FluffyCollection({
    required this.bannerImageUrl,
    required this.chatUrl,
    required this.createdDate,
    required this.defaultToFiat,
    required this.description,
    required this.devBuyerFeeBasisPoints,
    required this.devSellerFeeBasisPoints,
    required this.discordUrl,
    required this.displayData,
    required this.externalUrl,
    required this.featured,
    required this.featuredImageUrl,
    required this.hidden,
    required this.safelistRequestStatus,
    required this.imageUrl,
    required this.isSubjectToWhitelist,
    required this.largeImageUrl,
    required this.mediumUsername,
    required this.name,
    required this.onlyProxiedTransfers,
    required this.openseaBuyerFeeBasisPoints,
    required this.openseaSellerFeeBasisPoints,
    required this.payoutAddress,
    required this.requireEmail,
    required this.shortDescription,
    required this.slug,
    required this.telegramUrl,
    required this.twitterUsername,
    required this.instagramUsername,
    required this.wikiUrl,
    required this.isNsfw,
    required this.fees,
    required this.isRarityEnabled,
    required this.isCreatorFeesEnforced,
  });

  factory FluffyCollection.fromJson(Map<String, dynamic> json) =>
      _$FluffyCollectionFromJson(json);
  @JsonKey(name: 'banner_image_url')
  dynamic bannerImageUrl;
  @JsonKey(name: 'chat_url')
  dynamic chatUrl;
  @JsonKey(name: 'created_date')
  DateTime createdDate;
  @JsonKey(name: 'default_to_fiat')
  bool defaultToFiat;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'dev_buyer_fee_basis_points')
  String devBuyerFeeBasisPoints;
  @JsonKey(name: 'dev_seller_fee_basis_points')
  String devSellerFeeBasisPoints;
  @JsonKey(name: 'discord_url')
  dynamic discordUrl;
  @JsonKey(name: 'display_data')
  DisplayData displayData;
  @JsonKey(name: 'external_url')
  dynamic externalUrl;
  @JsonKey(name: 'featured')
  bool featured;
  @JsonKey(name: 'featured_image_url')
  dynamic featuredImageUrl;
  @JsonKey(name: 'hidden')
  bool hidden;
  @JsonKey(name: 'safelist_request_status')
  SafelistRequestStatus safelistRequestStatus;
  @JsonKey(name: 'image_url')
  dynamic imageUrl;
  @JsonKey(name: 'is_subject_to_whitelist')
  bool isSubjectToWhitelist;
  @JsonKey(name: 'large_image_url')
  dynamic largeImageUrl;
  @JsonKey(name: 'medium_username')
  dynamic mediumUsername;
  @JsonKey(name: 'name')
  CollectionName name;
  @JsonKey(name: 'only_proxied_transfers')
  bool onlyProxiedTransfers;
  @JsonKey(name: 'opensea_buyer_fee_basis_points')
  String openseaBuyerFeeBasisPoints;
  @JsonKey(name: 'opensea_seller_fee_basis_points')
  int openseaSellerFeeBasisPoints;
  @JsonKey(name: 'payout_address')
  dynamic payoutAddress;
  @JsonKey(name: 'require_email')
  bool requireEmail;
  @JsonKey(name: 'short_description')
  dynamic shortDescription;
  @JsonKey(name: 'slug')
  Slug slug;
  @JsonKey(name: 'telegram_url')
  dynamic telegramUrl;
  @JsonKey(name: 'twitter_username')
  dynamic twitterUsername;
  @JsonKey(name: 'instagram_username')
  dynamic instagramUsername;
  @JsonKey(name: 'wiki_url')
  dynamic wikiUrl;
  @JsonKey(name: 'is_nsfw')
  bool isNsfw;
  @JsonKey(name: 'fees')
  FluffyFees fees;
  @JsonKey(name: 'is_rarity_enabled')
  bool isRarityEnabled;
  @JsonKey(name: 'is_creator_fees_enforced')
  bool isCreatorFeesEnforced;

  Map<String, dynamic> toJson() => _$FluffyCollectionToJson(this);
}

@JsonSerializable()
class FluffyFees {
  FluffyFees({
    required this.sellerFees,
    required this.openseaFees,
  });

  factory FluffyFees.fromJson(Map<String, dynamic> json) =>
      _$FluffyFeesFromJson(json);
  @JsonKey(name: 'seller_fees')
  SellerFees sellerFees;
  @JsonKey(name: 'opensea_fees')
  OpenseaFees openseaFees;

  Map<String, dynamic> toJson() => _$FluffyFeesToJson(this);
}

@JsonSerializable()
class SellerFees {
  SellerFees();

  factory SellerFees.fromJson(Map<String, dynamic> json) =>
      _$SellerFeesFromJson(json);

  Map<String, dynamic> toJson() => _$SellerFeesToJson(this);
}

enum CollectionName {
  @JsonValue('OpenSea PaymentAssets')
  OPEN_SEA_PAYMENT_ASSETS
}

enum Slug {
  @JsonValue('opensea-paymentassets')
  OPENSEA_PAYMENTASSETS
}

enum AssetName {
  @JsonValue('Ether')
  ETHER
}
