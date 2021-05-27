class Bike {
  final String brand;
  final String model;
  final String fuelType;
  final String gearBox;
  final String engineDispl;
  final String tyreType;
  final String mileage;
  final String starting;
  final double pricePerDay;
  final String condition;
  final List<String> images;

  Bike(this.brand, this.model, this.fuelType, this.gearBox, this.engineDispl, this.tyreType,
      this.mileage, this.starting, this.pricePerDay, this.condition, this.images);
}

List<Bike> getCarList() {
  return <Bike>[
    Bike("Hero", "HF Deluxe", "Petrol", "5 Speed", "98 cc", "Tubeless", "60 kmpl",
        "Kick & Slef Start", 1000, "Good", [
      'assets/Hero HF Deluxe/hero1.jpg',
      'assets/Hero HF Deluxe/hero2.jpg',
      'assets/Hero HF Deluxe/hero3.jpg',
      'assets/Hero HF Deluxe/hero4.jpg',
    ]),
   Bike("Royal Enfield", "Bullet 350", "Petrol", "5 Speed", "346 cc", "Tube", "35 kmpl",
        "Kick Start", 3000, "Brand New", [
      'assets/Royal Enfield Bullet 350/bullet1.jpg',
      'assets/Royal Enfield Bullet 350/bullet2.jpg',
      'assets/Royal Enfield Bullet 350/bullet3.jpg',
    ]),
    Bike("Bajaj", "CT 100", "Petrol", "5 Speed", "102 cc", "Tube", "90 kmpl",
        "Kick & Slef Start", 1500, "Good", [
      'assets/Bajaj CT100/bajaj1.jpg',
      'assets/Bajaj CT100/bajaj2.jpg',
      'assets/Bajaj CT100/bajaj3.jpg',
      'assets/Bajaj CT100/bajaj4.jpg',
      'assets/Bajaj CT100/bajaj5.jpg',
    ]),
    Bike("Yamaha", "YZF R15 V3", "Petrol", "6 Speed", "155 cc", "Tube", "90 kmpl",
        "Kick & Slef Start", 2500, "Good", [
      'assets/Yamaha YZF R15 V3/yamaha1.jpg',
      'assets/Yamaha YZF R15 V3/yamaha2.jpg',
      'assets/Yamaha YZF R15 V3/yamaha3.jpg',
      'assets/Yamaha YZF R15 V3/yamaha4.jpg',
    ]),
    Bike("Bajaj", "Pulsar 150 ", "Petrol", "5 Speed", "149 cc", "Tube", "90 kmpl",
        "Kick Start", 2000, "Good", [
      'assets/Bajaj Pulsar 150/pulsar1.jpg',
      'assets/Bajaj Pulsar 150/pulsar2.jpg',
      'assets/Bajaj Pulsar 150/pulsar3.jpg',
      'assets/Bajaj Pulsar 150/pulsar4.jpg',
    ]),    
    Bike("TVS", "Apache RTR 160", "Petrol", "5 Speed", "159 cc", "Tubeless", "40 kmpl",
        "Kick Start", 2000, "Good", [
      'assets/TVS Apache RTR 160/rtr1.jpg',
      'assets/TVS Apache RTR 160/rtr2.jpg',
      'assets/TVS Apache RTR 160/rtr3.jpg',
      'assets/TVS Apache RTR 160/rtr4.jpg',
      'assets/TVS Apache RTR 160/rtr5.jpg',
    ]),    
    Bike("Honda", "Shine", "Petrol", "5 Speed", "159 cc", "Tubeless", "50 kmpl",
        "Kick & self Start", 1500, "Good", [
      'assets/Honda Shine/shine1.jpg',
      'assets/Honda Shine/shine2.jpg',
    ]), 
    Bike("Benling India", "Falcon", "Electricity", "CVT", "159 cc", "Tubeless", "73 kmpc",
        "Remote Start,Push Button Start", 1500, "Good", [
      'assets/Benling India Falcon/falcon1.jpg',
      'assets/Benling India Falcon/falcon2.jpg',
    ]), 
    Bike("Royal Enfield", "Classic 350", "Petrol", "5 Speed", "346 cc", "Tubeless", "42 kmpl",
        "Kick & self Start", 2500, "Good", [
      'assets/Royal Enfield Classic 350/classic1.jpg',
      'assets/Royal Enfield Classic 350/classic2.jpg',
      'assets/Royal Enfield Classic 350/classic3.jpg',
      'assets/Royal Enfield Classic 350/classic4.jpg',
      'assets/Royal Enfield Classic 350/classic5.jpg',
    ]),
    Bike("Duke", "KTM 125", "Petrol", "6 Speed", "124 cc", "Tubeless", "47 kmpl",
        "Kick & self Start", 2500, "Good", [
      'assets/KTM 125 Duke/ktm1.jpg',
      'assets/KTM 125 Duke/ktm2.jpg',
      'assets/KTM 125 Duke/ktm3.jpg',
      'assets/KTM 125 Duke/ktm4.jpg',
      'assets/KTM 125 Duke/ktm5.jpg',
    ]),
     Bike("Honda", "Activa 6G", "Petrol", "CVT", "109 cc", "Tubeless", "47 kmpl",
        "Kick & self Start", 1500, "Good", [
      'assets/Honda Activa 6G/hondaactiva1.jpg',
      'assets/Honda Activa 6G/hondaactiva2.jpg',
      'assets/Honda Activa 6G/hondaactiva3.jpg',
      'assets/Honda Activa 6G/hondaactiva4.jpg',
      'assets/Honda Activa 6G/hondaactiva5.jpg',
    ]),
    Bike("Bajaj", " Pulsar NS200", "Petrol", "5 speed", "199 cc", "Tubeless", "41 kmpl",
        "Kick & self Start", 2000, "Good", [
      'assets/Bajaj Pulsar NS200/bajajpulsar1.jpg',
      'assets/Bajaj Pulsar NS200/bajajpulsar2.jpg',
      'assets/Bajaj Pulsar NS200/bajajpulsar3.jpg',
      'assets/Bajaj Pulsar NS200/bajajpulsar4.jpg',
    ]),
    Bike("Yamaha", "FZ-Fi Version 3.0", "Petrol", "5 speed", "149 cc", "Tubeless", "30 kmpl",
        "Kick & self Start", 2000, "Good", [
      'assets/Yamaha FZ-Fi Version 3.0/yamahaffzfi1.jpg',
      'assets/Yamaha FZ-Fi Version 3.0/yamahaffzfi2.jpg',
      'assets/Yamaha FZ-Fi Version 3.0/yamahaffzfi3.jpg',
      'assets/Yamaha FZ-Fi Version 3.0/yamahaffzfi4.jpg',
      'assets/Yamaha FZ-Fi Version 3.0/yamahaffzfi5.jpg',
    ]),
    Bike("Suzuki", "Gixxer SF", "Petrol", "5 speed", "155 cc", "Tubeless", "40 kmpl",
        "Kick & self Start", 2000, "Good", [
      'assets/Suzuki Gixxer SF/suzukiGixxerSF1.jpg',
      'assets/Suzuki Gixxer SF/suzukiGixxerSF2.jpg',
      'assets/Suzuki Gixxer SF/suzukiGixxerSF3.jpg',
      'assets/Suzuki Gixxer SF/suzukiGixxerSF4.jpg',
      'assets/Suzuki Gixxer SF/suzukiGixxerSF5.jpg',
    ]),
     Bike("Hero", "Electric Dash", "Electricity", "5 speed", "110 cc", "Tubeless", "60 kmpc",
        "Kick & self Start", 1000, "Good", [
      'assets/Hero Electric Dash/heroElectricDash1.jpg',
      'assets/Hero Electric Dash/heroElectricDash2.jpg',
      'assets/Hero Electric Dash/heroElectricDash3.jpg',
      'assets/Hero Electric Dash/heroElectricDash4.jpg',
      'assets/Hero Electric Dash/heroElectricDash5.jpg',
    ]),
    Bike("Suzuki", "Access 125 ", "Petrol", "CVT", "124 cc", "Tubeless", "53 kmpl",
        "Kick & self Start", 900, "Good", [
      'assets/Suzuki Access 125/suzukiAccess1.jpg',
      'assets/Suzuki Access 125/suzukiAccess2.jpg',
      'assets/Suzuki Access 125/suzukiAccess3.jpg',
      'assets/Suzuki Access 125/suzukiAccess4.jpg',
    ]),
     Bike("Hero", "Super Splendor", "Petrol", "5 speed", "124 cc", "Tubeless", "50 kmpl",
        "Kick start", 1000, "Good", [
      'assets/Hero Super Splendor/hero-super-splendor_1.jpg',
      'assets/Hero Super Splendor/hero-super-splendor_2.jpg',
      'assets/Hero Super Splendor/hero-super-splendor_3.jpg',
      'assets/Hero Super Splendor/hero-super-splendor_4.jpg',
      'assets/Hero Super Splendor/hero-super-splendor_5.jpg',
    ]),
     Bike("Triumph", "Street Triple", "Petrol", "5 speed", "765 cc", "Tubeless", "70 kmpl",
        "Self start", 1000, "Good", [
      'assets/Triumph Street Triple/triumph-street-triple1.jpg',
      'assets/Triumph Street Triple/triumph-street-triple2.jpg',
      'assets/Triumph Street Triple/triumph-street-triple3.jpg',
      'assets/Triumph Street Triple/triumph-street-triple4.jpg',
      'assets/Triumph Street Triple/triumph-street-triple5.jpg',
    ]), 
   ];
}
