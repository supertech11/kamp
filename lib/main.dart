import 'package:flutter/material.dart';
import 'package:kampe/screens/auth/auth.dart';
import 'package:kampe/screens/auth/otp_verification.dart';
import 'package:kampe/screens/dashboard/contact/contact.dart';
import 'package:kampe/screens/dashboard/notifications/discountandnews.dart';
import 'package:kampe/screens/dashboard/notifications/notifications.dart';
import 'package:kampe/screens/dashboard/notifications/tripupdates.dart';
import 'package:kampe/screens/dashboard/profile/edit_profile.dart';
import 'package:kampe/screens/dashboard/ticket/ticket_detail.dart';
import 'package:kampe/screens/dashboard/wallet/wallet.dart';
import 'package:kampe/screens/driver_dashboard/dashboard.dart';
import 'package:kampe/screens/driver_dashboard/plan_trip/plan_trip.dart';
import 'package:kampe/screens/driver_dashboard/plan_trip/trip_car_details.dart';
import 'package:kampe/screens/driver_dashboard/reviews/reviews.dart';
import 'package:kampe/screens/driver_dashboard/trip/ticket_detail.dart';
import 'package:kampe/screens/driver_dashboard/vehicles_and_docs/add_document_two.dart';
import 'package:kampe/screens/driver_dashboard/vehicles_and_docs/add_vehicle.dart';
import 'package:kampe/screens/driver_dashboard/vehicles_and_docs/add_document_one.dart';
import 'package:kampe/screens/driver_dashboard/vehicles_and_docs/vehicle_management.dart';
import 'package:kampe/screens/driver_dashboard/vehicles_and_docs/vehicles_and_docs.dart';
import 'package:kampe/screens/driver_dashboard/wallet/wallet.dart';

import 'package:kampe/screens/splashscreen.dart';
import 'package:kampe/screens/auth/walkthrough.dart';
import 'package:kampe/screens/dashboard/dashboard.dart';
import 'package:kampe/screens/auth/choose_user_screen.dart';
import 'package:kampe/screens/dashboard/search/search.dart';
import 'package:kampe/screens/dashboard/search/ticket_booking_seat.dart';
import 'package:kampe/screens/dashboard/search/ticket_booking_boarding.dart';
import 'package:kampe/screens/dashboard/search/ticket_booking_payment.dart';

import 'package:kampe/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kampe',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
      ),
      home: SplashScreen(),
      routes: {
        kDashboardScreen: (ctx) => Dashboard(0),
        kDriverDashboardScreen: (ctx) => DriverDashboard(0),
        kSearchScreen: (ctx) => SearchScreen(),
        kTicketBookingSeatScreen: (ctx) => TicketBookingSeatScreen(),
        kTicketBookingBoardingScreen: (ctx) => TicketBookingBoardingScreen(),
        kTicketBookingPaymentScreen: (ctx) => TicketBookingPaymentScreen(),
        kTicketDetailScreen: (ctx) => TicketDetailScreen(),
        kWalletScreen: (ctx) => WalletScreen(),
        kNotificationsScreen: (ctx) => NotificationsScreen(),
        kDiscountAndNewsScreen: (ctx) => DiscountAndNewsScreen(),
        kAccountAndTripScreen: (ctx) => AccountAndTripUpdateScreen(),
        kContactScreen: (ctx) => ContactScreen(),
        kEditProfileScreen: (ctx) => EditProfileScreen(),
        kPlanTripScreen: (ctx) => PlanTripScreen(),
        kTripCarDetails: (ctx) => TripCarDetailsScreen(),
        kDriverTicketDetailScreen: (ctx) => DriverTickeDetailScreen(),
        kDriverReviewsScreen: (ctx) => DriverReviewsScreen(),
        kVehiclesAndDocumentScreen: (ctx) => VehiclesAndDocumentScreen(),
        kVehicleManagementScreen: (ctx) => VehicleManagementScreen(),
        kAddVehicleScreen: (ctx) => AddVehicleScreen(),
        kAddDocumentScreenOne: (ctx) => AddDocumentScreenOne(),
        kAddDocumentScreenTwo: (ctx) => AddDocumentScreenTwo(),
        kDriverWalletScreen: (ctx) => DriverWalletScreen(),
        kAuthScreen: (ctx) => AuthScreen(),
        kOtpVerificationScreen: (ctx) => OtpVerificationScreen(),
        kWalkthrough: (ctx) => WalkThrough(),
        kChooseUserScreen: (ctx) => ChooseUserScreen(),
      },
    );
  }
}
