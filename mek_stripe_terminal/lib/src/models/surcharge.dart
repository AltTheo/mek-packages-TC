import 'package:mek_data_class/mek_data_class.dart';

part 'surcharge.g.dart';

/// Whether a surcharge is available to be collected.
enum SurchargeStatus {
  /// A surcharge is available to be collected.
  available,

  /// A surcharge is not available to be collected.
  unavailable,
}

/// Details about a surcharge included in the [PaymentIntent] amount.
@DataClass()
class SurchargeDetails with _$SurchargeDetails {
  /// The surcharge amount that was applied, provided in the currency’s smallest unit.
  final int? amount;

  /// The maximum surcharge amount that can be applied, provided in the currency’s smallest unit.
  final int? maximumAmount;

  /// Whether a surcharge is available to be collected.
  final SurchargeStatus? status;

  const SurchargeDetails({
    required this.amount,
    required this.maximumAmount,
    required this.status,
  });
}

/// Whether the customer’s consent to a surcharge should be collected at the reader.
enum SurchargeConsentCollection {
  /// Collect the customer’s consent to the surcharge at the reader.
  enabled,

  /// Don’t collect the customer’s consent to the surcharge at the reader.
  disabled,
}

/// Configuration for collecting a customer’s consent to a surcharge.
@DataClass()
class SurchargeConsent with _$SurchargeConsent {
  /// Whether to collect the customer’s consent to the surcharge at the reader.
  final SurchargeConsentCollection collection;

  /// A custom notice to display to the customer when collecting their consent to the surcharge.
  final String? notice;

  const SurchargeConsent({
    required this.collection,
    this.notice,
  });
}

/// Configuration for surcharge collection during payment confirmation.
///
/// This is a preview feature. To request access, contact Stripe Support.
@DataClass()
class SurchargeConfiguration with _$SurchargeConfiguration {
  /// The surcharge amount to apply to the transaction, provided in the currency’s smallest unit.
  final int amount;

  /// Configuration for surcharge consent collection.
  final SurchargeConsent? consent;

  const SurchargeConfiguration({
    required this.amount,
    this.consent,
  });
}
