import 'package:core_model/feed.dart';
import 'package:core_network/news.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) => NewsRepository(
      remoteDataSource: ref.watch(newsRemoteDataSourceProvider),
    );

/// ニュースのリポジトリ
class NewsRepository {
  NewsRepository({
    required NewsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final NewsRemoteDataSource _remoteDataSource;

  Stream<List<NewsFeed>> stream() => _remoteDataSource
      .newsListStream()
      .map((list) => list.map((e) => e.toNewsFeed()).toList());

  Future<List<NewsFeed>> getAll() async =>
      (await _remoteDataSource.getNewsList())
          .map((e) => e.toNewsFeed())
          .toList();
}

extension on NetworkNews {
  NewsFeed toNewsFeed() => NewsFeed(
        slug: slug,
        title: title,
        publishedAt: publishedAt,
        excerpt: excerpt,
        coverImageUrl: coverImageUrl,
      );
}
