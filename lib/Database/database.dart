class IconsButtonData {
  final String? name;
  final String? icon;
  final int? index;

  IconsButtonData({
    this.name,
    this.icon,
    this.index,
  });
}

class InformationIconsData {
  final String? name;
  final String? data;
  final String? icon;

  InformationIconsData({
    this.name,
    this.data,
    this.icon,
  });
}

class ServicesData {
  final String? name;
  final String? image;

  ServicesData({
    this.name,
    this.image,
  });
}

final iconsButtonsMain = [
  IconsButtonData(name: 'Home', icon: 'home.svg', index: 0),
  IconsButtonData(name: 'Wallet', icon: 'wallet.svg', index: 1),
  IconsButtonData(name: 'Deposit-Withdraw', icon: 'deposit.svg', index: 2),
  IconsButtonData(name: 'Transfers', icon: 'transfers.svg', index: 3),
  IconsButtonData(name: 'Pay Services', icon: 'payservices.svg', index: 4),
  IconsButtonData(name: 'Mobile Recharge', icon: 'mobile.svg', index: 5),
  IconsButtonData(name: 'My WPayme Card', icon: 'mywpayme.svg', index: 6),
  IconsButtonData(name: 'Movements', icon: 'movements.svg', index: 7),
];

final iconsButtonSecound = [
  IconsButtonData(name: 'Sub-Accounts', icon: 'subaccounts.svg', index: 8),
  IconsButtonData(name: 'Fav-Contacts', icon: 'fav-contacts.svg', index: 9),
  IconsButtonData(name: 'Chat', icon: 'chat.svg', index: 10)
];

final informationiconsdatamain = [
  InformationIconsData(
    name: 'Location',
    data: 'India',
    icon: 'location.svg',
  ),
  InformationIconsData(
    name: 'Address',
    data: 'Mumbai',
    icon: 'addres.svg',
  ),
  InformationIconsData(
    name: 'Wallet ID',
    data: '6HE46URR677wSR446Ic',
    icon: 'walletid.svg',
  ),
];

final servicedatamain = [
  ServicesData(name: 'Pay Services', image: 'Finance1.png'),
  ServicesData(name: 'Mobile Recharge', image: 'Layer2.png'),
  ServicesData(name: 'WPayme Card', image: 'Layer3.png'),
];

//Container(
//                    height: 40,
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Spacer(),
//                        Container(
//                          height: 40,
//                          width: 40,
//                          alignment: Alignment.center,
//                          decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(10),
//                          ),
//                          child: SvgPicture.asset(
//                            'assets/icons/notfication.svg',
//                            height: 20,
//                          ),
//                        ),
//                        SizedBox(width: 20),
//                        Container(
//                          height: 40,
//                          width: 40,
//                          alignment: Alignment.center,
//                          decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(10),
//                          ),
//                          child: SvgPicture.asset(
//                            'assets/icons/user.svg',
//                            height: 20,
//                          ),
//                        ),
//                        SizedBox(width: 20),
//                      ],
//                    ),
//                  ),
//                  SizedBox(height: 10),
