import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/location/location_bloc.dart';
import '../../../domain/models/location_model/datum.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    refresh();
    super.initState();
  }

  Future<void> refresh() async {
    context.read<LocationBloc>().add(const LocationEvent.getData());
  }

  List<Datum>? data;
  List<Datum>? dataResult;
  String? searchValue;

  final TextEditingController _searchController = TextEditingController();

  void search(String text) {
    setState(() {
      searchValue = text;
      if (data != null && searchValue != null) {
        dataResult = data!
            .where(
              (element) =>
                  element.name!.toLowerCase().contains(
                    searchValue!.toLowerCase(),
                  ) ||
                  element.code!.toLowerCase().contains(
                    searchValue!.toLowerCase(),
                  ),
            )
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(
      //         Icons.arrow_back_ios_new_rounded,
      //         color: kWhite,
      //       )),
      //   backgroundColor: kPrimary,
      //   title: Text(
      //     "Asset",
      //     style: kJakartaRegular.copyWith(color: kWhite),
      //   ),
      //   centerTitle: true,
      // ),
      appBar: AppBarWithSearchSwitch(
        customTextEditingController: _searchController, // 🔹 pasang controller
        backgroundColor: kStroke,
        onClosed: () {
          setState(() {
            searchValue = null;
            dataResult = data;
          });

          _searchController.clear(); // 🔹 pastikan teks dihapus juga
        },
        onCleared: () {
          setState(() {
            searchValue = null;
            dataResult = data;
          });

          _searchController.clear(); // 🔹 pastikan teks dihapus juga
        },
        onChanged: (text) {
          search(text);
        }, // onSubmitted: (text) => searchText.value = text,
        appBarBuilder: (context) {
          return AppBar(
            backgroundColor: kPrimary,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite),
            ),
            centerTitle: true,
            title: Text(
              "Location",
              style: kJakartaRegular.copyWith(color: kWhite),
            ),
            actions: [
              IconButton(
                onPressed: AppBarWithSearchSwitch.of(context)?.startSearch,
                icon: Icon(Icons.search, color: kWhite),
              ),
              IconButton(
                icon: Icon(Icons.add, color: kWhite),
                onPressed: () {
                  context.pushNamed(RouteName.locationInputPage).then((value) {
                    print("POP INPUT = $value");
                    if (value == true) {
                      refresh();
                    }
                  });
                },
              ),
              // or
              // IconButton(onPressed: AppBarWithSearchSwitch.of(context)?startSearch, icon: Icon(Icons.search)),
            ],
          );
        },
      ),
      body: BlocConsumer<LocationBloc, LocationState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (errorMessage) {
              showAppDialog(
                context,
                type: DialogType.error,
                message: errorMessage,
              );
            },
            successWithData: (data) {
              this.data = data.result?.data;
              final List<Datum> tempData = List.from(this.data!);
              this.data = tempData;
              if (this.data != null && this.data!.isNotEmpty) {
                this.data!.sort((a, b) => b.id!.compareTo(a.id!));
              }
              dataResult = this.data;
            },
          );
        },
        builder: (context, state) {
          return state == const LocationState.loading()
              ? Center(child: CircularProgressIndicator(color: kPrimary))
              : dataResult == null || dataResult!.isEmpty
              ? Center(child: Text("Data is empty", style: kJakartaRegular))
              : RefreshIndicator(
                  onRefresh: refresh,
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 12,
                    ),
                    shrinkWrap: true,
                    itemCount: dataResult!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context
                              .pushNamed(
                                RouteName.locationDetailPage,
                                extra: data![index],
                              )
                              .then((value) {
                                print("POP DETAIL = $value");
                                if (value == true) {
                                  refresh();
                                }
                              });
                        },
                        child: Card(
                          color: kWhite,
                          margin: const EdgeInsets.only(bottom: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 149, 187, 252),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataResult![index].code!,
                                  style: kJakartaBold,
                                ),
                                const Divider(),
                                Text(
                                  dataResult![index].name!,
                                  style: kJakartaRegular,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
