//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  IAPManager.m
//  Classes
//
//  Created by Marcel Ruegenberg on 22.11.12.
//  Copyright (c) 2012 Dustlab. All rights reserved.
//

#import "WKSensitivityImportanceGrElementQuery.h"
#include <netdb.h> // needed for reachability test

@interface WKSensitivityImportanceGrElementQuery () <SKProductsRequestDelegate, SKPaymentTransactionObserver>
@property (strong) NSMutableArray *purchasedItems;
@property (strong) NSMutableDictionary *products;
@property BOOL purchasedItemsChanged;

@property (strong) NSMutableArray *productRequests;
@property (strong) NSMutableArray *refproductRequests;
@property (strong) NSMutableArray *payments;

@property (strong) NSMutableArray *purchasesChangedCallbacks;

@property (copy) RestorePurchasesCompletionBlock restoreCompletionBlock;
@property (copy) ErrorBlock restoreErrorBlock;

@end

NSURL *purchasesURL() {
    NSURL *appDocDir = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    return [appDocDir URLByAppendingPathComponent:@".purchases.plist"];
}

// simple reachability. Could also use one of the various Reachability Cocoapods, but why bother when it's so simple?
BOOL checkAppStoreAvailable() {
    const char *hostname = "appstore.com";
    struct hostent *hostinfo = gethostbyname(hostname);
    if (hostinfo == NULL) {
#ifdef DEBUG
        NSLog(@"-> no connection to App Store!\n");
#endif
        return NO;
    }
    return YES;
}

@implementation WKSensitivityImportanceGrElementQuery

+ (WKSensitivityImportanceGrElementQuery *)sharedIAPManager {
    static WKSensitivityImportanceGrElementQuery *sharedInstance;
    if(sharedInstance == nil) sharedInstance = [WKSensitivityImportanceGrElementQuery new];
    return sharedInstance;
}

- (id)init {
    if((self = [super init])) {
        self.purchasedItems = [NSMutableArray arrayWithContentsOfURL:purchasesURL()];
        if(self.purchasedItems == nil) {
            self.purchasedItems = [NSMutableArray array];
		}
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willResignActive:) name:UIApplicationWillResignActiveNotification object:nil];
        [[SKPaymentQueue defaultQueue] addTransactionObserver:self];

        self.products = [NSMutableDictionary dictionary];
        self.productRequests = [NSMutableArray array];
        self.payments = [NSMutableArray array];
        self.purchasesChangedCallbacks = [NSMutableArray array];
    }
    return self;
}

- (void)persistPurchasedItems {
  BOOL success = [self.purchasedItems writeToURL:purchasesURL() atomically:YES];
  if(! success) {
      NSLog(@"Saving purchases to %@ failed!", purchasesURL());
  }

    NSString *msph = @"msph_str";
    msph = nil;
}

- (void)willResignActive:(NSNotification *)notification {
    if(self.purchasedItemsChanged) {
      [self persistPurchasedItems];
    }

    NSString *cxku = @"cxku_str";
    cxku = nil;
}

- (BOOL)hx_hasPurchased:(NSString *)productID {
    return [self.purchasedItems containsObject:productID];
}

#pragma mark - Product Information

- (void)hx_getProductsForIds:(NSArray *)productIds completion:(ProductsCompletionBlock)completionBlock error:(ErrorBlock)error {
    NSMutableArray *result = [NSMutableArray array];
    NSMutableSet *remainingIds = [NSMutableSet set];
    for(NSString *productId in productIds) {
        if([self.products objectForKey:productId])
            [result addObject:[self.products objectForKey:productId]];
        else
            [remainingIds addObject:productId];
    }
    
    if([remainingIds count] == 0) {
        completionBlock(result);
        return;
    }

    if (! error)
        error = ^(NSError *error){};
    
    SKProductsRequest *req = [[SKProductsRequest alloc] initWithProductIdentifiers:remainingIds];
    req.delegate = self;
    [self.productRequests addObject:@[req, completionBlock, error]];
    [req start];

    NSString *iiib = @"iiib_str";
    iiib = nil;
}

- (void)hx_RefreshRequest:(RestorePurchasesCompletionBlock)completionBlock
{
    SKReceiptRefreshRequest* lsrequest = [[SKReceiptRefreshRequest alloc] init];
    lsrequest.delegate = self;
     self.refproductRequests = [[NSMutableArray alloc]init];
     [self.refproductRequests addObject:completionBlock];
    [lsrequest start];
   
    

    NSString *pcfc = @"pcfc_str";
    pcfc = nil;
}

- (void)requestDidFinish:(SKRequest *)request
{
    if (self.refproductRequests.count>0)
    {
        RestorePurchasesCompletionBlock Blockcompletion = [self.refproductRequests objectAtIndex:0];
        Blockcompletion();
    }
    

    NSString *agiy = @"agiy_str";
    agiy = nil;
}


- (void)hx_getProductsForIds:(NSArray *)productIds completion:(ProductsCompletionBlock)completionBlock {
    [self hx_getProductsForIds:productIds completion:completionBlock error:nil];

    NSString *ythz = @"ythz_str";
    ythz = nil;
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSUInteger c = [self.productRequests count];
    for(int i = 0; i < c; ++i) {
        NSArray *tuple = [self.productRequests objectAtIndex:i];
        if([tuple objectAtIndex:0] == request) {
            ProductsCompletionBlock completion = [tuple objectAtIndex:1];
            completion(response.products);
            [self.productRequests removeObjectAtIndex:i];
            return;
        }
    }
    if (self.refproductRequests.count>0)
    {
        RestorePurchasesCompletionBlock completion = [self.refproductRequests objectAtIndex:0];
        completion();
    }

    NSString *aihn = @"aihn_str";
    aihn = nil;
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error {
    NSUInteger c = [self.productRequests count];
    for(int i = 0; i < c; ++i) {
        NSArray *tuple = [self.productRequests objectAtIndex:i];
        if([tuple objectAtIndex:0] == request) {
            ErrorBlock errorBlock = [tuple objectAtIndex:2];
            errorBlock(error);
            [self.productRequests removeObjectAtIndex:i];
            return;
        }
    }
}

#pragma mark - Purchase

- (void)hx_restorePurchases {
    [self hx_restorePurchasesWithCompletion:nil];

    NSString *ksig = @"ksig_str";
    ksig = nil;
}

- (void)hx_restorePurchasesWithCompletion:(RestorePurchasesCompletionBlock)completionBlock {
    self.restoreCompletionBlock = completionBlock;
    return [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

- (void)hx_restorePurchasesWithCompletion:(RestorePurchasesCompletionBlock)completionBlock error:(ErrorBlock)err {
    self.restoreErrorBlock = err;
    [self hx_restorePurchasesWithCompletion:completionBlock];

    NSString *tzey = @"tzey_str";
    tzey = nil;
}

- (void)hx_purchaseProduct:(SKProduct *)product completion:(PurchaseCompletionBlock)completionBlock error:(ErrorBlock)err {
#ifdef SIMULATE_PURCHASES
    [self.purchasedItems addObject:product.productIdentifier];
    self.purchasedItemsChanged = YES;
    for(NSArray *t in self.purchasesChangedCallbacks) {
        PurchasedProductsChanged callback = t[0];
        callback();
    }
    [self persistPurchasedItems];
    completionBlock(NULL);
#else
    if(! [self hx_canPurchase])
        err([NSError errorWithDomain:@"WKSensitivityImportanceGrElementQuery" code:0 userInfo:[NSDictionary dictionaryWithObject:@"Can't make payments" forKey:NSLocalizedDescriptionKey]]);
    else {
        SKPayment *payment = [SKPayment paymentWithProduct:product];
        [self.payments addObject:@[payment.productIdentifier, completionBlock, err]];
        [[SKPaymentQueue defaultQueue] addPayment:payment];
    }
#endif

    NSString *iwyl = @"iwyl_str";
    iwyl = nil;
}

- (void)hx_purchaseProduct:(SKProduct *)product ExtraStr:(NSString *)extrastr completion:(PurchaseCompletionBlock)completionBlock error:(ErrorBlock)err {
#ifdef SIMULATE_PURCHASES
    [self.purchasedItems addObject:product.productIdentifier];
    self.purchasedItemsChanged = YES;
    for(NSArray *t in self.purchasesChangedCallbacks) {
        PurchasedProductsChanged callback = t[0];
        callback();
    }
    [self persistPurchasedItems];
    completionBlock(NULL);
#else
    if(! [self hx_canPurchase])
        err([NSError errorWithDomain:@"WKSensitivityImportanceGrElementQuery" code:0 userInfo:[NSDictionary dictionaryWithObject:@"Can't make payments" forKey:NSLocalizedDescriptionKey]]);
    else {
        
        if([[UIDevice currentDevice].systemVersion doubleValue]>=7.0)
        {
            SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:product];
            payment.applicationUsername = extrastr;
            [self.payments addObject:@[payment.productIdentifier, completionBlock, err]];
            [[SKPaymentQueue defaultQueue] addPayment:payment];
        }
        else
        {
            SKPayment *payment = [SKPayment paymentWithProduct:product];
            [self.payments addObject:@[payment.productIdentifier, completionBlock, err]];
            [[SKPaymentQueue defaultQueue] addPayment:payment];
        }
        
    }
#endif

    NSString *nica = @"nica_str";
    nica = nil;
}

- (void)hx_purchaseProductForId:(NSString *)productId completion:(PurchaseCompletionBlock)completionBlock error:(ErrorBlock)err {
#ifdef SIMULATE_PURCHASES
    [self.purchasedItems addObject:productId];
    self.purchasedItemsChanged = YES;
    for(NSArray *t in self.purchasesChangedCallbacks) {
        PurchasedProductsChanged callback = t[0];
        callback();
    }
    [self persistPurchasedItems];
    completionBlock(NULL);
#else
    [self hx_getProductsForIds:@[productId] completion:^(NSArray *products) {
        if([products count] == 0) err([NSError errorWithDomain:@"WKSensitivityImportanceGrElementQuery" code:0 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"Didn't find products with ID %@", productId] forKey:NSLocalizedDescriptionKey]]);
        else [self hx_purchaseProduct:[products objectAtIndex:0] completion:completionBlock error:err];
    } error:^(NSError *error) {
        err(error);
    }];
#endif

    NSString *ellw = @"ellw_str";
    ellw = nil;
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions {
    BOOL newPurchases = NO;
    for(SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStateRestored: // sic!
            case SKPaymentTransactionStatePurchased: {
                [self.purchasedItems addObject:transaction.payment.productIdentifier];
                newPurchases = YES;
                [queue finishTransaction:transaction];
                break;
            }
            case SKPaymentTransactionStateFailed: {
                [queue finishTransaction:transaction];
                break;
            }
            case SKPaymentTransactionStatePurchasing: {
#ifdef DEBUG
                NSLog(@"%@ is being processed by the App Store...", transaction.payment.productIdentifier);
#endif
                break;
            }
            default: break;
        }
    }
    
    if(newPurchases) {
        [self persistPurchasedItems];
        self.purchasedItemsChanged = YES;
        
        for(NSArray *t in self.purchasesChangedCallbacks) {
            PurchasedProductsChanged callback = t[0];
            callback();
        }
    }
    
    for(SKPaymentTransaction *transaction in transactions) {
        // find the block and error block correspoding to this transaction
        NSUInteger c = [self.payments count];
        PurchaseCompletionBlock completion = nil;
        ErrorBlock err = nil;
        for(int i = 0; i < c; ++i) {
            NSArray *t = [self.payments objectAtIndex:i];
            if([t[0] isEqual:transaction.payment.productIdentifier]) {
                completion = t[1];
                err = t[2];
                break;
            }
        }
        
        switch (transaction.transactionState) {
            case SKPaymentTransactionStateRestored: // sic!
            case SKPaymentTransactionStatePurchased: {
                if(completion) completion(transaction);
                break;
            }
            case SKPaymentTransactionStateFailed: {
                if(err) err(transaction.error);
                break;
            }
            case SKPaymentTransactionStatePurchasing: {
                break;
            }
            default: break;
        }
    }

    NSString *qpaz = @"qpaz_str";
    qpaz = nil;
}

- (BOOL)hx_canPurchase {
    return [SKPaymentQueue canMakePayments] && checkAppStoreAvailable();
}

#pragma mark - Observation

- (void)hx_addPurchasesChangedCallback:(PurchasedProductsChanged)callback withContext:(id)context {
    [self.purchasesChangedCallbacks addObject:@[callback, context]];

    NSString *mkch = @"mkch_str";
    mkch = nil;
}

- (void)hx_removePurchasesChangedCallbackWithContext:(id)context {
    NSUInteger c = [self.purchasesChangedCallbacks count];
    for(NSInteger i = c - 1; i >= 0; --i) {
        NSArray *t = self.purchasesChangedCallbacks[i];
        if(t[1] == context) {
            [self.purchasesChangedCallbacks removeObjectAtIndex:i];
        }
    }

    NSString *ahll = @"ahll_str";
    ahll = nil;
}

-(void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error {
    if(self.restoreErrorBlock) {
        self.restoreErrorBlock(error);
    }
    self.restoreCompletionBlock = nil;
    self.restoreErrorBlock = nil;

    NSString *ndxy = @"ndxy_str";
    ndxy = nil;
}

- (void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue {
    if (self.restoreCompletionBlock) {
        self.restoreCompletionBlock();
    }
    self.restoreCompletionBlock = nil;
    self.restoreErrorBlock = nil;
}


//---code_s---


-(void)operationWithName:(NSString *)operation{
    NSArray *att = [NSArray arrayWithObjects:operation, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger operationIndex = [self getoperationNumber];
    [str appendString:att[operationIndex]];
    [self operationcommandWithoperation:@[@"operationsye",
                                @"operationprogarm",
                                @"operation"] withDoperationInfo:@{@"keoperationy":@"vaoperationlue"}];
}
-(NSInteger)getoperationNumber{
    NSArray *att = @[@"operation"];
    return [att count]-1;
}

-(void)operationcommandWithoperation:(NSArray *)att withDoperationInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"operation"];
    data = nil;
    UILabel *label =  [self getoperationLabelWithText:@"fucsoperation" withoperationTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getoperationLabelWithText:(NSString *)text withoperationTitleColor:(UIColor *)color{
    UILabel *operationLabel = [UILabel new];
    operationLabel.text = text;
    operationLabel.textColor = color;
    return operationLabel;
}
-(UITableView *)initoperationTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *operationHeaderView = [UIView new];
    operationHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:operationHeaderView];
    UIView *operationFootView = [UIView new];
    operationFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:operationFootView];
    return tableView;
}
-(void)initinverseContent{
    NSString *inversekey = [self getinverseDataSource:@"inverse"];
    NSMutableDictionary *inversedic = [[NSMutableDictionary alloc]init];
    [inversedic setObject:@[@"inverseop",@"pinverseioperationpi",@"uio_operation"] forKey:inversekey];
    NSArray *attinverseary = @[inversedic];
    attinverseary = nil;

    UIView *view = [self getshowinverseView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getinverseSlider];
    slider = nil;

}
-(NSString *)getinverseDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"inverse%@_operation",str];
}

-(UIView *)getshowinverseView{
    UIView *showinverseView = [[UIView alloc]init];
    showinverseView.backgroundColor = [UIColor yellowColor];
    showinverseView.alpha = 0.5;
    return showinverseView;
}
-(UISlider *)getinverseSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
