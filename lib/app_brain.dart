class AppBrain {
  AppBrain(
      {this.moodPercentage,
      this.timeIndex,
      this.playerIndex,
      this.classDecision,
      this.roomDecision,
      this.batteryPercentage});

  final int moodPercentage;
  final int timeIndex;
  final int playerIndex;
  final String classDecision;
  final String roomDecision;
  final int batteryPercentage;

  int mainVariable = 0;

  void calculateMood() {
    if (moodPercentage >= 0 && moodPercentage <= 30) {
      mainVariable += 5;
    } else if (moodPercentage >= 31 && moodPercentage <= 70) {
      mainVariable += 10;
    } else if (moodPercentage >= 71 && moodPercentage <= 100) {
      mainVariable += 15;
    } else {
      print('Mood Exception arise');
    }
  }

  void calculateTimeIndex() {
    if (timeIndex >= 0 && timeIndex <= 5) {
      mainVariable += 15;
    } else if (timeIndex >= 6 && timeIndex <= 8) {
      mainVariable += 5;
    } else if (timeIndex >= 9 && timeIndex <= 27) {
      mainVariable += 7;
    } else {
      print('Time Exception arise');
    }
  }

  void calculatePlayerIndex() {
    if (playerIndex >= 0 && playerIndex <= 3) {
      mainVariable += 5;
    } else if (playerIndex >= 4) {
      mainVariable += 15;
    } else {
      print('Player Exception arise');
    }
  }

  void calculateClassDecision() {
    if (classDecision == 'DecisionState.TickClass') {
      mainVariable += 0;
    } else if (classDecision == 'DecisionState.CrossClass') {
      mainVariable += 15;
    } else {
      print('Class Decision Exception arise');
    }
  }

  void calculateRoomDecision() {
    if (roomDecision == 'DecisionState.TickRoom') {
      mainVariable += 15;
    } else if (roomDecision == 'DecisionState.CrossRoom') {
      mainVariable += 5;
    } else {
      print('Room Decision Exception arise');
    }
  }

  void calculateBattery() {
    if (batteryPercentage >= 0 && batteryPercentage <= 30) {
      mainVariable += 0;
    } else if (batteryPercentage >= 31 && batteryPercentage <= 50) {
      mainVariable += 5;
    } else if (batteryPercentage >= 51 && batteryPercentage <= 100) {
      mainVariable += 15;
    } else {
      print('Battery Exception arise');
    }
  }

  String mainDecision() {
    calculateMood();
    calculateTimeIndex();
    calculatePlayerIndex();
    calculateClassDecision();
    calculateRoomDecision();
    calculateBattery();

    print(mainVariable);

    if (mainVariable >= 0 && mainVariable <= 65) {
      return 'No need to play pubg today!';
    } else if (mainVariable <= 85 && mainVariable > 65) {
      return 'You can play pubg today, No worries!';
    } else if (mainVariable >= 86) {
      return 'Perfect day for playing pubg today!!';
    }
  }

  String tier() {
    print(mainVariable);

    if (mainVariable >= 0 && mainVariable <= 65) {
      return 'A';
    } else if (mainVariable <= 85 && mainVariable > 65) {
      return 'S';
    } else if (mainVariable >= 86) {
      return 'SSS';
    }
  }
}

/*
++++++++++++++++++++++++++++++++
######## App Algorithm ########
++++++++++++++++++++++++++++++++



TOTAL 90 POINTS

MY MOOD
=======
(0% - 30%)  -> 5
(31% - 70%)  -> 10
(71% - 100%) -> 15

TIME
=====
(0 index - 5 index) -> 15
(6 index - 8 index) -> 5
(9 index - 27 index) -> 7


PLAYER
======
(0 index - 3 index) -> 5
(4 index - 10 index) -> 15


CLASS TOMORROW
==============
DecisionState.TickClass -> 0
DecisionState.CrossClass -> 15

ROOM CARD
=========
DecisionState.TickRoom -> 15
DecisionState.CrossRoom -> 5


DEVICE BATTERY
==============
(0% - 30%)  -> 0
(31% - 50%)  -> 5
(50% - 100%) -> 15

 */
