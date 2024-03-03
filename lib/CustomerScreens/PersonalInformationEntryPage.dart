import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomerScreens/ProfileCompletedScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';

class PersonalInformationEntryPage extends StatefulWidget {
  const PersonalInformationEntryPage({super.key});

  @override
  State<PersonalInformationEntryPage> createState() =>
      _PersonalInformationEntryPageState();
}

class _PersonalInformationEntryPageState
    extends State<PersonalInformationEntryPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  late DateTime? selectedDateTime;

  List<DropdownOptions> optionsList = [
    DropdownOptions("Selection", 0),
    DropdownOptions("Female", 1),
    DropdownOptions("Male", 1),
  ];

  late DropdownOptions? selectedDropdownOption;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedDateTime = DateTime.now();
    selectedDropdownOption = optionsList[0];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 90,
            ),
            Center(child: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.png"),
              radius: 100,
            )),
            SizedBox(height: 12,),
            Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit),
                Text("Upload Photo", style: titleTextStyle,),
              ],
            )),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Name",
              style: descriptionTextStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  label: const Text("Enter your full name"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: inactiveTFColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: activeTFColor, width: 3),
                  )),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Date of Birth",
              style: descriptionTextStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            Flexible(
              child: TextField(
                controller: dateController,
                decoration: InputDecoration(
                  label: const Text("Select Date"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: inactiveTFColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: activeTFColor, width: 3),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  selectedDateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1975),
                      lastDate: DateTime(2024));
                  // dateController.text = selectedDateTime.toString();
                  dateController.text = "${selectedDateTime!.day}-${selectedDateTime!.month}-${selectedDateTime!.year}"; // add the selected date to the dateController

                  //todo: implement

                  if(dateController.text != Null){

                  }else{

                  }

                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Gender",
              style: descriptionTextStyle,
            ),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<DropdownOptions>(
                  value: selectedDropdownOption,
                  items: optionsList.map((DropdownOptions option){
                    return DropdownMenuItem<DropdownOptions>(
                      value: option,
                      child: Text(option.optionName),);
                  }).toList(),
                  onChanged: (selectedOption){
                    selectedDropdownOption = selectedOption;
                    setState(() {

                    });
                  }),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: primaryButtonColor,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileCompletedScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Proceed",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class DropdownOptions{

  late String optionName;
  late int optionID;

  DropdownOptions(this.optionName, this.optionID);

}