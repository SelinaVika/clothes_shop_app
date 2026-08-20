import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool _isExpanded = false;

  void _toggleText() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        Text(
          'В 1998 или январе 1999 года он стал работать в "Красти Крабе" вместе с Джимом. В тот день, когда Джим уволился, Сквидвард заговорил с ним и мгновенно потерял свои длинные светлые волосы, к его большому огорчению[4]. Некоторое время спустя он работал с поваром, чьё имя ещё не раскрыто. Однажды Сквидвард работал в саду, когда внезапно на него упал ананас с лодки и разрушил его сад, раздавив его. Губка по имени Губка Боб Квадратные Штаны затем переехал в ананас и Сквидвард был сварливым с тех пор[5].В какой-то момент он попытался переехать из своего дома из-за ненависти к своим соседям, но агент по недвижимости отказалась продавать его дом из-за Губки Боба и Патрика, которые притворялись Сквидвардом и обманули её[6].В какой-то момент он переехал из Бикини Боттом в Заповедник "Щупальца", город, наполненный ему подобными жителями, другими осьминогами, которые разделяют его вкусы и взгляды на жизнь. Здесь он был вынужден столкнуться с тем, насколько скучным и монотонным является его желанный образ жизни, и начал скучать по Губке Бобу и Патрику. Он смог в конечном счете освободиться от его связей с небольшим количеством вдохновенной глупости[7].В эпизоде "Морской Супермен и Очкарик 5" подразумевается, что у Сквидварда когда-то была вторая девушка, когда он вспомнил хорошие времена, которые у него были на Рифе Любви.',
          maxLines: _isExpanded ? null : 4,
          overflow: TextOverflow.fade,
        ),
        GestureDetector(
          onTap: _toggleText,

          child: Text(
            _isExpanded ? 'Свернуть' : 'Читать дальше',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 201, 85, 39),
            ),
          ),
        ),
      ],
    );
  }
}
