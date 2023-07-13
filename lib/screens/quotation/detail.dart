// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/quotation/detail_cubit.dart';
import 'package:mandiri_in_health/blocs/quotation/detail_state.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/widgets/info_detail_item.dart';
import 'package:mandiri_in_health/widgets/quotation/general_information_detail.dart';
import 'package:mandiri_in_health/widgets/title_detail_item.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class QuotationDetail extends StatefulWidget {
  const QuotationDetail({Key? key, required this.item}) : super(key: key);

  final QuotationModel item;

  @override
  State<QuotationDetail> createState() {
    return _QuotationDetailState();
  }
}

class _QuotationDetailState extends State<QuotationDetail> {
  final _scrollController = ScrollController();
  final _quotationDetailCubit = QuotationDetailCubit();

  Color? _iconColor = Colors.white;
  bool _showAddressDetail = false;
  bool _showGeneralInformation = false;
  bool _showDataBadanUsaha = false;
  bool _showDataPotensiBisnis = false;
  bool _showUpdateAktifitas = false;
  bool _showRiwayatAktivitas = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _quotationDetailCubit.onLoad(widget.item.Id);
  }

  @override
  void dispose() {
    _quotationDetailCubit.close();
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
  Widget _buildContent(QuotationModel? quotation) {
    ///Build UI loading
    List<Widget> action = [];
    Widget banner = AppPlaceholder(
      child: Container(
        color: Colors.white,
      ),
    );
    Widget title = Container();
    Widget status = Container();
    Widget address = Container();
    Widget phone = Container();
    Widget email = Container();
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
    
    Widget generalInformation = AppPlaceholder(
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
    Widget caraPembayaran = generalInformation;
    Widget komisiPengajuan = generalInformation;
    Widget komisiDisetujui = generalInformation;
    Widget slaPengajuanDalamHari = generalInformation;
    Widget slaDisetujuiDalamHari = generalInformation;
    Widget pengajuan = generalInformation;
    Widget disetujui = generalInformation;
    Widget underwritingInfo = generalInformation;
    Widget marketingInfo = generalInformation;
    Widget additionalInformation = generalInformation;
    Widget tambahan = generalInformation;
    Widget ekses = generalInformation;
    Widget installment = Container();

    if (quotation != null) {
      banner = Stack(
        children: [
          CachedNetworkImage(
            imageUrl: quotation.image!.full,
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
        quotation.PolisStatus!,
        type: TagType.status,
      );

      title = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleDetail(
              title: quotation.MdrName,
            ),
            status
          ],
        ),
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
                              quotation.Alamat!,
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
                "KOTA/KABUPATEN ${quotation.Kabupaten}\n" +
                    "KECAMATAN ${quotation.Kecamatan}\n" +
                    "KELURAHAN ${quotation.Kelurahan}\n" +
                    "KODE POS ${quotation.KodePos}",
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
          value: quotation.MdrPhoneNumber!,
          icon: const Icon(
            Icons.phone_outlined,
            color: Colors.white,
            size: 18,
          ));

      email = InfoDetail(
          label: "EMAIL",
          value: quotation.MdrEmail!,
          icon: const Icon(
            Icons.email_outlined,
            color: Colors.white,
            size: 18,
          ));

      createdBy = InfoDetail(
          label: "CREATED BY",
          value: quotation.CreatedBy!,
          icon: const Icon(
            Icons.person_outlined,
            color: Colors.white,
            size: 18,
          ));

      createdOn = InfoDetail(
          label: "CREATED ON",
          value: quotation.CreatedOn!,
          icon: const Icon(
            Icons.date_range_outlined,
            color: Colors.white,
            size: 18,
          ));

      var commitment = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              quotation.QuotationStatus!,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
      infoListItem.addAll([
        commitment,
        address,
        phone,
        email,
        createdBy,
        createdOn,
        const SizedBox(height: 16)
      ]);

      generalInformation = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showGeneralInformation = !_showGeneralInformation;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "GENERAL INFORMATION",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showGeneralInformation
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Visibility(
              visible: _showGeneralInformation,
              child: GeneralInformationDetail(item: quotation)),
        ],
      );

      infoListItem.addAll([
        generalInformation,
      ]);

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
              children: <Widget>[const SizedBox(height: 16), title, info],
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
        create: (context) => _quotationDetailCubit,
        child: BlocBuilder<QuotationDetailCubit, QuotationDetailState>(
          builder: (context, state) {
            QuotationModel? quotation;
            if (state is QuotationDetailSuccess) {
              quotation = state.quotation;
            }
            return _buildContent(quotation);
          },
        ),
      ),
    );
  }
}
