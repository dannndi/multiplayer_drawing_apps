import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/core/bloc/status/bloc_status.dart';
import 'package:flutter_skeleton/core/bloc/user_cubit/user_cubit.dart';
import 'package:flutter_skeleton/core/component/dialog/show_loading_dialog.dart';
import 'package:flutter_skeleton/core/component/snackbar/info_snackbar.dart';
import 'package:flutter_skeleton/core/route/app_route_name.dart';
import 'package:flutter_skeleton/core/theme/app_color.dart';
import 'package:flutter_skeleton/feature/room/presentation/cubit/room_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoomCubit(repo: GetIt.I.get())..getRooms(),
      child: const RoomLayout(),
    );
  }
}

class RoomLayout extends StatefulWidget {
  const RoomLayout({super.key});

  @override
  State<RoomLayout> createState() => _RoomLayoutState();
}

class _RoomLayoutState extends State<RoomLayout> {
  final refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: false,
        title: Text(
          "Available Room",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColor.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<RoomCubit>().createRoom();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocConsumer<RoomCubit, RoomState>(
        listener: (context, state) async {
          if (state.status == BlocStatus.success) {
            if (refreshController.isLoading) {
              refreshController.loadComplete();
            }

            if (refreshController.isRefresh) {
              refreshController.refreshCompleted();
            }
          }

          if (state.createStatus == BlocStatus.loading) {
            showLoadingDialog(context);
          }

          if (state.createStatus == BlocStatus.success) {
            Navigator.pop(context);
          }

          if (state.createStatus == BlocStatus.error) {
            Navigator.pop(context);
            showInfoSnackBar(
              context,
              "Something wrong, when creating the Room",
            );
          }

          if (state.joinStatus == BlocStatus.loading) {
            showLoadingDialog(context);
          }

          if (state.joinStatus == BlocStatus.success) {
            Navigator.pop(context);
            await Navigator.pushNamed(
              context,
              AppRouteName.drawingRoom,
              arguments: state.roomId,
            );

            await Future.delayed(const Duration(seconds: 1));
            if (!mounted) return;
            context.read<RoomCubit>().getRooms();
            return;
          }

          if (state.joinStatus == BlocStatus.error) {
            Navigator.pop(context);
            showInfoSnackBar(
              context,
              state.errorMessage ?? "Something wrong, when creating the Room",
            );
          }
        },
        builder: (context, state) {
          if (state.status == BlocStatus.initial ||
              state.status == BlocStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.status == BlocStatus.error) {
            return SmartRefresher(
              controller: refreshController,
              enablePullDown: true,
              enablePullUp: false,
              onRefresh: context.read<RoomCubit>().getRooms,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                    ),
                    const Text(
                      "Something Wrong please try again !",
                    ),
                  ],
                ),
              ),
            );
          }

          if (state.status == BlocStatus.success && state.rooms.isEmpty) {
            return SmartRefresher(
              controller: refreshController,
              enablePullDown: true,
              enablePullUp: false,
              onRefresh: context.read<RoomCubit>().getRooms,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                    ),
                    const Text(
                      "There are no Avaiable Room, try to create one.",
                    ),
                  ],
                ),
              ),
            );
          }

          return SmartRefresher(
            controller: refreshController,
            enablePullDown: true,
            enablePullUp: false,
            onRefresh: context.read<RoomCubit>().getRooms,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              itemCount: state.rooms.length,
              separatorBuilder: (_, __) {
                return const SizedBox(height: 12);
              },
              itemBuilder: (context, index) {
                final room = state.rooms[index];

                return InkWell(
                  onTap: () {
                    final username = context.read<UserCubit>().state.username;
                    context.read<RoomCubit>().joinRoom(room.id ?? "", username);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Room ID : ${room.id?.split("-")[0] ?? "-"}",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "${room.id}",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
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
