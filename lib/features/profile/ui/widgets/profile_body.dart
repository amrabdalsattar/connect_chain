part of '../profile_screen.dart';

class ProfileBody extends StatelessWidget {
  final SupplierData supplierData;
  const ProfileBody({super.key, required this.supplierData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(18),
          const CustomBackButton(),
          verticalSpace(24),
          const Center(child: ProfileHeader()),
          verticalSpace(32),
          ProfileDetailsSection(
            profileSectionModel: ProfileSectionModel(
                title: 'معلومات الحساب ',
                profileItemModel: List.generate(
                  getAccountData(supplierData).length,
                  (index) => ProfileItemModel(
                      title: getAccountData(supplierData)[index].keys.first,
                      subtitle:
                          getAccountData(supplierData)[index].values.first),
                )),
          ),
          verticalSpace(32),
          // Second Section
          ProfileDetailsSection(
            profileSectionModel: ProfileSectionModel(
                title: 'معلومات الشركة ',
                profileItemModel: List.generate(
                  getCompanyData(supplierData).length,
                  (index) => ProfileItemModel(
                      title: getCompanyData(supplierData)[index].keys.first,
                      subtitle:
                          getCompanyData(supplierData)[index].values.first),
                )),
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> getAccountData(SupplierData supplierData) => [
      {
        'الاسم بالكامل':
            SharedPreferencesHelper.getString(SharedPreferencesKeys.userName),
      },
      {
        'البريد الإلكتروني': supplierData.email,
      },
      {
        'رقم الهاتف': supplierData.phoneNumber,
      },
      {
        'العنوان': supplierData.address,
      }
    ];

List<Map<String, dynamic>> getCompanyData(SupplierData supplierData) => [
      {
        'اسم الشركة': 'ConnectChain',
      },
      {
        'رقم الهاتف': supplierData.phoneNumber,
      },
      {
        'العنوان': supplierData.address,
      }
    ];
