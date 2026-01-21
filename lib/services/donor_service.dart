import '../models/donor.dart';

class DonorService {
  static List<Donor> getDonors() {
    return [
      Donor("Ravi", "O+", "Hyderabad"),
      Donor("Sita", "A+", "Secunderabad"),
      Donor("Arjun", "B+", "Medchal"),
    ];
  }
}
