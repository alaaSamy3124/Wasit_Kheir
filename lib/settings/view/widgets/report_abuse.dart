import 'package:flutter/material.dart';

class ReportAbuse extends StatefulWidget {
  const ReportAbuse({super.key});

  @override
  State<ReportAbuse> createState() => _ReportAbuseState();
}

class _ReportAbuseState extends State<ReportAbuse> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF000000)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Report Abuse",
          style: TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0XFFD9D9D9)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: const Icon(
                  Icons.emoji_flags_rounded,
                  size: 100,
                  color: Color(0xFFFF4C4F),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Report Abuse",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Color(0xFF000000),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Help us keep the community safe. Report any suspicious activity, fake reports, or harassment.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
                textAlign: TextAlign.start,
              ),

              const SizedBox(height: 40),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reason for Report",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                  ),

                  // //   ],
                  // // ),
                  const SizedBox(height: 5),

                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     contentPadding: EdgeInsets.symmetric(
                  //       horizontal: 12,
                  //       vertical: 10,
                  //     ),
                  //     hintText: "Fake / Spam report",
                  //     hintStyle: TextStyle(
                  //       color: Color(0xFF817878),
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w400,
                  //     ),

                  //     filled: true,
                  //     fillColor: const Color(0xFFFFFFFF),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //       borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //       borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                  //     ),
                  //   ),
                  // ),
                  DropdownButtonFormField<String>(
                    value: selectedValue,
                    iconSize: 40,

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(8),
                      // ),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                    hint: const Text("Fake / Spam report"),
                    items: const [
                      DropdownMenuItem(
                        value: "fake",
                        child: Text(
                          "Fake / Spam report",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF817878),
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Scam",
                        child: Text(
                          "Scam /Fraud",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF817878),
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "content",
                        child: Text(
                          "Inappropriate Content",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF817878),
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "other",
                        child: Text(
                          "Others",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF817878),
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                  ),

                  /// 🔥 يظهر بس لما تختاري Other
                  if (selectedValue == "other") ...[
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your reason for report...",
                        hintStyle: TextStyle(
                          color: Color(0xFF817878),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ],
              ),

              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                  ),

                  //   ],
                  // ),
                  const SizedBox(height: 5),

                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      hintText: "Describe the issue ",
                      hintStyle: TextStyle(
                        color: Color(0xFF817878),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),

                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                    maxLines: 4,
                  ),
                ],
              ),
              // const Spacer(),
              SizedBox(height: 60),

              SizedBox(
                width: double.infinity,
                height: 43,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF4C4F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit Report",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
