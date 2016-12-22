//
//  main.m
//  lesson2
//
//  Created by lolo on 20.12.16.
//  Copyright © 2016 lolo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    addition,
    subtraction,
    multiplication,
    division
} CalculationType;

int myfunction(int firstval, int secondval, CalculationType calctype){
    int result;
    char sign;
    switch (calctype) {
        case 0:
            result = firstval+secondval;
            sign = '+';
            break;
        case 1:
            result = firstval - secondval;
            sign = '-';
            break;
        case 2:
            result = firstval * secondval;
            sign = '*';
            break;
        case 3:
            result = firstval/secondval;
            sign = '/';
            break;
        default:
            break;
    }
    NSLog(@"%i %c %i = %i",firstval,sign,secondval,result);
    return result;
}

NSUInteger quadMultiplier(NSUInteger value){ // unsigned long
    return value*4;
}
int myfact(int value){
    if (value <= 1)
        return 1;
    return value * myfact(value-1);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        int res = myfunction(4, 5, addition);
        res = myfunction(3, 6, subtraction);
        res = myfunction(7, 2, multiplication);
        res = myfunction(1, 5, division);
        NSUInteger quad;
        int iteration=0;
        for (int i=1; i<21; i++) {
            quad = quadMultiplier(i);
            iteration++;
            if (quad == 16){
                NSLog(@"Результат %i*4=16 выходим из цикла..",i);
                break;
            }
            if (quad%3 == 0){
                NSLog(@" Число %lu кратно трем!",quad);
            }else{
                NSLog(@"Число  %lu",quad);
                NSLog(@"Осталось %i итераций",20-iteration);
            }
            
        }
        NSLog(@"Всего итераций: %i",iteration);
        
        NSLog(@"Результат %i",myfact(5));
        
    }
    return 0;
}

