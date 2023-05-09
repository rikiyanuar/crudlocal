import 'package:flutter/material.dart';

import '../../domain/entity/address_entity.dart';
import '../../domain/use_case/app_use_case.dart';
import '../../external/colors/app_colors.dart';
import '../../external/constant/app_constant.dart';
import '../../external/libraries/libraries.dart';
import '../view_model/address_view_model.dart';

class AddressFormScreen extends StatefulWidget {
  final AddressEntity? addressEntity;

  const AddressFormScreen({super.key, this.addressEntity});

  @override
  State<AddressFormScreen> createState() => _AddressFormScreenState();
}

class _AddressFormScreenState extends State<AddressFormScreen> {
  AddressViewModel? _viewModel;
  final _kategori = TextEditingController();
  final _provinsi = TextEditingController();
  final _kecamatan = TextEditingController();
  final _kodePos = TextEditingController();
  final _rt = TextEditingController();
  final _rw = TextEditingController();
  final _negara = TextEditingController();
  final _kota = TextEditingController();
  final _kelurahan = TextEditingController();
  final _namaJalan = TextEditingController();
  final _telepon = TextEditingController();
  bool _isActive = true;

  @override
  void initState() {
    super.initState();
    _viewModel = AddressViewModel(
      useCase: GetIt.I.get<AppUseCase>(),
    );

    if (widget.addressEntity != null) {
      _kategori.text = widget.addressEntity!.kategori!;
      _provinsi.text = widget.addressEntity!.provinsi!;
      _kecamatan.text = widget.addressEntity!.kecamatan!;
      _kodePos.text = widget.addressEntity!.kodePos!;
      _rt.text = widget.addressEntity!.rt!;
      _rw.text = widget.addressEntity!.rw!;
      _negara.text = widget.addressEntity!.negara!;
      _kota.text = widget.addressEntity!.kota!;
      _kelurahan.text = widget.addressEntity!.kelurahan!;
      _namaJalan.text = widget.addressEntity!.namaJalan!;
      _telepon.text = widget.addressEntity!.telepon!;
      _isActive = widget.addressEntity!.isActive!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel!,
      child: Consumer<AddressViewModel>(builder: (_, __, ___) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Address Form"),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                TextField(
                  controller: _kategori,
                  decoration: const InputDecoration(label: Text("Kategori")),
                ),
                TextField(
                  controller: _negara,
                  decoration: const InputDecoration(label: Text("Negara")),
                ),
                TextField(
                  controller: _provinsi,
                  decoration: const InputDecoration(label: Text("Provinsi")),
                ),
                TextField(
                  controller: _kota,
                  decoration:
                      const InputDecoration(label: Text("Kota/Kabupaten")),
                ),
                TextField(
                  controller: _kecamatan,
                  decoration: const InputDecoration(label: Text("Kecamatan")),
                ),
                TextField(
                  controller: _kelurahan,
                  decoration: const InputDecoration(label: Text("Kelurahan")),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _rt,
                        decoration: const InputDecoration(label: Text("RT")),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: _rw,
                        decoration: const InputDecoration(label: Text("RW")),
                      ),
                    ),
                  ],
                ),
                TextField(
                  controller: _namaJalan,
                  decoration: const InputDecoration(label: Text("Nama Jalan")),
                ),
                TextField(
                  controller: _kodePos,
                  decoration: const InputDecoration(label: Text("Kode Pos")),
                ),
                TextField(
                  controller: _telepon,
                  decoration: const InputDecoration(
                    label: Text("Nomor Telepon"),
                  ),
                ),
                Row(children: [
                  const Expanded(child: Text("Aktif?")),
                  Switch(
                    value: _isActive,
                    onChanged: (value) {
                      setState(() {
                        _isActive = value;
                      });
                    },
                  ),
                ]),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => _save(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.purple1,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    height: 48,
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: const Text(
                      "SIMPAN",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
                Visibility(
                  visible: widget.addressEntity != null,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => _delete(),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.red1,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      height: 48,
                      alignment: Alignment.center,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      child: const Text(
                        "HAPUS",
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        );
      }),
    );
  }

  _save() async {
    final data = AddressEntity.fromJson({
      "kategori": _kategori.text,
      "provinsi": _provinsi.text,
      "kecamatan": _kecamatan.text,
      "kodePos": _kodePos.text,
      "rt": _rt.text,
      "rw": _rw.text,
      "negara": _negara.text,
      "kota": _kota.text,
      "kelurahan": _kelurahan.text,
      "namaJalan": _namaJalan.text,
      "telepon": _telepon.text,
      "isActive": _isActive,
    });

    final state = await _viewModel!.upsertAddress(data);

    state.when(
      success: () => Navigator.pop(context),
      clientError: () => _showMessage(AppConstant.clientError),
      serverError: () => _showMessage(AppConstant.serverError),
      networkError: () => _showMessage(AppConstant.networkError),
    );
  }

  _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 100),
      ),
    );
  }

  _delete() async {
    final state = await _viewModel!.deleteAddress(widget.addressEntity!);

    state.when(
      success: () => Navigator.pop(context),
      clientError: () => _showMessage(AppConstant.clientError),
      serverError: () => _showMessage(AppConstant.serverError),
      networkError: () => _showMessage(AppConstant.networkError),
    );
  }
}
