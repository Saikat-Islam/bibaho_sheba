import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/user_info/controllers.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserInfoSubmit extends StatefulWidget {
  const UserInfoSubmit({super.key});

  @override
  State<UserInfoSubmit> createState() => _UserInfoSubmitState();
}

class _UserInfoSubmitState extends State<UserInfoSubmit> {
  var _tabTextIndexSelected = 0;
  var _createdByIndexSelected = 0;
  var _maritalStatusSelectedIndex = 0;
  double currentHeight = 5.8;
  String selected = "Muslim";

  void setSelected(String value) {
    setState(() {
      selected = value;
    });
  }

  String distSelectDefault = "Dhaka";
  void distSelected(String value) {
    setState(() {
      distSelectDefault = value;
    });
  }

  String defaultaAge = "20 Years";
  void ageSelected(String value) {
    setState(() {
      defaultaAge = value;
    });
  }

  String defaultProfessions = "Engineer";
  void professionSelected(String value) {
    setState(() {
      defaultProfessions = value;
    });
  }

  String defaultSalary = "300K - 500K";
  void salarySelected(String value) {
    setState(() {
      defaultSalary = value;
    });
  }

  final List<String> annualIncomeList = [
    '100K - 300K',
    '300K - 500K',
    '500K - 700K',
    '700K - 900K',
    'Above 1M',
  ];

  String defaultEducation = "SSC";
  void educationalQualificationSelected(String value) {
    setState(() {
      defaultEducation = value;
    });
  }

  final List<String> educationalQualificationList = [
    'SSC',
    'HSC',
    'Dakhil',
    'BBA',
    'BSc',
    'BA',
    'MBA',
    "MSc",
    'LLB',
    'Others'
  ];

  final List<String> professions = [
    'Doctor',
    'Teacher',
    'Engineer',
    'Nurse',
    'Driver',
    'Farmer',
    'Care Giver',
  ];
  final List<String> ages = [
    '18 Years',
    '19 Years',
    '20 Years',
    '21 Years',
    '22 Years',
    '23 Years',
    '24 Years',
    '25 Years',
    '26 Years',
    '27 Years',
    '28 Years',
    '29 Years',
    '30 Years',
    '31 Years',
    '32 Years',
    '33 Years',
    '34 Years',
    '35 Years',
    '36 Years',
    '37 Years',
    '38 Years',
    '39 Years',
    '40 Years',
    '41 Years',
    '42 Years',
    '43 Years',
    '44 Years',
    '45 Years',
    '46 Years',
    '47 Years',
    '48 Years',
    '49 Years',
    '50 Years',
  ];
  final List<String> religions = ["Muslim", "Hindu", "Buddha", "Christian"];
  final List<String> districts = [
    "Barguna",
    "Barishal",
    "Bhola",
    "Jhalokati",
    "Patuakhali",
    "Pirojpur",
    "Bandarban",
    "Brahmanbaria",
    "Chandpur",
    "Chittagong",
    "Comilla",
    "Cox's Bazar",
    "Feni",
    "Khagrachhari",
    "Lakshmipur",
    "Noakhali",
    "Rangamati",
    "Dhaka",
    "Faridpur",
    "Gazipur",
    "Gopalganj",
    "Kishoreganj",
    "Manikganj",
    "Munshiganj",
    "Narsingdi",
    "Narayanganj",
    "Shariatpur",
    "Rajbari",
    "Tangail",
    "Bagerhat",
    "Jashore",
    "Chuadanga",
    "Khulna",
    "Kushtia",
    "Jhenaidah",
    "Meherpur",
    "Magura",
    "Narail",
    "Satkhira",
    "Jamalpur",
    "Mymensingh",
    'Netrokona',
    'Sherpur',
    "Bogura",
    "Joypurhat",
    "Naogaon",
    "Natore",
    "Chapai Nawabganj",
    "Dinajpur",
    "Pabna",
    "Rajshahi",
    "Sirajganj",
    "Gaibandha",
    "Kurigram",
    "Lalmonirhat",
    "Nilphamari",
    "Panchagarh",
    "Rangpur",
    "Thakurgaon",
    "Habiganj",
    "Moulvibazar",
    "Sunamganj",
    "Sylhet"
  ];
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        centerTitle: true,
        title: Text(
          'Bibaho Matches',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Find Your Suitable Match',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 10),

              //Gender Selection

              //Profile creadted by section
              Text(
                "Profile created by",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 10,
              ),

              FlutterToggleTab(
                selectedBackgroundColors: [AppColors.secondaryColor],
                width: AppSizes.width / 3,
                borderRadius: 10,
                selectedIndex: _createdByIndexSelected,
                selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                labels: <String>[
                  'Self',
                  'Parent',
                  'Sibling',
                  'Relative',
                  'Friend'
                ],
                // icons: [
                //   Icons.male,
                //   Icons.female,
                //   Icons.male,
                //   Icons.female,
                //   Icons.male
                // ],
                selectedLabelIndex: (index) {
                  setState(() {
                    _createdByIndexSelected = index;
                    print(_createdByIndexSelected);
                  });
                },
                marginSelected:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                "Gender",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Gender of the bride / groom",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 16),
              ),
              FlutterToggleTab(
                selectedBackgroundColors: [AppColors.secondaryColor],
                width: AppSizes.width / 4,
                borderRadius: 10,
                selectedIndex: _tabTextIndexSelected,
                selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                labels: <String>['Male', 'Female'],
                icons: [Icons.male, Icons.female],
                selectedLabelIndex: (index) {
                  setState(() {
                    _tabTextIndexSelected = index;
                    print(_tabTextIndexSelected);
                  });
                },
                marginSelected:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              ),
              SizedBox(
                height: 20,
              ),

              //Height Selection
              Text(
                "Your Height: ${currentHeight.toStringAsFixed(1).toString()} ft.",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Slider(
                  activeColor: AppColors.secondaryColor,
                  inactiveColor: Colors.grey[300],
                  overlayColor: WidgetStatePropertyAll(Colors.amberAccent[300]),
                  value: currentHeight,
                  min: 4.0,
                  max: 7.0,
                  divisions: 30,
                  label: currentHeight.toStringAsFixed(1).toString(),
                  onChanged: (double value) {
                    setState(() {
                      currentHeight = value;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Enter the name of the bride / groom",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(fontSize: 16),
                  ),
                  Icon(
                    Icons.star,
                    size: 10,
                  )
                ],
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'Age',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(80, 140, 137, 137)),
                              borderRadius: BorderRadius.circular(5)),
                          child: DropdownButton<String>(
                            menuMaxHeight: AppSizes.height / 4,
                            menuWidth: AppSizes.width,
                            alignment: Alignment.center,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.primaryColor,
                            ),
                            underline: const SizedBox(),
                            hint: Text(
                              'Age',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            onChanged: (newValue) {
                              ageSelected(newValue!);
                            },
                            value: defaultaAge,
                            items: ages.map((selectedType) {
                              return DropdownMenuItem(
                                alignment: Alignment.center,
                                value: selectedType,
                                child: Text(
                                  selectedType,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          width: AppSizes.width / 20,
                        ),
                        Text(
                          'Religion',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(80, 140, 137, 137)),
                              borderRadius: BorderRadius.circular(5)),
                          child: DropdownButton<String>(
                            menuMaxHeight: AppSizes.height / 4,
                            menuWidth: AppSizes.width,
                            alignment: Alignment.topRight,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.primaryColor,
                            ),
                            underline: const SizedBox(),
                            hint: Text(
                              'Muslim',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            onChanged: (newValue) {
                              setSelected(newValue!);
                            },
                            value: selected,
                            items: religions.map((selectedType) {
                              return DropdownMenuItem(
                                alignment: Alignment.center,
                                value: selectedType,
                                child: Text(
                                  selectedType,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              //Choose your present address

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Present District',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      )
                    ],
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: AppSizes.width * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(80, 140, 137, 137)),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton<String>(
                      menuMaxHeight: AppSizes.height / 4,
                      menuWidth: AppSizes.width,
                      alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.primaryColor,
                      ),
                      underline: const SizedBox(),
                      hint: Text(
                        'Dhaka',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      onChanged: (newValue) {
                        distSelected(newValue!);
                      },
                      value: distSelectDefault,
                      items: districts.map((selectedType) {
                        return DropdownMenuItem(
                          alignment: Alignment.center,
                          value: selectedType,
                          child: Text(
                            selectedType,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              //Select Your District

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Home District',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      )
                    ],
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: AppSizes.width * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(80, 140, 137, 137)),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton<String>(
                      menuMaxHeight: AppSizes.height / 4,
                      menuWidth: AppSizes.width,
                      alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.primaryColor,
                      ),
                      underline: const SizedBox(),
                      hint: Text(
                        'Dhaka',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      onChanged: (newValue) {
                        distSelected(newValue!);
                      },
                      value: distSelectDefault,
                      items: districts.map((selectedType) {
                        return DropdownMenuItem(
                          alignment: Alignment.center,
                          value: selectedType,
                          child: Text(
                            selectedType,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //Select Age
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Profession',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: AppSizes.width * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(80, 140, 137, 137)),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton<String>(
                      menuMaxHeight: AppSizes.height / 4,
                      menuWidth: AppSizes.width,
                      alignment: Alignment.center,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.primaryColor,
                      ),
                      underline: const SizedBox(),
                      hint: Text(
                        'Profession',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      onChanged: (newValue) {
                        professionSelected(newValue!);
                      },
                      value: defaultProfessions,
                      items: professions.map((selectedType) {
                        return DropdownMenuItem(
                          alignment: Alignment.center,
                          value: selectedType,
                          child: Text(
                            selectedType,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              //Annual Income
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Monthly Income',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: AppSizes.width * 0.5,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(80, 140, 137, 137)),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton<String>(
                      menuMaxHeight: AppSizes.height / 4,
                      menuWidth: AppSizes.width,
                      alignment: Alignment.center,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.primaryColor,
                      ),
                      underline: const SizedBox(),
                      hint: Text(
                        '300K - 500K',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      onChanged: (newValue) {
                        salarySelected(newValue!);
                      },
                      value: defaultSalary,
                      items: annualIncomeList.map((selectedType) {
                        return DropdownMenuItem(
                          alignment: Alignment.center,
                          value: selectedType,
                          child: Text(
                            selectedType,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Educational Qualification',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: AppSizes.width / 3.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(80, 140, 137, 137)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DropdownButton<String>(
                        menuMaxHeight: AppSizes.height / 4,
                        menuWidth: AppSizes.width,
                        alignment: Alignment.center,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.primaryColor,
                        ),
                        underline: const SizedBox(),
                        hint: Text(
                          'BSc',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        onChanged: (newValue) {
                          educationalQualificationSelected(newValue!);
                        },
                        value: defaultEducation,
                        items: educationalQualificationList.map((selectedType) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: selectedType,
                            child: Text(
                              selectedType,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Marital Status",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(
                    Icons.star,
                    size: 10,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              FlutterToggleTab(
                selectedBackgroundColors: [AppColors.secondaryColor],
                width: AppSizes.width / 3,
                borderRadius: 10,
                selectedIndex: _maritalStatusSelectedIndex,
                selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                labels: <String>[
                  'Single',
                  'Divorced',
                  'Separated',
                  'Widower',
                ],
                // icons: [
                //   Icons.male,
                //   Icons.female,
                //   Icons.male,
                //   Icons.female,
                //   Icons.male
                // ],
                selectedLabelIndex: (index) {
                  setState(() {
                    _maritalStatusSelectedIndex = index;
                    print(_maritalStatusSelectedIndex);
                  });
                },
                marginSelected:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 40,
              ),
              CustomButton(
                text: "Continue",
                ontap: () {
                  Get.toNamed(Routes.ZOOM_DRAWER);
                },
                height: 45,
                width: AppSizes.width,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.red,
                      value: true,
                      onChanged: (value) {},
                      checkColor: Colors.white,
                      side: BorderSide(color: Colors.grey)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        softWrap: true,
                        maxLines: 2,
                        "I have read and agree to the Terms and ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        softWrap: true,
                        maxLines: 2,
                        "Conditions and Privacy Policy",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 20)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
