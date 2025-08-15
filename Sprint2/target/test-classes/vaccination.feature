Feature: vaccination Form Submission

@Somke
Scenario: To validate name field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |   sagar     | bp     |
| Bashetty | abc@gmail.com| 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |    no       | normal |
| 1234   | abc@gmail.com| 21 | 123    |  456   |  7890  |  Amp      | female   | 123423454567 |    normal   |  no    |
| @#$%   | abc@gmail.com| 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |    no       | normal |
| Vineeth  | abc@gmail.com| 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |    normal   | normal |
|        | abc@gmail.com| 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |    normal   | no     |



@vaccineemail
Scenario: To validate email field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |   
| vineeth | abc@gmail.com| 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |
| vineeth  | 12345        | 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |
| vineeth  | @#%^$&       | 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |
| vineeth | bunty        | 21 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |



@vaccineage
Scenario: To validate age field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |   
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |
| vineeth  | abc@gmail.com| 0  | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |
| vineeth | abc@gmail.com| -1 | 123    |  456   |  7890  |  Amp      | male     | 123423454567 |



@vaccinemobile
Scenario: To validate mobile field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |   
| vineeth  | abc@gmail.com|18  | 123    |  456   |  789   |  Amp      | male     | 123423454567 |
| vineeth  | abc@gmail.com|18  | sss    |  45t   |  7890  |  Amp      | female   | 123423454567 |
| vineeth | abc@gmail.com|18  | 123    |  456   |        |  Amp      | others   | 123423454567 |



@vaccineaddress
Scenario: To validate addresss field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |   
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |           | male     | 123423454567 |
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |   2345    | male     | 123423454567 |


@vaccinegender
Scenario: To validate gender field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |  sugar     |   bp       |
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |   hyd     | male     | 123423454567 |   normal   |   normal   |
| vineeth | abc@gmail.com|18  | 123    |  456   |  7890  |   hyd     | female   | 123423454567 |     no     |    no      |
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |   hyd     | others   | 123423454567 |   normal   |   normal   |


@vaccineaadhar
Scenario: To validate aadhaar field
Given User is on the vaccination form page
When User enters Name as "<name>"
And User enters Email as "<email>"
And User enters Age as "<age>"
And User enters Mobile as "<mob1>", "<mob2>", "<mob3>"
And User enters Address as "<address>"
And User selects Gender as "<gender>"
And User enters Aadhaar Number as "<aadhaar>" 
And User click Sugar Level as "<sugar>"
And User chick Blood Pressure as "<bp>"
And User clicks on Submit button
Then form should be submitted succesfully
Examples:
|  name  |   email      | age|  mob1  |  mob2  |  mob3  |  address  |  gender  |  aadhaar     |   
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |   hyd     | male     | 123423454    |
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |   hyd     | female   | vineeth        |
| vineeth  | abc@gmail.com|18  | 123    |  456   |  7890  |   hyd     | others   | @#$%^        |

