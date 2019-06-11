import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../models/models.dart';

@immutable
abstract class PageConfigurationBlocState extends Equatable {
  final PostConfiguration pageConfiguration;
  final List<PostFrontmatter> frontmatters;

  PageConfigurationBlocState(this.pageConfiguration, this.frontmatters,
      [List props = const []])
      : super(props);
}

class InitialPageConfigurationBlocState extends PageConfigurationBlocState {
  final PostConfiguration pageConfiguration;

  InitialPageConfigurationBlocState(this.pageConfiguration)
      : super(pageConfiguration, [], []);
}

class PageConfigurationBlocStateLoaded extends PageConfigurationBlocState {
  final PostConfiguration pageConfiguration;

  PageConfigurationBlocStateLoaded(this.pageConfiguration)
      : super(pageConfiguration, [], []);
}

class AllPageFrontmatterStateLoaded extends PageConfigurationBlocState {
  final List<PostFrontmatter> frontmatters;
  AllPageFrontmatterStateLoaded(
      PostConfiguration pageConfiguration, this.frontmatters)
      : super(pageConfiguration, frontmatters);
}
