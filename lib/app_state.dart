import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _runningSum = [];
  List<int> get runningSum => _runningSum;
  set runningSum(List<int> value) {
    _runningSum = value;
  }

  void addToRunningSum(int value) {
    runningSum.add(value);
  }

  void removeFromRunningSum(int value) {
    runningSum.remove(value);
  }

  void removeAtIndexFromRunningSum(int index) {
    runningSum.removeAt(index);
  }

  void updateRunningSumAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    runningSum[index] = updateFn(_runningSum[index]);
  }

  void insertAtIndexInRunningSum(int index, int value) {
    runningSum.insert(index, value);
  }

  int _i = 0;
  int get i => _i;
  set i(int value) {
    _i = value;
  }

  List<int> _sum = [];
  List<int> get sum => _sum;
  set sum(List<int> value) {
    _sum = value;
  }

  void addToSum(int value) {
    sum.add(value);
  }

  void removeFromSum(int value) {
    sum.remove(value);
  }

  void removeAtIndexFromSum(int index) {
    sum.removeAt(index);
  }

  void updateSumAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    sum[index] = updateFn(_sum[index]);
  }

  void insertAtIndexInSum(int index, int value) {
    sum.insert(index, value);
  }

  List<String> _inputNums = [];
  List<String> get inputNums => _inputNums;
  set inputNums(List<String> value) {
    _inputNums = value;
  }

  void addToInputNums(String value) {
    inputNums.add(value);
  }

  void removeFromInputNums(String value) {
    inputNums.remove(value);
  }

  void removeAtIndexFromInputNums(int index) {
    inputNums.removeAt(index);
  }

  void updateInputNumsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    inputNums[index] = updateFn(_inputNums[index]);
  }

  void insertAtIndexInInputNums(int index, String value) {
    inputNums.insert(index, value);
  }

  List<int> _convertStringstoInts = [];
  List<int> get convertStringstoInts => _convertStringstoInts;
  set convertStringstoInts(List<int> value) {
    _convertStringstoInts = value;
  }

  void addToConvertStringstoInts(int value) {
    convertStringstoInts.add(value);
  }

  void removeFromConvertStringstoInts(int value) {
    convertStringstoInts.remove(value);
  }

  void removeAtIndexFromConvertStringstoInts(int index) {
    convertStringstoInts.removeAt(index);
  }

  void updateConvertStringstoIntsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    convertStringstoInts[index] = updateFn(_convertStringstoInts[index]);
  }

  void insertAtIndexInConvertStringstoInts(int index, int value) {
    convertStringstoInts.insert(index, value);
  }

  int _sumOf = 0;
  int get sumOf => _sumOf;
  set sumOf(int value) {
    _sumOf = value;
  }
}
