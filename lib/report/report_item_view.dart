import 'package:flutter/material.dart';

class ReportItemView extends StatefulWidget {
  @override
  State<ReportItemView> createState() => _ReportItemViewState();
}

class _ReportItemViewState extends State<ReportItemView> {
  bool? isLost; // true = Lost , false = Found
  bool? isItemSelected; // true = Item , false = People

  final _formKey = GlobalKey<FormState>();
  DateTime? selectedDate;

  String? selectedItemType;
  String? selectedPeopleType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
            color: Color(0xFF000000),
          ),
        ),

        title: Text(
          "Report Item",
          style: TextStyle(
            fontFamily: 'AbhayaLibre',

            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildLostFoundToggle(),

              if (isLost != null) ...[
                const SizedBox(height: 20),
                _buildItemPeopleToggle(),
              ],

              if (isLost != null && isItemSelected != null) ...[
                const SizedBox(height: 25),
                _buildForm(),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLostFoundToggle() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isLost = true;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: isLost == true ? Color(0xFFFF393C) : Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "I lost item",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isLost = false; // أو false
                isItemSelected = null; // مهم جدًا
              });
            },

            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: isLost == false ? Color(0xFF57C05C) : Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "I found item",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  //==========================
  // Item / People Toggle
  //==========================
  Widget _buildItemPeopleToggle() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isItemSelected = true;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: isItemSelected == true
                    ? Color(0xFF097CCD)
                    : Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Item",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    // color: isItemSelected == true ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isItemSelected = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: isItemSelected == false
                    ? Color(0xFF097CCD)
                    : Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "People",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    // color: isItemSelected == false
                    //     ? Colors.white
                    //     : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // 👈 عشان يخلي كل حاجة شمال
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 8.0),
        //   child: Text(
        //     "Item Type",
        //     style: TextStyle(
        //       fontWeight: FontWeight.w400,
        //       fontSize: 25,
        //       color: Color(0xFF000000),
        //     ),
        //   ),
        // ),

        /// 🔄 أول Dropdown بيتغير حسب الاختيار
        if (isItemSelected == true)
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // 👈 عشان يخلي كل حاجة شمال

            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Item Type",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: "Select item type",
                  hintStyle: TextStyle(color: Color(0xFF000000)),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // 👈 radius = 10
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFF817878)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFF817878)),
                  ),
                ),
                value: selectedItemType,
                dropdownColor: Color(0xFFFFFFFF),
                iconEnabledColor: Color(0xFF000000),
                iconSize: 35, // 👈 لون السهم
                style: const TextStyle(
                  color: Color(0xFF000000), // 👈 لون النص المختار
                ),
                items:
                    [
                          "Vehicles",
                          "Pets",
                          "smarts",
                          "Personal Accessories",
                          "Bags",
                          "Valuable items",
                          "Medical Devices",
                          "golds",
                        ]
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',

                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedItemType = value;
                  });
                },
              ),
            ],
          )
        else
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: "People",
              hintStyle: TextStyle(color: Color(0xFF000000)),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // 👈 radius = 10
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF817878)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFF817878)),
              ),
            ),
            dropdownColor: Color(0xFFFFFFFF),
            iconEnabledColor: Color(0xFF000000),
            iconSize: 35, // 👈 لون السهم
            style: const TextStyle(color: Color(0xFF000000)), //
            items: ["Child", "People with special needs"]
                .map(
                  (person) => DropdownMenuItem(
                    value: person,
                    child: Text(
                      person,
                      style: TextStyle(
                        fontFamily: 'AbhayaLibre',

                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedPeopleType = value;
              });
            },
          ),

        const SizedBox(height: 20),

        /// 📝 Description
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Description",
            style: TextStyle(
              fontFamily: 'AbhayaLibre',

              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Color(0xFF000000),
            ),
          ),
        ),

        TextFormField(
          maxLines: 4,
          decoration: const InputDecoration(
            hintText: "Describe the item in detail ....",
            hintStyle: TextStyle(color: Color(0xFF817878)),

            border: OutlineInputBorder(),
          ),
          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return "Please enter description";
          //   }
          //   return null;
          // },
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "*Include unique identifiers to help verify the owner",
            style: TextStyle(
              fontFamily: 'AbhayaLibre',

              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xFF817878),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "DATE Found",
            style: TextStyle(
              fontFamily: 'AbhayaLibre',

              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Color(0xFF000000),
            ),
          ),
        ),

        /// 📅 Date
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: "dd/mm/yyyy",
            suffixIcon: const Icon(Icons.calendar_month_outlined),
            prefixIcon: Icon(Icons.calendar_today_outlined),
            filled: true,
            fillColor: Color(0xFFFFFFFF),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
          ),
          onTap: () async {
            DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
            );

            if (picked != null) {
              setState(() {
                selectedDate = picked;
              });
            }
          },
        ),

        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Location",
            style: TextStyle(
              fontFamily: 'AbhayaLibre',

              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Color(0xFF000000),
            ),
          ),
        ),

        /// 📍 Location
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.calendar_today_outlined,
              color: Color(0xFF817878),
            ),
            hintText: isLost == true
                ? "Where did you lose it?"
                : "Where did you find it?",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // 👈 radius = 10
            ),
          ),
        ),
        SizedBox(height: 10),

        Text(
          "Put location on map",
          style: TextStyle(
            fontFamily: 'AbhayaLibre',

            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),

        const SizedBox(height: 10),

        GestureDetector(
          onTap: () {
            // هنا هتحطي التنقل لصفحة الماب بعدين
          },
          child: Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFC9DDFF), // لون الخلفية الأزرق الفاتح
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,

                  size: 50,
                  color: isLost == true
                      ? Color(0xFFFF4646)
                      : Color(0xFF57C05C), // 👈 هنا السحر
                ),

                const SizedBox(height: 10),

                const Text(
                  "Tap to select location",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    color: Color(0xFF817878),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),

        Text(
          "Add Photes",
          style: TextStyle(
            fontFamily: 'AbhayaLibre',

            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Color(0xFF12395E),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            // هنا بعدين هنضيف image picker
          },
          child: Container(
            height: 125,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0XFF817878)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.file_upload_outlined,
                  size: 35,
                  color: Color(0xFF817878),
                ),

                SizedBox(height: 8),

                Text(
                  "Click to upload photos",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF817878),
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  "PNG, JPG up to 10MB",
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',

                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF817878),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),

        /// 🔘 Submit Button
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1E73B9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print("Form Submitted");
              }
            },
            child: Text(
              "Submit Report",
              style: TextStyle(
                fontFamily: 'AbhayaLibre',

                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
