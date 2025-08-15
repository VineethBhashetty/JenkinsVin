Feature: Validate negative scenarios for Epass country form

@NameValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel           | count  | date        | Anythingtosay        |
    | 12345  | abc@mail.com     | 123  | 456  | 7891   |    UAE         |   male        |  K1234567    |   Wedding        | Flight          | 2      | 2025-08-05  |  HI WELCOME  hello   |
    |        | abc@mail.com     | 123  | 567  |  5643  |    USA         |   female      |   K1234567    |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    | @@@@   | email@test.com   | 987  | 567  | 4321   |    UK          |   male        |    K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth  | email@test.com   | 987  | 567  | 4321   |    UK          |   male        |    K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    
    
    
  @EmailValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth  | 123456           | 123  | 456  | 7891   |    UAE         |   male        |  K1234567    |   Wedding        | Flight          | 2      | 2025-08-05  |  HI WELCOME  hello   |
    | vineeth  | abc@mail.com     | 1234 | 5678 |  5643  |    USA         |   female      |   K1234567    |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    | vineeth | @#$%^            | 9876 | 5678 | 4321   |    UK          |   male        |    K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth |                  | 9876 |  5678| 4321   |    UK          |   male        |    K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    
    
   @phoneNumValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth  | 123456           | 123  | 456  | 78     |    UAE         |   male        |  K1234567    |   Wedding        | Flight          | 2      | 2025-08-05  |  HI WELCOME  hello   |
    | vineeth | abc@mail.com     | 12e  | 56t  |  56ee  |    USA         |   female      |   K1234567    |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    | vineeth | @#$%^            | 987  | 5678 | 4321   |    UK          |   male        |    K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth  |                  | 987  |      |        |    UK          |   male        |    K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    
    
    @genderValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth  | 123456           | 123  | 456  | 7878   |    UAE         |   male        |  K1234567    |   Wedding        | Flight          | 2      | 2025-08-05  |  HI WELCOME  hello   |
    | vineeth  | abc@mail.com     | 123  | 567  |  5690  |    USA         |   female      |  K1234567    |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    | vineeth | @#$%^            | 987  | 567  | 4321   |    UK          |   male        |  K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth |                  | 987  | 897  |  6789  |    Malaysia    |   male        |  K1234567   |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth  | abc@mail.com     | 123  | 567  |  5699  |    Maldives    |   others      |   K1234567    |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    
    
@passportValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth  | 123456           | 123  | 456  | 78     |    UAE         |   male        |  K1234567    |   Wedding        | Flight          | 2      | 2025-08-05  |  HI WELCOME  hello   |
    | vineeth | abc@mail.com     | 123  | 567  |  5678  |    USA         |   female      |  1234567     |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    | vineeth | @#$%^            | 987  | 5678 | 4321   |    UK          |   male        |              |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth | abc@mail.com     | 987  |  675 |        |    Malaysia    |   male        |  #$%^78      |   Wedding        | Flight          | 1      | 2025-08-15   |  Mumbai            |
    | vineeth | abc@mail.com     | 126  | 567  |  5699  |    Maldives    |   others      |    vineeth    |   Wedding        | Flight          | -5     | 2025-08-10  |   Delhi             |
    
 @dateValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth | 123456           | 123  | 456  | 78     |    UAE         |   male        |  K1234567    |   Wedding        | Flight          | 2      | 30-7-2021   |  HI WELCOME  hello   |
    | vineeth | abc@mail.com     | 126  | 567  |  5688  |    USA         |   female      |  K1234567    |   Wedding        | Flight          | -5     |30-14-2021   |   Delhi             |
    | vineeth | @#$%^            | 987  | 5678 | 4321   |    UK          |   male        |  K1234567    |   Wedding        | Flight          | 1      | vineeth       |  Mumbai            |
    | vineeth| abc@mail.com     | 987  |  675 | 5671   |    Malaysia    |   male        |  K1234567     |   Wedding        | Flight          | 1      | #$%^&       |  Mumbai            |
    | vineeth  | abc@mail.com     | 129  | 567  |  5688  |    Maldives    |   others      |   K1234567    |   Wedding        | Flight          | -5     | 20          |   Delhi             |
  
  @ReasonValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth  | 123456           | 123  | 456  | 7876   |    UAE         |   male        |  K1234567    |   Vaccination    | Flight          | 2      | 30-7-2021   |  HI WELCOME  hello   |
    | vineeth  | abc@mail.com     | 127  | 565  |  5667  |    USA         |   female      |  K1234567    |   Wedding        | Flight          | -5     |30-6-2021     |   Delhi              |
    | vineeth  | @#$%^            | 987  | 567  |  4321  |    UK          |   male        |  K1234567    |   Interview      | Flight          | 1      | 30-6-2021      |  Mumbai              |
    | vineeth  | abc@mail.com     | 987  |  675 |  6789  |    Malaysia    |   male        |  K1234567    |   Funeral        | Flight          | 1      | 30-6-2021     |  Mumbai            |
    | vineeth  | abc@mail.com     | 128  | 567  |  6789  |    Maldives    |   others      | K1234567     |   Exams          | Flight          | -5     | 30-7-2021         |   Delhi             |
    
      
    
    @travelValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth  | abc@mail.com     | 123  | 456  | 7876   |    UAE         |   male        |  K1234567    |   Vaccination    | Flight          | 2      | 30-7-2021   |  HI WELCOME  hello   |
    | vineeth | abc@mail.com     | 127  | 565  |  5667  |    USA         |   female      |  K1234567    |   Wedding        | ship            | -5     |30-6-2021     |   Delhi              |
    | vineeth | abc@mail.com     | 987  |  675 |  6789  |    Malaysia    |   male        |  K1234567    |   Funeral        | Personal Jet    | 1      | 30-6-2021     |             |
    
      
    
    @countmembersValidates
  Scenario Outline: Submit invalid name Epass form data and validate errors
    Given User is on Epass country form page
    When User enters name "<name>"
    And User enters email "<email>"
    And User enters mobile number as "<mob1>", "<mob2>", "<mob3>"
    And User selects country from "<dropdown>"
    And User selects gender as "<gender>"
    And User enters passport number "<passport>"
    And User checks virus tested checkbox
    And User selects "<reason>" and "<travel>" mode
    And User enters members count "<count>"
    And User enters date "<date>"
    And User enters information in "<Anythingtosay>"
    Then User submits the form

  Examples:
    | name   | email            | mob1 | mob2 | mob3   |   dropdown     |   gender      |  passport    |   reason         | travel          | count  | date        | Anythingtosay        |
    | vineeth | abc@mail.com     | 123  | 456  | 7876   |    UAE         |   male        |  K1234567    |   Vaccination    | Flight          | 2      | 30-7-2021   |  HI WELCOME  hello   |
    | vineeth  | abc@mail.com     | 127  | 565  |  5667  |    USA         |   female      |  K1234567    |   Wedding        | Ship            | -5     |30-6-2021     |   Delhi              |
    
    