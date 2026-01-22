import 'package:flutter_riverpod/flutter_riverpod.dart';

final appNameProvider = Provider<String>((ref) => 'My RiverPod App');
final counterProvider = StateProvider<int>((ref) => 0);