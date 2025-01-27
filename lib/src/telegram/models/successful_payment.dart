/// TeleDart - Telegram Bot API for Dart
/// Copyright (C) 2019  Dino PH Leung
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.

part of '../model.dart';

/// This object contains basic information about a successful payment.
///
/// https://core.telegram.org/bots/api#successfulpayment
@JsonSerializable()
class SuccessfulPayment {
  String currency;
  int total_amount;
  String invoice_payload;
  String? shipping_option_id;
  OrderInfo? order_info;
  String telegram_payment_charge_id;
  String provider_payment_charge_id;
  SuccessfulPayment({
    required this.currency,
    required this.total_amount,
    required this.invoice_payload,
    this.shipping_option_id,
    this.order_info,
    required this.telegram_payment_charge_id,
    required this.provider_payment_charge_id,
  });
  factory SuccessfulPayment.fromJson(Map<String, dynamic> json) =>
      _$SuccessfulPaymentFromJson(json);
  Map<String, dynamic> toJson() => _$SuccessfulPaymentToJson(this);
}
