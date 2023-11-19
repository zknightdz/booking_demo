import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/data/models/schedule_model.dart';
import 'package:booking_demo/data/models/user_model.dart';
import 'package:booking_demo/generated/assets.dart';

class MockData {
  static final user = UserModel(
    avatar:
        'https://statusneo.com/wp-content/uploads/2023/02/MicrosoftTeams-image551ad57e01403f080a9df51975ac40b6efba82553c323a742b42b1c71c1e45f1.jpg',
    name: 'Joe Samanta',
    address: 'Yogyakarta',
  );

  static final topSchedule = ScheduleModel(
    barber: BarberShop(
      name: 'Varcity Barbershop Jogja ex The Varcher',
      address: 'Condongcatur',
      distance: '10 km',
    ),
    time: '15 Jan, 08 : 00 AM',
    timeEstimation: '-50 menit',
  );

  static final nearestBarberShop = <BarberShop>[
    BarberShop(
      image: Assets.imagesIm1,
      name: 'Alana Barbershop - Haircut massage & Spa',
      address: 'Banguntapan',
      distance: '5 km',
      rating: '4.5',
    ),
    BarberShop(
      image: Assets.imagesIm2,
      name: 'Hercha Barbershop - Haircut & Styling',
      address: 'Jalan Kaliurang',
      distance: '8 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm3,
      name: 'Barberking - Haircut styling & massage',
      address: 'Jogja Expo Centre',
      distance: '12 km',
      rating: '4.5',
    ),
  ];

  static final mostRecommended = <BarberShop>[
    BarberShop(
      image: Assets.imagesIm9,
      name: 'Master piece Barbershop - Haircut styling',
      address: 'Jogja Expo Centre',
      distance: '2 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm9,
      name: 'Master piece Barbershop - Haircut styling',
      address: 'Jogja Expo Centre',
      distance: '2 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm9,
      name: 'Master piece Barbershop - Haircut styling',
      address: 'Jogja Expo Centre',
      distance: '2 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm9,
      name: 'Master piece Barbershop - Haircut styling',
      address: 'Jogja Expo Centre',
      distance: '2 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm9,
      name: 'Master piece Barbershop - Haircut styling',
      address: 'Jogja Expo Centre',
      distance: '2 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm4,
      name: 'Varcity Barbershop Jogja ex The Varcher',
      address: 'Condongcatur',
      distance: '10 km',
      rating: '4.5',
    ),
    BarberShop(
      image: Assets.imagesIm5,
      name: 'Twinsky Monkey Barber & Men Stuff',
      address: 'Jl Taman Siswa',
      distance: '8 km',
      rating: '5.0',
    ),
    BarberShop(
      image: Assets.imagesIm6,
      name: 'Barberman - Haircut styling & massage',
      address: 'J-Walk Centre',
      distance: '17 km',
      rating: '4.5',
    ),
  ];
}
