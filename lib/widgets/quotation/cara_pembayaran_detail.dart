import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/widgets/quotation/quotation_installment.dart';

class CaraPembayaranDetail extends StatelessWidget {
  final QuotationModel item;
  const CaraPembayaranDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemList = <Widget>[];
    itemList.addAll([
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "CARA BAYAR",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            item.CaraBayar ?? "",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const SizedBox(height: 15)
    ]);
    
    if (item.Product != 'ENDOWNMENT' && item.CaraBayar == "INSTALMENT") {
      itemList.add(ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          final quotation = item.Installment?[index];
          return QuotationInstallmentItem(item: quotation);
        },
        itemCount: item.Installment!.length,
      ));
    }

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: itemList);
  }
}
