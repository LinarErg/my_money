import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            children: const [DateTimeGetWidget()],
          ),
          Row(
            children: const [DifferenceInIncomeExpensesWidget()],
          ),
          Row(
            children: const [IncomeInfoWidget(), SpentInfoWidget()],
          ),
        ],
      ),
    );
  }
}

class SpentInfoWidget extends StatelessWidget {
  const SpentInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('Здесь будет колонка расход')],
    );
  }
}

class IncomeInfoWidget extends StatelessWidget {
  const IncomeInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('Здесь будет колонка доход')],
    );
  }
}

class DifferenceInIncomeExpensesWidget extends StatelessWidget {
  const DifferenceInIncomeExpensesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Здесь будет разность доход расход'),
    );
  }
}

class DateTimeGetWidget extends StatelessWidget {
  const DateTimeGetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Здесь будет ввод даты'),
    );
  }
}
