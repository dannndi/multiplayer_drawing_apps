import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/core/theme/app_color.dart';
import 'package:flutter_skeleton/feature/draw/model/game_room.dart';
import 'package:flutter_skeleton/feature/draw/presentation/cubit/drawing_cubit.dart';

class RankDrawerWidget extends StatelessWidget {
  const RankDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawingCubit, DrawingState>(
      builder: (context, state) {
        final orderedList =
            List.of(state.gameRoom?.connectedClients ?? <GamePlayer>[])
              ..sort(
                (a, b) {
                  return b.score?.compareTo(a.score ?? 0) ?? 0;
                },
              );
        return Drawer(
          backgroundColor: AppColor.primaryColor,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 32,
              left: 24,
              right: 24,
              bottom: 32,
            ),
            child: Column(
              children: [
                Text(
                  "Ranking",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColor.white),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: orderedList.length,
                    itemBuilder: (context, index) {
                      final player = orderedList[index];
                      return Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          border: Border.all(),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              player.username ?? "-",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Score : ${player.score ?? 0}",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
