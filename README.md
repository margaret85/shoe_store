# :sunflower: _Happy Feet_ :sunflower:

#### _A program to track shoe brands and the stores they are in, 9.29.2017_

#### By _**Margaret Berry**_

## Description
_This app tracks keeps track of information about shoes, including prices and where they are sold. A store can sell many brands of shoes, and a brand can also be sold at many different stores._

## User Stories
* _As a user, I want to be able to add, update, delete and list shoe stores._
* _As a user, I want to be able to add and list new shoe brands. Shoe brands should include price._
* _As a user, I want to be able to add shoe brands in the application._
* _As a user, I want to be able to add existing shoe brands to a store to show where they are sold._
* _As a user, I want to be able to associate the same brand of shoes with multiple stores._
* _As a user, I want to be able to see all of the brands a store sells on the individual store page._
* _As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them._
* _As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)_
* _As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name._
* _As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone._
* _As a user, I want store and brand names to have a maximum of one hundred characters._

## Specifications
| Spec                                                      | Input             | Output                                                 |
|-----------------------------------------------------------|-------------------|--------------------------------------------------------|
| Shows a store on the homepage when added                  | Caterpillar Shoes | Stores: Caterpillar Shoes                              |
| Shows a brand on the homepage when added                  | Cheetah           | Brands: Cheetah                                        |
| Shows a the brands a store sells on its page              | Cheetah           | Store: Caterpillar Shoes, Brands: Cheetah              |
| Shows a the stores where a brand is available on its page | Caterpillar Shoes | Brand: Cheetah Stores: Caterpillar Shoes               |
| Allows you to add multiple stores to a brand              | Undefeetable      | Brand: Cheetah Stores: Caterpillar Shoes, Undefeetable |
| Allows you to add multiple brands to a store              | Puma              | Store: Caterpillar Shoes, Brands: Cheetah, Puma        |

## Setup/Installation Requirements
* _Install Shoe Store by cloning this repository._

## Known Bugs
_There are no known bugs at this time._

## Support and contact details
_If you have questions, comments, or concerns, please contact [Margaret](codeberry1@gmail.com).  Feel free to make a contribution to the code._

## Technologies Used
* _Bootstrap_
* _Ruby_
* _Sinatra_
* _Postgres_
* _SQL_
* _ActiveRecord_

### License

*This software is licensed under the MIT license.*

Copyright (c) 2017 **_Margaret Berry_**
