import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('アカウント'),
        ),
        body: SafeArea(
            child: ListView(children: [
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 146,
                  height: 146,
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "assets/img/smile-dollar.png",
                    width: 146,
                    height: 146,
                    fit: BoxFit.cover,
                    // color: const Color(0xFF1936C7),
                  ),
                ),
              ),
              Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 160),
                  child: SizedBox(
                    width: 72,
                    height: 28,
                    child: OutlinedButton(
                      onPressed: () {
                        /*TODO*/
                      },
                      style: OutlinedButton.styleFrom(
                        onSurface: const Color(0xFFA0A0A0),
                        backgroundColor: const Color(0xFFF9F9F9),
                        shape: const StadiumBorder(),
                        side: const BorderSide(
                          color: Color(0xFFECECED),
                        ),
                      ),
                      child: const Text(
                        "編集",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "金賀好男",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  // child: nameAsyncValue.when(
                  //   data: (data) => Text(
                  //     data.name.toString(),
                  //     style: const TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 24,
                  //     ),
                  //   ),
                  //   error: (e, _) => Text(
                  //     e.toString(),
                  //   ),
                  //   loading: () => const CircularProgressIndicator(),
                  // ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    children: [
                      myInfoContent("顧客ID", "hogehoge"),
                      const Divider(
                        height: 0.5,
                        color: Color(0xFFCCCCCC),
                      ),
                      myInfoContent("所持ポイント", "${"○○○"} P"),
                      const Divider(
                        height: 0.5,
                        color: Color(0xFFCCCCCC),
                      ),
                      myInfoContent("所持クーポン", "${"○○○"} 個"),
                      const Divider(
                        height: 0.5,
                        color: Color(0xFFCCCCCC),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[_formatUserInfo()],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 72,
                    height: 28,
                    child: OutlinedButton(
                      onPressed: () {
                        /*TODO*/
                      },
                      style: OutlinedButton.styleFrom(
                        onSurface: const Color(0xFFA0A0A0),
                        backgroundColor: const Color(0xFFF9F9F9),
                        shape: const StadiumBorder(),
                        side: const BorderSide(
                          color: Color(0xFFECECED),
                        ),
                      ),
                      child: const Text(
                        "編集",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ])
            ],
          )
        ])));
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text('アカウント'),
    //   ),
    //   body: const Center(child: Text('アカウント画面', style: TextStyle(fontSize: 32.0))),
    // );
  }

  Widget myInfoContent(String title, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _formatUserInfo() {
    return Container(
      child: Column(
        children: [
          myInfoContent("住所", "福岡県北九州市小倉南区志井○○-○○-○○○"),
          const Divider(
            height: 0.5,
            color: Color(0xFFCCCCCC),
          ),
          myInfoContent("メールアドレス", "hogehoge@gmail.com"),
          const Divider(
            height: 0.5,
            color: Color(0xFFCCCCCC),
          ),
        ],
      ),
    );
  }
}
