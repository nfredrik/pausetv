
Feature:Implement a aplication that can pause/resume a TV broadcast. 
        If a person hides partially or fully the TV broadcast should
        iti be paused and than resumed when the persons leaves s
        Pause the TV when a person stands in the way for an active TV set



Scenario: When a person stands in the front of an active sending TV more than 3 secs
  Given We have a active sending TV
    And we have a supervisning application to detect persons
  When a person is detected in the front of the TV more than 3 secs
  Then verify the TV broadcast paused

Scenario: When a person stands in the front of an active sending TV less than 3 secs
  Given We have a active sending TV
    And we have a supervisning application to detect persons
  When a person is detected in the front of the TV less than 3 secs
  Then verify the TV broadcast still active


Scenario: When a no person in front of an paused sending TV

  Given We have a paused TV
    And there we have a supervisning application to detect persons
  When there are no person  in the front of the TV
  Then verify the TV broadcast resumed

  Scenario: When a no person in front of an active sending TV

  Given We have a active sending TV
    And there we have a supervisning application to detect persons
  When there are no person  in the front of the TV
  Then verify the TV broadcast still active