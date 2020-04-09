/// Autogenerated from flutter_deriv_api|lib/api/buy_contract_for_multiple_accounts_send.json
import 'dart:async';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'request.dart';

part 'buy_contract_for_multiple_accounts_send.g.dart';

/// JSON conversion for 'buy_contract_for_multiple_accounts_send'
@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class BuyContractForMultipleAccountsRequest extends Request {
  /// Initialize BuyContractForMultipleAccountsRequest
  BuyContractForMultipleAccountsRequest(
      {this.buyContractForMultipleAccounts,
      this.parameters,
      this.price,
      this.tokens,
      Map<String, dynamic> passthrough,
      int reqId})
      : super(passthrough: passthrough, reqId: reqId);

  /// Creates instance from JSON
  factory BuyContractForMultipleAccountsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$BuyContractForMultipleAccountsRequestFromJson(json);

  // Properties
  /// Either the ID received from a Price Proposal (`proposal` call), or `1` if contract buy parameters are passed in the `parameters` field.
  String buyContractForMultipleAccounts;

  /// [Optional] Used to pass the parameters for contract buy.
  Map<String, dynamic> parameters;

  /// Maximum price at which to purchase the contract.
  num price;

  /// List of API tokens identifying the accounts for which the contract is bought. Note: If the same token appears multiple times or if multiple tokens designate the same account, the contract is bought multiple times for this account.
  List<String> tokens;

  /// Converts to JSON
  @override
  Map<String, dynamic> toJson() =>
      _$BuyContractForMultipleAccountsRequestToJson(this);
}
