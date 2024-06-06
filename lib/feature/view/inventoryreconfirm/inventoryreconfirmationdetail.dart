import 'package:customer_connect/feature/data/models/inventory_reconfirm_header_model/inventory_reconfirm_header_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:flutter/cupertino.dart';

class InventoryReconfirmationDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final InventoryReconfirmHeaderModel header;
  const InventoryReconfirmationDetailScreen(
      {super.key, required this.user, required this.header});

  @override
  State<InventoryReconfirmationDetailScreen> createState() =>
      _InventoryReconfirmationDetailScreenState();
}

class _InventoryReconfirmationDetailScreenState
    extends State<InventoryReconfirmationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
