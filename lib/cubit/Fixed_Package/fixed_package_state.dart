import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/fixed_package_models/data.dart';
import 'package:nowproject/Models/fixed_package_models/fixed_package_models.dart';
import 'package:nowproject/Models/fixed_package_models/selected_package.dart';

FixedPackageModel defaultfixedPackag = FixedPackageModel();

abstract class FixedPackageState extends Equatable {
  final FixedPackageModel fixedPackag;

  const FixedPackageState({required this.fixedPackag});

  @override
  List<Object?> get props => [fixedPackag];
}

class FixedPackageLoading extends FixedPackageState {
  FixedPackageLoading() : super(fixedPackag: defaultfixedPackag);
}

class FixedPackageInitial extends FixedPackageState {
  FixedPackageInitial() : super(fixedPackag: defaultfixedPackag);
}

class FixedPackageSuccess extends FixedPackageState {
  const FixedPackageSuccess({required FixedPackageModel fixedPackag})
      : super(
          fixedPackag: fixedPackag,
        );
}

class FixedPackageFailure extends FixedPackageState {
  final String error;

  FixedPackageFailure({required this.error})
      : super(
          fixedPackag: defaultfixedPackag,
        );

  @override
  List<Object?> get props => [error, fixedPackag];
}

class FixedPackageUpdate extends FixedPackageState {
  const FixedPackageUpdate({required FixedPackageModel fixedPackag})
      : super(
          fixedPackag: fixedPackag,
        );
}

class FixedPackageListUpdate extends FixedPackageState {
  final List<SelectedPackage> selectedPackages;

  FixedPackageListUpdate({required this.selectedPackages})
      : super(
          fixedPackag:
              FixedPackageModel(data: Data(selectedPackages: selectedPackages)),
        );

  @override
  List<Object?> get props => [selectedPackages, fixedPackag];
}
