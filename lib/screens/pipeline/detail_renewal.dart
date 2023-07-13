// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/pipeline/detail_cubit.dart';
import 'package:mandiri_in_health/blocs/pipeline/detail_state.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/widgets/info_detail_item.dart';
import 'package:mandiri_in_health/widgets/pipeline/renewal/data_badan_usaha.dart';
import 'package:mandiri_in_health/widgets/pipeline/renewal/data_kanal.dart';
import 'package:mandiri_in_health/widgets/pipeline/renewal/data_potensi_bisnis.dart';
import 'package:mandiri_in_health/widgets/pipeline/renewal/update_aktifitas.dart';
import 'package:mandiri_in_health/widgets/pipeline/riwayat_sales_activity.dart';
import 'package:mandiri_in_health/widgets/title_detail_item.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class PipelineRenewalDetail extends StatefulWidget {
  const PipelineRenewalDetail({Key? key, required this.item}) : super(key: key);

  final PipelineModel item;

  @override
  State<PipelineRenewalDetail> createState() {
    return _PipelineRenewalDetailState();
  }
}

class _PipelineRenewalDetailState extends State<PipelineRenewalDetail> {
  final _scrollController = ScrollController();
  final _pipelineDetailCubit = PipelineDetailCubit();

  Color? _iconColor = Colors.white;
  bool _showAddressDetail = false;
  bool _showDataKanal = false;
  bool _showDataBadanUsaha = false;
  bool _showDataPotensiBisnis = false;
  bool _showUpdateAktifitas = false;
  bool _showRiwayatAktivitas = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _pipelineDetailCubit.onLoad(widget.item.Id);
  }

  @override
  void dispose() {
    _pipelineDetailCubit.close();
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
  Widget _buildContent(PipelineModel? pipeline) {
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
    Widget dataKanal = AppPlaceholder(
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
    Widget dataBadanUsaha = dataKanal;
    Widget dataPotensiBisnis = dataKanal;
    Widget updateAktifitas = dataKanal;
    Widget riwayatSalesActivity = Container();

    if (pipeline != null) {
      banner = Stack(
        children: [
          CachedNetworkImage(
            imageUrl: pipeline.image!.full,
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
        pipeline.PolisStatus!,
        type: TagType.status,
      );

      title = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleDetail(
              title: pipeline.MdrName,
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
                              pipeline.MdrAlamat!,
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
                "KOTA/KABUPATEN ${pipeline.Kabupaten}\n" +
                    "KECAMATAN ${pipeline.Kecamatan}\n" +
                    "KELURAHAN ${pipeline.Kelurahan}\n" +
                    "KODE POS ${pipeline.KodePosLookup}",
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
          value: pipeline.MdrNoTelp!,
          icon: const Icon(
            Icons.phone_outlined,
            color: Colors.white,
            size: 18,
          ));

      email = InfoDetail(
          label: "EMAIL",
          value: pipeline.MdrEmail!,
          icon: const Icon(
            Icons.email_outlined,
            color: Colors.white,
            size: 18,
          ));

      createdBy = InfoDetail(
          label: "CREATED BY",
          value: pipeline.CreatedBy!,
          icon: const Icon(
            Icons.person_outlined,
            color: Colors.white,
            size: 18,
          ));

      createdOn = InfoDetail(
          label: "CREATED ON",
          value: pipeline.CreatedOn!,
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
              pipeline.UpdateAktifitas!,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            icon: Icon(
              pipeline.MdrKomitmentAgen!
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: null,
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

      dataKanal = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showDataKanal = !_showDataKanal;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "DATA KANAL",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showDataKanal
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Visibility(
              visible: _showDataKanal,
              child: DataKanalRenewalDetail(item: pipeline)),
        ],
      );

      dataBadanUsaha = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showDataBadanUsaha = !_showDataBadanUsaha;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "DATA BADAN USAHA",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showDataBadanUsaha
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Visibility(
              visible: _showDataBadanUsaha,
              child: DataBadanUsahaRenewalDetail(item: pipeline)),
        ],
      );

      dataPotensiBisnis = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showDataPotensiBisnis = !_showDataPotensiBisnis;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "DATA POTENSI BISNIS",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showDataPotensiBisnis
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Visibility(
              visible: _showDataPotensiBisnis,
              child: DataPotensiBisnisRenewalDetail(item: pipeline)),
        ],
      );

      updateAktifitas = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showUpdateAktifitas = !_showUpdateAktifitas;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "UPDATE AKTIFITAS",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showUpdateAktifitas
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Visibility(
              visible: _showUpdateAktifitas,
              child: UpdateAktifitasRenewalDetail(item: pipeline)),
        ],
      );

      riwayatSalesActivity = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                _showRiwayatAktivitas = !_showRiwayatAktivitas;
              });
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "RIWAYAT AKTIFITAS",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  _showRiwayatAktivitas
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Visibility(
              visible: _showRiwayatAktivitas,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  final item = pipeline.RiwayatSalesActivity?[index];
                  return RiwayatSalesActivityItem(item: item);
                },
                itemCount: pipeline.RiwayatSalesActivity!.length,
              )),
        ],
      );

      infoListItem.addAll([
        dataKanal,
        dataBadanUsaha,
        dataPotensiBisnis,
        updateAktifitas,
        riwayatSalesActivity
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
        create: (context) => _pipelineDetailCubit,
        child: BlocBuilder<PipelineDetailCubit, PipelineDetailState>(
          builder: (context, state) {
            PipelineModel? pipeline;
            if (state is PipelineDetailSuccess) {
              pipeline = state.pipeline;
            }
            return _buildContent(pipeline);
          },
        ),
      ),
    );
  }
}
