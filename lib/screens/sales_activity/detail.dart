// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/sales_activity/detail_cubit.dart';
import 'package:mandiri_in_health/blocs/sales_activity/detail_state.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';
import 'package:mandiri_in_health/widgets/sales_activity/closing_detail.dart';
import 'package:mandiri_in_health/widgets/sales_activity/lapse_detail.dart';
import 'package:mandiri_in_health/widgets/sales_activity/loss_detail.dart';
import 'package:mandiri_in_health/widgets/sales_activity/pindah_produk_detail.dart';
import 'package:mandiri_in_health/widgets/info_detail_item.dart';
import 'package:mandiri_in_health/widgets/title_detail_item.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

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
    Widget createdBy = Container();
    Widget createdOn = Container();
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
    Widget loss = closing;
    Widget pindahProduk = closing;
    Widget lapse = closing;

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
        salesActivity.MdrStatusAktivitas!,
        type: TagType.status,
      );

      var infoListItem = <Widget>[];

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
                              salesActivity.Alamat!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
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
                "KOTA/KABUPATEN ${salesActivity.Kabupaten!}\n" +
                    "KECAMATAN ${salesActivity.Kecamatan!}\n" +
                    "KELURAHAN ${salesActivity.Kelurahan!}\n" +
                    "KODE POS ${salesActivity.KodePos}",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      );

      phone = InfoDetail(
          label: "NO. TELP",
          value: salesActivity.NoTelp!,
          icon: const Icon(
            Icons.phone_outlined,
            color: Colors.white,
            size: 18,
          ));

      email = InfoDetail(
          label: "EMAIL",
          value: salesActivity.Email!,
          icon: const Icon(
            Icons.email_outlined,
            color: Colors.white,
            size: 18,
          ));

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
                    Icons.description_outlined,
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
                        salesActivity.MdrKeteranganProgres!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
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

      createdBy = InfoDetail(
          label: "CREATED BY",
          value: salesActivity.CreatedBy!,
          icon: const Icon(
            Icons.person_outlined,
            color: Colors.white,
            size: 18,
          ));

      createdOn = InfoDetail(
          label: "CREATED ON",
          value: salesActivity.CreatedOn!,
          icon: const Icon(
            Icons.date_range_outlined,
            color: Colors.white,
            size: 18,
          ));

      var updateAktifitasCommitment = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              salesActivity.UpdateAktivitas!,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
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
      );
      infoListItem.addAll([
        updateAktifitasCommitment,
        address,
        phone,
        email,
        keterangan,
        createdBy,
        createdOn,
        const SizedBox(height: 16)
      ]);

      if (salesActivity.UpdateAktivitas == 'CLOSING') {
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
                          "CLOSING",
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
            const SizedBox(height: 12),
            Visibility(
                visible: _showClosing,
                child: ClosingItemDetail(item: salesActivity)),
          ],
        );

        infoListItem.add(closing);
      }

      if (salesActivity.UpdateAktivitas == 'LOSS') {
        loss = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                setState(() {
                  _showLoss = !_showLoss;
                });
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "LOSS",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _showLoss
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Visibility(
                visible: _showLoss, child: LossItemDetail(item: salesActivity)),
          ],
        );

        infoListItem.add(loss);
      }

      if (salesActivity.UpdateAktivitas == 'PINDAH PRODUK') {
        pindahProduk = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                setState(() {
                  _showPindahProduk = !_showPindahProduk;
                });
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "PINDAH PRODUK",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _showPindahProduk
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Visibility(
                visible: _showPindahProduk,
                child: PindahProdukItemDetail(item: salesActivity)),
          ],
        );

        infoListItem.add(pindahProduk);
      }

      if (salesActivity.UpdateAktivitas == 'LAPSE') {
        lapse = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                setState(() {
                  _showLapse = !_showLapse;
                });
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "LAPSE",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _showLapse
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Visibility(
                visible: _showLapse,
                child: LapseItemDetail(item: salesActivity)),
          ],
        );

        infoListItem.add(lapse);
      }

      info = Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: infoListItem,
        ),
      );
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
