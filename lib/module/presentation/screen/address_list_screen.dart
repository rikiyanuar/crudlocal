import 'package:crudlocal/module/domain/entity/address_entity.dart';
import 'package:flutter/material.dart';

import '../../domain/use_case/app_use_case.dart';
import '../../external/colors/app_colors.dart';
import '../../external/constant/app_constant.dart';
import '../../external/libraries/libraries.dart';
import '../view_model/address_view_model.dart';
import 'address_form_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  AddressViewModel? _viewModel;

  @override
  void initState() {
    _viewModel = AddressViewModel(
      useCase: GetIt.I.get<AppUseCase>(),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel!,
      child: Consumer<AddressViewModel>(
        builder: (_, __, ___) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Address List"),
              elevation: 0,
            ),
            body: _viewModel!.addressList == null ||
                    _viewModel!.addressList!.isEmpty
                ? _buildEmptyState()
                : _buildList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddressFormScreen(),
                  ),
                );
                _getData();
              },
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }

  RefreshIndicator _buildList() {
    return RefreshIndicator(
      onRefresh: () => _getData(),
      child: ListView.separated(
        itemBuilder: (context, index) {
          final data = _viewModel!.addressList![index];

          return ListTile(
            title: Text(
              _builderTitle(data),
              style: TextStyle(
                color: !data.isActive! ? AppColors.grey1 : AppColors.black,
              ),
            ),
            leading: Icon(
              Icons.circle,
              color: !data.isActive! ? Colors.red.shade800 : Colors.green,
            ),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddressFormScreen(addressEntity: data),
                ),
              );
              _getData();
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemCount: _viewModel!.addressList == null
            ? 0
            : _viewModel!.addressList!.length,
      ),
    );
  }

  _buildEmptyState() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      alignment: const Alignment(0, -0.3),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(
          Icons.list_alt_rounded,
          size: MediaQuery.of(context).size.width * 0.4,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 16),
        Text(
          "Data masih kosong. Tekan Tombol di bawah ini untuk menambahkan data",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
        )
      ]),
    );
  }

  _getData() async {
    final state = await _viewModel!.getAll();

    state.when(
      success: () {},
      clientError: () => _showMessage(
        AppConstant.clientError,
        () => _getData(),
      ),
      serverError: () => _showMessage(
        AppConstant.serverError,
        () => _getData(),
      ),
      networkError: () => _showMessage(
        AppConstant.networkError,
        () => _getData(),
      ),
    );
  }

  _showMessage(String message, Function() onTap) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 100),
        action: SnackBarAction(
          label: "Refresh",
          onPressed: onTap,
        ),
      ),
    );
  }

  _builderTitle(AddressEntity data) {
    String result = "";
    result += data.namaJalan ?? "";

    if (data.rt != null) {
      result += " RT ${data.rt}";
    }
    if (data.rw != null) {
      result += " RW ${data.rw}";
    }
    if (data.kelurahan != null) {
      result += ", ${data.kelurahan}";
    }
    if (data.kecamatan != null) {
      result += ", ${data.kecamatan}";
    }
    if (data.kota != null) {
      result += ", ${data.kota}";
    }
    if (data.provinsi != null) {
      result += ", ${data.provinsi}";
    }

    return result;
  }
}
