//
//  main.m
//  Blocos
//
//  Created by ALS on 06/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import <Cocoa/Cocoa.h>
NSString* (^replaceWhiteSpaces)(NSString* info) = ^NSString*(NSString* info){
    NSString *str;
    str = [info stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return str;
};

int main(int argc, char *argv[])
{
    NSString* str = replaceWhiteSpaces(@"123 456");
    NSLog(@"%@",str);
    NSString* name = @"Victor Cotrim\n";
    NSString* book = @"Os cinco aneis\n";
    NSString* filme= @"Desventuras em serie\n";
    
    NSMutableString* result = [[NSMutableString alloc] init];
    name = replaceWhiteSpaces(name);
    [result appendString:name];
    book = replaceWhiteSpaces(book);
    [result appendString:book];
    filme = replaceWhiteSpaces(filme);
    [result appendString:filme];
    
    NSLog(@"%@",result);
    
    return NSApplicationMain(argc, (const char **)argv);
}
