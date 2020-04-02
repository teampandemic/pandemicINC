## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Allows players to play as the contagious COVID-19 virus. Players will chose a country to infect and have to battle against the clock to infect that country.
### App Evaluation
- **Category:** Game/Strategy
- **Mobile:** This app is mostly for mobile play but with effort could be transformed for PC play.
- **Story:** Allows players to play as the COVID-19 virus racing against the clock to infect a particular country.
- **Market:** Age 10+ should be able to play this game it is a click and play situation.
- **Habit:** This app is used as much a user wants used at the users leisure.
- **Scope:** Users choose a country, difficulty and play! 

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User chooses country
* User chooses difficulty
* User progress is saved

**Optional Nice-to-have Stories**

* Login for user 
* Profile for users
* Scoreboard for all user

### 2. Screen Archetypes


* Download - User downloads app.
   * Upon Download/Reopening of the application, the user is prompted with loading screen. 
   
* Home Screen - Allows players to click tutorial or jump into gameplay.
   * Upon selecting one option they are sent to how to screen or play screen.
* Play Screen
   * Prompts users to selcet country, difficulty, and then sends them to game screen.
* How to play Screen
   * Gives players a description of gameplay.
* Game. Screen
   * Players play screen.

### 3. Navigation


**Flow Navigation** (Screen to Screen)
* LoadingSscreen to -> Homescreen
* Home Screen if How to Play button is clicked -> How to Screen
* How to Screen -> Players learn how to play then click play -> Play Screen
* Home Screen if Play button is clicked -> Play Screen
* Play Screen -> User chooses gameplay

## Wireframes
<img src="https://imgur.com/hYJ7APv.png" width=800><br>

### Models

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | countryName   | String   | name identfier for countries |
   | population    | integer  | number of people in country  |
   | healthCare    | integer  | number that rates health care of country |
   | country       | object   | holds information on country defining spread of virus |
   | age           | integer  | gives overall age of country determines fatality of virus |
   | virus         | object   | holds attributes of virus |
   | game data     | object   | hold save data  |
   | difficulty    | object   | determines attributes of gameplay |
   
   ### Network
   
   ## N/A at the momment! If we find we need network capabilties we'll add them!
   --------------------
