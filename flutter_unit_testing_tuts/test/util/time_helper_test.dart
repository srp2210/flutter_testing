//TODO 1: Write a main() method to execute your tests
//TODO 2: CREATE A GROUP WITH THE NAME OF THE CLASS

//TODO 3.1: WRITE A TEST THAT THE TIMEhELPER SHOULD RETURN MORNING
//TODO 3.2: WRITE A TEST THAT THE TIMEhELPER SHOULD RETURN AFTERNOON
//TODO 3.3: WRITE A TEST THAT THE TIMEhELPER SHOULD RETURN EVENING
//TODO 3.4: WRITE A TEST THAT THE TIMEhELPER SHOULD RETURN NIGHT

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_tuts/util/time_helper.dart';

main() {
  //Group test
  group('TimeHelper', () {
    group("getTimeOfTheDay", () {
      test("should return Night", () {
        //Arrange(Initialization)
        DateTime currentTime = DateTime(2023, 22, 1, 5);
        //Act(Execution)
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);
        //Assert(Observation)
        expect(timeOfDay, "Night");
      });

      test("should return Morning", () {
        //Arrange
        DateTime currentTime = DateTime(2023, 22, 1, 6);
        //Act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);
        //Assert
        expect(timeOfDay, "Morning");
      });

      test("should return Afternoon", () {
        //Arrange
        DateTime currentTime = DateTime(2023, 22, 1, 12);
        //Act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);
        //Assert
        expect(timeOfDay, "Afternoon");
      });

      test("should return Evening", () {
        //Arrange
        DateTime currentTime = DateTime(2023, 22, 1, 19);
        //Act
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);
        //Assert
        expect(timeOfDay, "Evening");
      });
    });
  });
}
