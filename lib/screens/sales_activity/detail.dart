import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/sales_activity/detail_cubit.dart';
import 'package:mandiri_in_health/blocs/sales_activity/detail_state.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';
import 'package:mandiri_in_health/screens/sales_activity/closing_detail.dart';
import 'package:mandiri_in_health/utils/utils.dart';
import 'package:mandiri_in_health/widgets/title_detail_item.dart';
import 'package:mandiri_in_health/widgets/widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SalesActivityDetail extends StatefulWidget {
  const SalesActivityDetail({Key? key, required this.item}) : super(key: key);

  final SalesActivityModel item;

  @override
  State<SalesActivityDetail> createState() {
    return _SalesActivityDetailState();
  }
}

class _SalesActivityDetailState extends State<SalesActivityDetail> {
  final _scrollController = ScrollController();
  final _salesActivityDetailCubit = SalesActivityDetailCubit();

  Color? _iconColor = Colors.white;
  bool _showClosing = false;
  bool _showLoss = false;
  bool _showPindahProduk = false;
  bool _showLapse = false;
  bool _showAddressDetail = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _salesActivityDetailCubit.onLoad(widget.item.Id);
  }

  @override
  void dispose() {
    _salesActivityDetailCubit.close();
    _scrollController.dispose();
    super.dispose();
  }

  ///Handle icon theme
  void _onScroll() {
    Color? color;
    if (_scrollController.position.extentBefore < 110) {
      color = Colors.white;
    }
    if (color != _iconColor) {
      setState(() {
        _iconColor = color;
      });
    }
  }

  ///On show message fail
  void _showMessage(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            Translate.of(context).translate('explore_product'),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            AppButton(
              Translate.of(context).translate('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
              type: ButtonType.text,
            ),
          ],
        );
      },
    );
  }

  ///Phone action
  void _phoneAction(String phone) async {
    final result = await showModalBottomSheet<String?>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: IntrinsicHeight(
              child: Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                    Column(
                      children: [
                        AppListTitle(
                          title: 'WhatsApp',
                          leading: SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(Images.whatsapp),
                          ),
                          onPressed: () {
                            Navigator.pop(context, "WhatsApp");
                          },
                        ),
                        AppListTitle(
                          title: 'Viber',
                          leading: SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(Images.viber),
                          ),
                          onPressed: () {
                            Navigator.pop(context, "Viber");
                          },
                        ),
                        AppListTitle(
                          title: 'Telegram',
                          leading: SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(Images.telegram),
                          ),
                          onPressed: () {
                            Navigator.pop(context, "Telegram");
                          },
                          border: false,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    if (result != null) {
      String url = '';

      switch (result) {
        case "WhatsApp":
          if (Platform.isAndroid) {
            url = "whatsapp://wa.me/$phone";
          } else {
            url = "whatsapp://api.whatsapp.com/send?phone=$phone";
          }
          break;
        case "Viber":
          url = "viber://contact?number=$phone";
          break;
        case "Telegram":
          url = "tg://msg?to=$phone";
          break;
        default:
          break;
      }

      _makeAction(url);
    }
  }

  ///Make action
  void _makeAction(String url) async {
    try {
      launchUrl(Uri.parse(url));
    } catch (e) {
      _showMessage(Translate.of(context).translate('cannot_make_action'));
    }
  }

  ///Build content UI
  Widget _buildContent(SalesActivityModel? salesActivity) {
    ///Build UI loading
    List<Widget> action = [];
    Widget banner = AppPlaceholder(
      child: Container(
        color: Colors.white,
      ),
    );
    Widget status = Container();
    Widget address = Container();
    Widget phone = Container();
    Widget email = Container();
    Widget keterangan = Container();
    Widget info = AppPlaceholder(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 16,
              width: 150,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 16,
                      width: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 20,
                      width: 150,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  height: 10,
                  width: 100,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 10,
                      width: 200,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 10,
                      width: 200,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 10,
                      width: 200,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 10,
                      width: 200,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 10,
                      width: 200,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
          ],
        ),
      ),
    );
    Widget closing = AppPlaceholder(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
            const SizedBox(height: 4),
            Container(height: 10, color: Colors.white),
          ],
        ),
      ),
    );

    if (salesActivity != null) {
      banner = Stack(
        children: [
          CachedNetworkImage(
            imageUrl: salesActivity.image!.full,
            placeholder: (context, url) {
              return AppPlaceholder(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return AppPlaceholder(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.error),
                ),
              );
            },
          )
        ],
      );

      status = AppTag(
        salesActivity.MdrStatusAktivitas ?? "",
        type: TagType.status,
      );

      address = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).dividerColor,
                        ),
                        child: const Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "ALAMAT",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Text(
                              salesActivity.Alamat ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _showAddressDetail = !_showAddressDetail;
                  });
                },
                child: Icon(
                  _showAddressDetail
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              )
            ],
          ),
          Visibility(
            visible: _showAddressDetail,
            child: Container(
              margin: const EdgeInsets.only(left: 42),
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "KODE POS ${salesActivity.KodePos}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      );

      phone = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              salesActivity.NoTelp!.isNotEmpty
                  ? _phoneAction(salesActivity.NoTelp!)
                  : null;
            },
            child: Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).dividerColor,
                  ),
                  child: const Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "NO. TELP",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        salesActivity.NoTelp ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );

      email = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              salesActivity.Email!.isNotEmpty
                  ? _makeAction('mailto:${salesActivity.Email}')
                  : null;
            },
            child: Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).dividerColor,
                  ),
                  child: const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "EMAIL",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        salesActivity.Email ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );

      keterangan = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          InkWell(
            child: Row(
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).dividerColor,
                  ),
                  child: const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "KETERANGAN PROGRESS",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        salesActivity.MdrKeteranganProgres ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );

      closing = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showClosing = !_showClosing;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Closing",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showClosing
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Visibility(
              visible: _showClosing,
              child: ClosingItemDetail(item: salesActivity)),
        ],
      );

      info = Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    salesActivity.UpdateAktivitas ?? "",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    salesActivity.MdrCommitment!
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            address,
            phone,
            email,
            keterangan,
            const SizedBox(height: 16),
            closing
          ],
        ),
      );

      // openHours = Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     const SizedBox(height: 12),
      //     InkWell(
      //       onTap: () {
      //         setState(() {
      //           _showHour = !_showHour;
      //         });
      //       },
      //       child: Row(
      //         children: <Widget>[
      //           Expanded(
      //             child: Row(
      //               children: <Widget>[
      //                 Container(
      //                   width: 32,
      //                   height: 32,
      //                   decoration: BoxDecoration(
      //                     shape: BoxShape.circle,
      //                     color: Theme.of(context).dividerColor,
      //                   ),
      //                   child: const Icon(
      //                     Icons.access_time_outlined,
      //                     color: Colors.white,
      //                     size: 18,
      //                   ),
      //                 ),
      //                 const SizedBox(width: 8),
      //                 Text(
      //                   Translate.of(context).translate('open_time'),
      //                   style: Theme.of(context).textTheme.labelSmall,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Icon(
      //             _showHour
      //                 ? Icons.keyboard_arrow_up
      //                 : Icons.keyboard_arrow_down,
      //           )
      //         ],
      //       ),
      //     ),
      //     Visibility(
      //       visible: _showHour,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: product.openHours.map((item) {
      //           final hour = item.schedule
      //               .map((e) {
      //                 return '${e.start.viewTime}-${e.end.viewTime}';
      //               })
      //               .toList()
      //               .join(",");
      //           return Container(
      //             decoration: BoxDecoration(
      //               border: Border(
      //                 bottom: BorderSide(
      //                   color: Theme.of(context).dividerColor,
      //                   width: 1,
      //                 ),
      //               ),
      //             ),
      //             margin: const EdgeInsets.only(left: 42),
      //             padding: const EdgeInsets.symmetric(vertical: 8),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: <Widget>[
      //                 Text(
      //                   Translate.of(context).translate(item.key),
      //                   style: Theme.of(context).textTheme.labelSmall,
      //                 ),
      //                 const SizedBox(width: 8),
      //                 Expanded(
      //                   child: Text(
      //                     hour,
      //                     style: Theme.of(context)
      //                         .textTheme
      //                         .labelSmall!
      //                         .copyWith(
      //                             color:
      //                                 Theme.of(context).colorScheme.secondary,
      //                             fontWeight: FontWeight.bold),
      //                     maxLines: 1,
      //                     overflow: TextOverflow.ellipsis,
      //                     textAlign: TextAlign.right,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           );
      //         }).toList(),
      //       ),
      //     ),
      //   ],
      // );
    }

    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      controller: _scrollController,
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.25,
          pinned: true,
          actions: action,
          iconTheme: Theme.of(context).iconTheme.copyWith(color: _iconColor),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.none,
            background: banner,
          ),
        ),
        SliverToBoxAdapter(
          child: SafeArea(
            top: false,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleDetail(
                        title: salesActivity?.Pipeline,
                        subTitle: salesActivity?.MdrKodeBooking,
                      ),
                      status
                    ],
                  ),
                ),
                info
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _salesActivityDetailCubit,
        child: BlocBuilder<SalesActivityDetailCubit, SalesActivityDetailState>(
          builder: (context, state) {
            SalesActivityModel? salesActivity;
            if (state is SalesActivityDetailSuccess) {
              salesActivity = state.salesActivity;
            }
            return _buildContent(salesActivity);
          },
        ),
      ),
    );
  }
}
