import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/user_info/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';

class UserInfoSubmit extends StatefulWidget {
  final String? email;
  final String? name;
  const UserInfoSubmit({super.key,  this.email,  this.name});

  @override
  State<UserInfoSubmit> createState() => _UserInfoSubmitState();
}

class _UserInfoSubmitState extends State<UserInfoSubmit> {
  // var _tabTextIndexSelected = 'Male';
  // var _createdByIndex = 'Self';
  // var _maritalStatusSelectedIndex = 'Single';
  String selectedRegion = "Muslim";

  double currentHeight = 5.8;

    String _createdByText = 'Self';
  String _genderText = 'Male';
  String _maritalStatusText = 'Single';

  final List<String> createdByLabels = [
    'Self',
    'Parent',
    'Sibling',
    'Relative',
    'Friend'
  ];
  final List<String> genderLabels = ['Male', 'Female'];
  final List<String> maritalStatusLabels = [
    'Single',
    'Divorced',
    'Separated',
    'Widower'
  ];

  void setSelected(String value) {
    setState(() {
      selectedRegion = value;
    });
  }

  String homeDistrict = "Dhaka";
  void distSelected(String value) {
    setState(() {
      homeDistrict = value;
    });
  }

  String presentDistrict = "Dhaka";
  void presentDistSelected(String value) {
    setState(() {
      presentDistrict = value;
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
  UserInfoController userInfoController = Get.put(UserInfoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
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
              const SizedBox(height: 10),
              Text(
                'Find Your Suitable Match',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 10),

              //Gender Selection

              //Profile creadted by section
              Text(
                "Profile created by",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),

            FlutterToggleTab(
              selectedBackgroundColors: [AppColors.secondaryColor],
              width: MediaQuery.of(context).size.width / 3,
              borderRadius: 10,
              selectedIndex: createdByLabels.indexOf(_createdByText),
              selectedTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              unSelectedTextStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              labels: createdByLabels,
              selectedLabelIndex: (index) {
                setState(() {
                  _createdByText = createdByLabels[index];
                });
              },
              marginSelected: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            ),
              const SizedBox(
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
              width: MediaQuery.of(context).size.width / 4,
              borderRadius: 10,
              selectedIndex: genderLabels.indexOf(_genderText),
              selectedTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              icons: const [Icons.male, Icons.female],   
              unSelectedTextStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              labels: genderLabels,
              selectedLabelIndex: (index) {
                setState(() {
                  _genderText = genderLabels[index];
                });
              },
              marginSelected: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            ),
              const SizedBox(
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
              const SizedBox(
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
                  const Icon(
                    Icons.star,
                    size: 10,
                  )
                ],
              ),
              // TextFormField(
              //   controller: nameController,
              //   decoration: const InputDecoration(
              //     hintText: "Enter Name",
              //   ),
              // ),

              // const SizedBox(
              //   height: 15,
              // ),
              Row(
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'Age',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Icon(
                          Icons.star,
                          size: 10,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(80, 140, 137, 137)),
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
                        const Icon(
                          Icons.star,
                          size: 10,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(80, 140, 137, 137)),
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
                            value: selectedRegion,
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

              const SizedBox(
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
                      const Icon(
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
                            color: const Color.fromARGB(80, 140, 137, 137)),
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
                        presentDistSelected(newValue!);
                      },
                      value: presentDistrict,
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
              const SizedBox(
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
                      const Icon(
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
                            color: const Color.fromARGB(80, 140, 137, 137)),
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
                      value: homeDistrict,
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
              const SizedBox(
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
                      const Icon(
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
                            color: const Color.fromARGB(80, 140, 137, 137)),
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
              const SizedBox(
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
                      const Icon(
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
                            color: const Color.fromARGB(80, 140, 137, 137)),
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
              const SizedBox(
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
                      const Icon(
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
                            color: const Color.fromARGB(80, 140, 137, 137)),
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
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Marital Status",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Icon(
                    Icons.star,
                    size: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),

               FlutterToggleTab(
              // selectedBackgroundColors: [Colors.blue],
              selectedBackgroundColors: [AppColors.secondaryColor],

              width: MediaQuery.of(context).size.width / 3,
              borderRadius: 10,
              selectedIndex: maritalStatusLabels.indexOf(_maritalStatusText),
              selectedTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              unSelectedTextStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              labels: maritalStatusLabels,
              selectedLabelIndex: (index) {
                setState(() {
                  _maritalStatusText = maritalStatusLabels[index];
                });
              },
              marginSelected: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 40,
              ),
              Obx(() {
                return userInfoController.isLoading.value
                    ? Center(
                        child:
                            const CircularProgressIndicator()) // Show loader if loading
                    : CustomButton(
                        text: "Continue",
                        ontap: () {
                          // Get.toNamed(Routes.ZOOM_DRAWER);
                          // if (nameController.text.trim().isEmpty) {
                          //   Get.snackbar(
                          //     "Oops!",
                          //     "Name cannot be empty",
                          //     backgroundColor: Colors.green,
                          //     colorText: Colors.white,
                          //   );
                          //   return;
                          // }
                          if (_genderText == '') {
                            Get.snackbar(
                              "Oops!",
                              "Gender must be selected",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (currentHeight == 0) {
                            Get.snackbar(
                              "Oops!",
                              "Height must be selected",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (_maritalStatusText == '') {
                            Get.snackbar(
                              "Oops!",
                              "Martial Status must be selected",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (_createdByText == '') {
                            Get.snackbar(
                              "Oops!",
                              "Profile Status must be selected",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (homeDistrict.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Home district cannot be empty",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (defaultProfessions.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Profession cannot be empty",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (defaultSalary.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Income cannot be empty",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (defaultEducation.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Education cannot be empty",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (defaultaAge.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Age cannot be empty",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (presentDistrict.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Present district cannot be empty",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }
                          if (selectedRegion.isEmpty) {
                            Get.snackbar(
                              "Oops!",
                              "Religion must be selected",
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                            return;
                          }

                          userInfoController.saveUserData(
                              name: widget.name.toString(),
                              email: widget.email.toString(),
                              gender: _genderText.toString(),
                              height: currentHeight.toString(),
                              homeDistrict: homeDistrict,
                              profession: defaultProfessions,
                              income: defaultSalary,
                              education: defaultEducation,
                              maritalStatus:
                                  _maritalStatusText.toString(),
                              profile: _createdByText.toString(),
                              age: defaultaAge,
                              presentDistrict: presentDistrict,
                              religion: selectedRegion);
                        },
                        height: 45,
                        width: AppSizes.width,
                      );
              }),
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
                      side: const BorderSide(color: Colors.grey)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
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
                      const SizedBox(height: 20)
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
