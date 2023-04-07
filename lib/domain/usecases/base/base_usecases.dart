import 'package:flutter/foundation.dart';

import '../../../core/config/logging_config.dart';
import '../../../core/constants/ui/paging_constants.dart';
import '../../../core/mixin/log_mixin.dart';
import '../../entities/base/paged_list.dart';
import 'base_outputs.dart';
import 'base_params.dart';

abstract class BaseUseCase<Params extends BaseUsecaseParams, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Params params);
}

abstract class BaseSyncUseCase<Params extends BaseUsecaseParams, Output> extends BaseUseCase<Params, Output> {
  const BaseSyncUseCase();

  Output execute([Params params = const NoParam() as Params]) {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logDebug('SyncUseCase params: $params');
      }
      final output = buildUseCase(params);
      if (LogConfig.enableLogUseCaseOutput) {
        logDebug('SyncUseCase Output: $output');
      }

      return output;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logError('SyncUseCase Error: $e');
      }
      rethrow;
    }
  }
}

abstract class BaseFutureUseCase<Params extends BaseUsecaseParams, Output> extends BaseUseCase<Params, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute([Params params = const NoParam() as Params]) async {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logDebug('FutureUseCase params: $params');
      }
      final output = await buildUseCase(params);
      if (LogConfig.enableLogUseCaseOutput) {
        logDebug('FutureUseCase Output: $output');
      }

      return output;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logError('FutureUseCase Error: $e');
      }
      rethrow;
    }
  }
}

abstract class BaseLoadMoreUseCase<Params extends BaseUsecaseParams, Output>
    extends BaseUseCase<Params, Future<PagedList<Output>>> {
  BaseLoadMoreUseCase({
    this.initialPageSize = PagingConstants.defaultPageSize,
    this.initialPage = PagingConstants.initialPage,
  })  : _output = LoadMoreOutput<Output>(items: [], total: 0, page: initialPage, pageSize: initialPageSize),
        _oldOutput = LoadMoreOutput<Output>(items: [], total: 0, page: initialPage, pageSize: initialPageSize);

  final int initialPageSize;
  final int initialPage;

  LoadMoreOutput<Output> _output;
  LoadMoreOutput<Output> _oldOutput;

  int get page => _output.page;
  int get pageSize => _output.pageSize;

  Future<LoadMoreOutput<Output>> execute(Params params, bool isInitialLoad) async {
    try {
      if (isInitialLoad) {
        _output = LoadMoreOutput<Output>(items: <Output>[], page: initialPage, pageSize: initialPageSize);
      }
      if (LogConfig.enableLogUseCaseInput) {
        logDebug('LoadMoreUseCase Input: $params, page: $page, pageSize: $pageSize');
      }
      final pagedList = await buildUseCase(params);

      final newOutput = _oldOutput.copyWith(
        items: pagedList.items,
        page: isInitialLoad
            ? initialPage + (pagedList.items.isNotEmpty ? 1 : 0)
            : _oldOutput.page + (pagedList.items.isNotEmpty ? 1 : 0),
        pageSize:
            isInitialLoad ? (initialPageSize + pagedList.items.length) : _oldOutput.pageSize + pagedList.items.length,
        hasNext: pagedList.hasNext,
        isRefreshSuccess: isInitialLoad,
      );

      _output = newOutput;
      _oldOutput = newOutput;
      if (LogConfig.enableLogUseCaseOutput) {
        logDebug(
          'LoadMoreUseCase Output: pagedList: $pagedList, inputPage: $page, inputPageSize: $pageSize, newOutput: $newOutput',
        );
      }

      return newOutput;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logError('FutureUseCase Error: $e');
      }
      _output = _oldOutput;

      rethrow;
    }
  }
}
