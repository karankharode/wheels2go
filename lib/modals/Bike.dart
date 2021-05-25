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
  return <Bike>[ Bike("Hero", "HF Deluxe", "Petrol", "5 Speed", "98 cc", "Tubeless", "60 kmpl", "Kick & Slef Start", 1000, "Good", [ 'assets/Hero HF Deluxe/hero1.jpg', 'assets/Hero HF Deluxe/hero2.jpg', 'assets/Hero HF Deluxe/hero3.jpg', 'assets/Hero HF Deluxe/hero4.jpg', ]), Bike("Royal Enfield", "Bullet 350", "Petrol", "5 Speed", "346 cc", "Tube", "35 kmpl", "Kick Start", 3000, "Brand New", [ 'assets/Royal Enfield Bullet 350/bullet1.jpg', 'assets/Royal Enfield Bullet 350/bullet2.jpg', 'assets/Royal Enfield Bullet 350/bullet3.jpg', ]), Bike("Bajaj", "CT 100", "Petrol", "5 Speed", "102 cc", "Tube", "90 kmpl", "Kick & Slef Start", 1500, "Good", [ 'assets/Bajaj CT100/bajaj1.jpg', 'assets/Bajaj CT100/bajaj2.jpg', 'assets/Bajaj CT100/bajaj3.jpg', 'assets/Bajaj CT100/bajaj4.jpg', 'assets/Bajaj CT100/bajaj5.jpg', ]), Bike("Yamaha", "YZF R15 V3", "Petrol", "6 Speed", "155 cc", "Tube", "90 kmpl", "Kick & Slef Start", 2500, "Good", [ 'assets/Yamaha YZF R15 V3/yamaha1.jpg', 'assets/Yamaha YZF R15 V3/yamaha2.jpg', 'assets/Yamaha YZF R15 V3/yamaha3.jpg', 'assets/Yamaha YZF R15 V3/yamaha4.jpg', ]), Bike("Bajaj", "Pulsar 150 ", "Petrol", "5 Speed", "149 cc", "Tube", "90 kmpl", "Kick Start", 2000, "Good", [ 'assets/Bajaj Pulsar 150/pulsar1.jpg', 'assets/Bajaj Pulsar 150/pulsar2.jpg', 'assets/Bajaj Pulsar 150/pulsar3.jpg', 'assets/Bajaj Pulsar 150/pulsar4.jpg', ]),
Bike("TVS", "Apache RTR 160", "Petrol", "5 Speed", "159 cc", "Tubeless", "40 kmpl", "Kick Start", 2000, "Good", [ 'assets/TVS Apache RTR 160/rtr1.jpg', 'assets/TVS Apache RTR 160/rtr2.jpg', 'assets/TVS Apache RTR 160/rtr3.jpg', 'assets/TVS Apache RTR 160/rtr4.jpg', 'assets/TVS Apache RTR 160/rtr5.jpg', ]),
Bike("Honda", "Shine", "Petrol", "5 Speed", "159 cc", "Tubeless", "50 kmpl", "Kick & self Start", 1500, "Good", [ 'assets/Honda Shine/shine1.jpg', 'assets/Honda Shine/shine2.jpg', ]), Bike("Benling India", "Falcon", "Petrol", "5 Speed", "159 cc", "Tubeless", "73 kmpc", "Remote Start,Push Button Start", 1500, "Good", [ 'assets/Benling India Falcon/falcon1.jpg', 'assets/Benling India Falcon/falcon2.jpg', 'assets/Benling India Falcon/falcon2.jpg', 'assets/Benling India Falcon/falcon2.jpg', ]),

];
}