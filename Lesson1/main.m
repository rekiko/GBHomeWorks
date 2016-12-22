//
//  main.m
//  Lesson1
//
//  Created by lolo on 16.12.16.
//  Copyright © 2016 lolo. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MY_AGE 31
#define DAYS_IN_YEAR 365.25

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int myAgeInTenYears = MY_AGE + 10;
        float daysPassed = myAgeInTenYears * DAYS_IN_YEAR;
        unsigned firstVar = 18;
        unsigned secondVar = 14;
        float secondFVar = secondVar;
        int result = firstVar / secondVar;
        float resultF = firstVar / secondFVar;
        
        int remainder = firstVar % secondVar;
        NSString *firstString = @"I can";
        NSString *secondString = @"code";
        
        
        NSLog(@"Через 10 лет мне будет %i лет, с момента моего рождения пройдёт %.2f дней", myAgeInTenYears,daysPassed);
        NSLog(@"При делении %i на %i результат равен %i, остаток равен %i",firstVar,secondVar,result,remainder);
        NSLog(@"Результат деления %i на %i равен %i %i/%i",firstVar,secondVar,result,remainder,secondVar);
        NSLog(@"Результат деления %i на %.1f равен %.2f",firstVar,secondFVar,resultF);
        NSLog(@"%@ %@",firstString,secondString);

    }
    return 0;
}
