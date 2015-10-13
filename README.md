DBAccess iOS ORM
============

[DBAccess] is a fully featured and FREE to use ORM for iOS.

Replace CoreData whilst keeping your existing managed objects, but dump the predicates and long-winded syntax.

Instead use a simple and clean object syntax, with fast and concise inline queries.

DBAccess even has a conversion method to migrate your existing CoreData tables across.

Regularly updated and in constant use within many public applications it thrives on feedback from other developers and is supported by the authors via StackOverflow or directly via email.

It's mantra is simple, to be fast, simple to implement and the first choice for any developer.

## Getting started

Integrating [DBAccess] into your project could not be simpler. This guide should be all you need to get you started and wondering how you ever developed iOS apps without it.

Every effort has been made to ensure that you can get working as quickly as possible, from supporting as many data types as possible and working with your existing classes to an absolute bare minimum of configuration required to integrate the framework.

### Requirements

| DBAccess Version | Minimum iOS Target  |                                   Notes                                   |
|:--------------------:|:---------------------------:|:----------------------------:|:-------------------------------------------------------------------------:|
|          1.x.x         |            iOS 7            | Xcode 5 is required. |

###Install From Cocoapods

####To install it, simply add the following line to your Podfile:
```ruby
pod "DBAccess"
```

## Usage

### Setting up your project

Once you have added the DBAccess framework into your application, you will need to start it as soon as possible in your application lifecycle.  DBDelegate needs to be set as well, we recomend this is added to your application delegate.

```objective-c
// Objective-C
@interface AppDelegate : UIResponder <UIApplicationDelegate, DBDelegate>
```
```swift
// Swift
class AppDelegate: UIResponder, UIApplicationDelegate, DBDelegate
```
Then you need to start DBAccess early on:

```objective-c
// Objective-C
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [DBAccess setDelegate:self];
    [DBAccess openDatabaseNamed:@"myDatabase"];
    return YES;
}
```
```swift
// Swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
	
	DBAccess.setDelegate(self)
	DBAccess.setPersistSynthesizedProperties(true)
	DBAccess.openDatabaseNamed("myDatabase")
	
	return true
}
```
###Creating Data Objects
DBAccess objects are normal classes with properties defined on them, the ORM then inspects all these classes and mirrors their structure in a SQLite database. If you add or remove columns then the tables are updated to represent the current structure of the classes.

In Objective-C properties need to be implemented using `@dynamic`, this is to indicate to the ORM that it will control the fetching and setting of these values from the database, and in Swift the property is defined as `var dynamic`

####Example Object
`Objective-C`
```objective-c
//  Header File : Person.h
 
#import <DBAccess/DBAccess.h>

@interface Person : DBObject
 
@property NSString*         name;
@property int               age;
@property int               payrollNumber;
 
@end

// Source File : Person.m

#import "Person.h"
 
@implementation Person
 
@dynamic name,age, department,payrollNumber;
 
@end

```

## Requirements:

- CocoaPods 0.31
