import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/viewModel/upload_view_model.dart';
import 'package:provider/provider.dart';

class TestPage extends BaseStatefulWidget {
  const TestPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _TestState();
}

class _TestState extends BaseState<TestPage> {
  late final UploadViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = UploadViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _viewModel,
      child: Consumer<UploadViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(title: const Text("上传下载")),
            body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.saveImage();
                    },
                    child: const Text("下载"),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.pickFromGallery();
                    },
                    child: const Text("上传"),
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: viewModel.images.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      final item = viewModel.images[index];
                      return InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: item.aid.isNotEmpty
                              ? CachedNetworkImage(
                                  imageUrl: item.origUrl,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                  memCacheWidth: 200,
                                  memCacheHeight: 250,
                                )
                              : Image.file(
                                  File(item.path),
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
