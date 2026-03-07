import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kairohpter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: '개인정보 처리방침'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title, style: TextStyle(fontWeight: FontWeight.w900))
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 1000,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: privacyPolicy.map((item) => paragraph(item)).toList()
          ),
        ),
      ),
    );
  }

  Column paragraph(List<String> block) {
    double fs;
    block[0].isNotEmpty ? fs = 18 : fs = 16;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          block[1],
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: fs),
        ),
        Divider(thickness: block[0].isNotEmpty ? 3 : 1),
        block[0] == 'titleOnly' ? SizedBox() : Text(block[2]),
        block[0] == 'tApp' ? SizedBox(height: 6) : SizedBox(),
        block[0] == 'titleOnly' ? SizedBox(height: 6) : SizedBox(height: 16),
      ],
    );
  }

  List<List<String>> privacyPolicy = [
    [
      'tApp',
      '1. 개인정보 처리방침이란?',
      'Kairohpter(이하 “개발자”)는 이용자의 동의를 기반으로 개인정보를 수집, 이용 및 제공하고 있으며, '
          '이용자의 권리 (개인정보 자기결정권)를 적극 보장합니다. '
          '개발자는 정보통신 서비스 제공자가 준수하여야 하는 대한민국의 관계 법령 및 개인정보 보호 규정, 가이드라인을 준수하고 있습니다. '
          '“개인정보 처리방침”이란 이용자의 소중한 개인정보를 보호함으로써 이용자가 안심하고 서비스를 이용할 수 있도록 개발자가 준수해야 할 지침을 의미합니다. '
          '본 개인정보 처리방침은 개발자가 제공하는 앱에 적용됩니다.',
    ],
    [
      't',
      '2. 개인정보 수집',
      '서비스 제공 및 신규 서비스 개발을 위해 개인정보를 수집할 수 있습니다.',
    ],
    [
      '',
      '개인정보 수집 방법',
      '개인정보를 수집하는 경우에는 반드시 사전에 이용자에게 해당 사실을 알리고 동의를 구할 것이며, 아래와 같은 방법을 통해 개인정보를 수집합니다.'
          '\n•	회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경우',
    ],
    [
      '',
      '서비스 이용 과정에서 이용자로부터 수집하는 개인정보',
      '단말기 정보 (OS, 화면 크기, 기종, 기기ID), IP주소, 서비스 이용 기록 등의 정보가 자동으로 생성되어 수집될 수 있습니다.',
    ],
    ['t', '3. 개인정보 이용', '서비스 제공 및 개선, 신규 서비스 개발을 위해 이용합니다.'],
    [
      't',
      '4. 개인정보 제공',
      '본 개발자는 이용자의 별도 동의가 있는 경우나 법령에 규정된 경우를 제외하고는 이용자의 개인정보를 제3자에게 제공하지 않습니다.',
    ],
    [
      't',
      '5. 개인정보 파기',
      '개인정보는 수집 및 이용목적이 달성되면 지체 없이 파기합니다. '
          '전자적 파일 형태인 경우 복구 및 재생되지 않도록 안전하게 삭제하고, 그 밖에 기록물, 인쇄물, 서면 등의 경우 분쇄하거나 소각하여 파기합니다.',
    ],
    ['titleOnly', '6. 기타', ''],
    [
      '',
      '개인정보 보호책임자',
      '•	책임자: 신한이\n'
          '•	문의: zmnhaeae2@gmail.com',
    ],
    [
      '',
      '개인정보 처리방침이 변경되는 경우',
      '법률이나 서비스의 변경사항을 반영하기 위한 목적 등으로 개인정보 처리방침을 수정할 수 있습니다. '
          '개인정보 처리방침이 변경되는 경우 본 개발자는 변경 사항을 게시하며, 변경된 개인정보 처리방침은 게시한 날로부터 7일 후부터 효력이 발생합니다. '
          '다만, 수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 이용자 권리의 중대한 변경이 발생할 때에는 최소 30일 전에 미리 알려드리겠습니다.'
          '\n•	공고일자: 2026년 3월 7일'
          '\n•	시행일자: 2026년 3월 7일',
    ],
  ];
}

///flutter build web
///cd build/web
///git init
///git add .
///git commit -m "수정"
///git push --force https://github.com/Kairohpter/Kairohpter.github.io.git HEAD:main