//
//  ViewController.m
//  testsuanfa
//
//  Created by pdmi on 2020/7/29.
//  Copyright © 2020 pdmi. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "TestObj.h"
#import "MyObj.h"
#import "MyView.h"
#import "Producer.h"
#import "Consumer.h"
int global_var=4;

static int static_global_var =4;
@interface ViewController ()
@property(nonatomic)NSInteger num;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSMutableArray *arr;
@end

@implementation ViewController

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return YES;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    return self.view;
}

- (void)onStart
{
    NSLog(@"start %@",self.navigationItem.title);
   // [NSThread detachNewThreadSelector:@selector(onThread:) toTarget:self withObject:nil];
    [self onThread:nil];
    
}
 
- (void)onThread:(id)sneder
{
    NSLog(@"run ...");
   // self.workerThread_NS = [NSThread currentThread];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(onCheckNSTask:) userInfo:nil repeats:YES];
   // [[NSRunLoop currentRunLoop] run];
    NSLog(@"over");
}
- (void)onCheckNSTask:(id)sender
{
    NSLog(@"checking ..");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self onStart];
    return;;
    
    
    NSArray *arr1=[[NSArray alloc] initWithObjects:@"1",@"2", nil];
    NSMutableArray *arr2=[arr1 mutableCopy];
    [arr2 addObject:@"3"];
    NSArray *arr3=[arr1 copy];
    
    NSMutableArray *mArr=[[NSMutableArray alloc] initWithObjects:@"1",@"2", nil];
    NSMutableArray *mArr2=[mArr copy];
    
    
    
    
    
   // NSString *str=@"124";
//    int testNUm=0;
//    NSMutableArray *arr2=[[NSMutableArray alloc] initWithObjects:@"123", nil];
//    int (^Block)(int)=^int(int num){
//        [arr2 addObject:@"789"];
//        NSLog(@"%@",arr2);
//        self->_arr=[[NSMutableArray alloc] init];
//        return num*static_global_var;
//
//    };
//    [arr2 addObject:@"456"];
//    Block(2);
//    NSLog(@"%@",arr2);
    
//    str=@"456";
//    static_global_var=8;
//    NSLog(@"result is %d",Block(2));
    
//    [MyObj testObject];
//    dispatch_sync(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"1");
//        [self performSelector:@selector(test) withObject:nil afterDelay:0];
//        NSLog(@"3");
//    });
    
    
//    dispatch_queue_t queue = dispatch_queue_create("queue", DISPATCH_QUEUE_CONCURRENT);
//       dispatch_async(queue, ^{
//
//           sleep(1);
//           NSLog(@"休眠1s，执行栅栏前的任务");
//       });
//
//       dispatch_async(queue, ^{
//
//           sleep(2);
//           NSLog(@"休眠2s，执行栅栏前的任务");
//       });
//
//
//       //栅栏前所有任务执行完毕，才开始执行这个方法
//       dispatch_barrier_sync(queue, ^{
//
//           sleep(2);
//           NSLog(@"执行栅栏的任务");
//       });
//       NSLog(@"执行栅栏后不在一个队列方法");
//       //执行完栅栏的方法，
//       dispatch_async(queue, ^{
//
//           sleep(1);
//           NSLog(@"休眠1s，执行栅栏后的任务");
//       });
//
//       dispatch_async(queue, ^{
//
//           sleep(2);
//           NSLog(@"休眠2s，执行栅栏后的任务");
//       });
//
//
//
//    return;
//    NSLog(@"1");
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"2");
//        dispatch_sync(dispatch_get_global_queue(0, 0), ^{
//            NSLog(@"3");
//
//        });
//        NSLog(@"4");
//    });
//    NSLog(@"5");
    
    
//    TestObj*obj=[[TestObj alloc] init];
//    [obj addObserver:self forKeyPath:@"sex" options:NSKeyValueObservingOptionNew context:nil];
//    [obj setValue:@"女" forKey:@"sex"];
    
//    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_sync(queue, ^{
//        sleep(10);
//        NSLog(@"11111");
//    });
//    dispatch_async(queue, ^{
//        sleep(10);
//        NSLog(@"2222");
//    });
//    NSLog(@"3333");
//    dispatch_async(queue, ^{
//        NSLog(@"4444");
//        sleep(10);
//
//    });
    
    
//    dispatch_queue_t quene = dispatch_queue_create("yc", DISPATCH_QUEUE_SERIAL);
//    NSLog(@"当前线程%@",[NSThread currentThread]);
//    dispatch_async(quene, ^{
//        NSLog(@"1号我在哪里啊-----%@",[NSThread currentThread]);
//    });
//
//    dispatch_barrier_sync(quene, ^{
//        NSLog(@"栅栏操作线程------%@",[NSThread currentThread]);
//        for (int i = 0; i < 1 ; i++) {
//                   NSLog(@"我是分割线、来自线程：%@",[NSThread currentThread]);
//               }
//    });
//
//    dispatch_async(quene, ^{
//
//        NSLog(@"2号我在哪里啊-----%@",[NSThread currentThread]);
//    });
//
//    dispatch_async(quene, ^{
//        NSLog(@"3号我在哪里啊-----%@",[NSThread currentThread]);
//
//    });
//
//    dispatch_async(quene, ^{
//        NSLog(@"4号我在哪里啊-----%@",[NSThread currentThread]);
//    });
//    NSLog(@"结束啦");
   
    
    MyView *view=[[MyView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:view];
//    [view addObserver:self forKeyPath:@"sex" options:NSKeyValueObservingOptionNew context:nil];
//    [view addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    
    
//    FirstViewController *first=[[FirstViewController alloc] init];
//    first.view
//
//    FirstViewController *second=[[FirstViewController alloc] init];
//
//    __block int i=10;
//    static int j=10;
//    self.num=10;
//    self.name=@"张三";
//    __weak typeof(self) weakSelf=self;
//    void (^testBlock)(void)=^(void){
//        i=11;
//        weakSelf.num=11;
//        weakSelf.name=@"李四";
//        NSLog(@"%d %d %ld  %@",i,j, weakSelf.num,weakSelf.name);
//
//    };
//    i=13;
//    j=14;
//    self.num=14;
//    self.name=@"六五";
//    testBlock();
//
//     NSLog(@"%d %ld %@",i,self.num,self.name);
    
//    NSMutableArray * array = [NSMutableArray arrayWithObjects:@8,@7,@6,@5,@4,@3,@2,@1, nil];
//    //调用排序
//    [self mergeSortArray:array];
    
    typedef  NSString * (^MyBlock)(NSString *str);
    
   
    int a = 1;
//    MyBlock block = ^(NSString *str){
//        NSLog(@"block 0:%i", a);
//        NSLog(@"处理一些无关于外部属性的事务");
//        return str;
//    };
//    block(@"");
   // NSLog(@"block类型%@",block);
    
       NSLog(@"block类型%@",^{ NSLog(@"block 0:%i", a); });
    
   int age = 10;  //auto局部变量
   void(^block2)(void) = ^{
       NSLog(@"age = %d",age);
   };
   NSLog(@"%@",[block2 class]);
    
//    NSCondition *condition=[NSCondition new];
//    NSMutableArray *products=[[NSMutableArray alloc] init];
//    
//    
//    Producer *p = [[Producer alloc]initWithConditon:condition collector:products];
//    Consumer *c = [[Consumer alloc]initWithConditon:condition collector:products];
//    [[[NSThread alloc] initWithTarget:p selector:@selector(produce) object:p] start];
//    [[[NSThread alloc] initWithTarget:c selector:@selector(consumer) object:c] start];
//    
    
    
    
    
    
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        [condition lock];
//        while ([products count]==0) {
//            NSLog(@"wait for product");
//            [condition wait];;
//        }
//        [products removeObjectAtIndex:0];
//        NSLog(@"custom a product");
//        [condition unlock];
//
//    });
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//
//        [condition lock];
//        [products addObject:[[NSObject alloc]init]];
//        NSLog(@"produce a product");
//        [condition signal];
//        [condition unlock];
//
//    });
    
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//           [condition lock];
//           [products addObject:[[NSObject alloc]init]];
//           NSLog(@"produce a product");
//           [condition signal];
//           [condition unlock];
//
//       });
    
    
    // Do any additional setup after loading the view.
}
-(void)test{
    NSLog(@"2");
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"sex"]) {
        NSLog(@"%@",[change objectForKey:@"new"]);
    }
    
}


#pragma mark -归并排序
//对数组进行递归二分，然后再合并比较
- (void)mergeSortArray:(NSMutableArray *)array {
  //创建一个副本数组
  NSMutableArray * auxiliaryArray = [[NSMutableArray alloc]initWithCapacity:array.count];

  //对数组进行第一次二分，初始范围为0到array.count-1
  [self mergeSort:array auxiliary:auxiliaryArray low:0 high:array.count-1];
}
- (void)mergeSort:(NSMutableArray *)array auxiliary:(NSMutableArray *)auxiliaryArray low:(int)low high:(int)high {
  //递归跳出判断
  if (low>=high) {
    return;
  }
  //对分组进行二分
  int middle = (high - low)/2 + low;

  //对左侧的分组进行递归二分 low为第一个元素索引，middle为最后一个元素索引
  [self mergeSort:array auxiliary:auxiliaryArray low:low high:middle];

  //对右侧的分组进行递归二分 middle+1为第一个元素的索引，high为最后一个元素的索引
  [self mergeSort:array auxiliary:auxiliaryArray low:middle + 1 high:high];

  //对每个有序数组进行回归合并
  [self merge:array auxiliary:auxiliaryArray low:low middel:middle high:high];
}
- (void)merge:(NSMutableArray *)array auxiliary:(NSMutableArray *)auxiliaryArray low:(int)low middel:(int)middle high:(int)high {
  //将数组元素复制到副本
  for (int i=low; i<=high; i++) {
    auxiliaryArray[i] = array[i];
  }
  //左侧数组标记
  int leftIndex = low;
  //右侧数组标记
  int rightIndex = middle + 1;

  //比较完成后比较小的元素要放的位置标记
  int currentIndex = low;

  while (leftIndex <= middle && rightIndex <= high) {
    //此处是使用NSNumber进行的比较，你也可以转成NSInteger再比较
    if ([auxiliaryArray[leftIndex] compare:auxiliaryArray[rightIndex]]!=NSOrderedDescending) {
        //左侧标记的元素小于等于右侧标记的元素
        array[currentIndex] = auxiliaryArray[leftIndex];
        currentIndex++;
        leftIndex++;
    }else{
        //右侧标记的元素小于左侧标记的元素
        array[currentIndex] = auxiliaryArray[rightIndex];
        currentIndex++;
        rightIndex++;
    }
  }
  //如果完成后左侧数组有剩余
  if (leftIndex <= middle) {
     for (int i = 0; i<=middle - leftIndex; i++) {
        array[currentIndex +i] = auxiliaryArray[leftIndex +i ];
    }
  }
    NSLog(@"%@ %@",auxiliaryArray,array);
 }
//@8,@7,@6,@5,@4,@3,@2,@1
#pragma mark -二分查找
// 在某个数组中搜索目标

- (NSInteger)binarySearchTarget:(NSInteger)target inArray:(NSArray *)arr{

    if (arr.count < 1) {

        //数组无元素,返回-1;

        return -1;

    }

    // 定义三个变量 第一个值下标、中间值下标、最后一个值下标

    NSInteger start = 0;

    NSInteger end = arr.count - 1;

    NSInteger mind = 0;

    // 进行循环 // 数组中第一个对象和最后一个对象之前还有其他对象则进行循环

    while (start < end - 1) {

        //会有一些朋友看到有些人是( start + end ) / 2这样写的,但是这样写有一点不好,就是start+end会出现整数溢出的情况,如果存在溢出,你再除以2也是没有用的,所以不能这么写

        mind = start + (end - start) / 2;

        // 如果中间值大于目标值

        if ([arr[mind] integerValue]> target) {

            end = mind; // 中间值做为最后一个值，在前半段再进行相同的搜索

        }else{

            start = mind;

        }

    }

    // 如果第一个值和目标值相等则获取第一个值的下标

    if ([arr[start] integerValue] == target) {

        return start;

    }

    // 如果最后一个值和目标值想等则获取最后一个下标

    if ([arr[end] integerValue] == target) {

        return end;

    }

    return -1;

}
#pragma mark -快速排序
//找出一个基准元素，从后开始找比它大的进行替换，从前开始找比它小的进行替换，一直循环遍历。循环截止后左侧的都比基准数小，右侧的都比基准数大，然后再递归比较两侧的值
- (void)quickSortArray:(NSMutableArray *)array withLeftIndex:(NSInteger)leftIndex andRightIndex:(NSInteger)rightIndex
{
    if (leftIndex >= rightIndex) {//如果数组长度为0或1时返回
        return ;
    }
    NSInteger i = leftIndex;
    NSInteger j = rightIndex;
    //记录比较基准数
    NSInteger key = [array[i] integerValue];
    
    while (i < j) {
        /**** 首先从右边j开始查找比基准数小的值 ***/
        while (i < j && [array[j] integerValue] >= key) {//如果比基准数大，继续查找
            j--;
        }
        //如果比基准数小，则将查找到的小值调换到i的位置
        array[i] = array[j];
        
        /**** 当在右边查找到一个比基准数小的值时，就从i开始往后找比基准数大的值 ***/
        while (i < j && [array[i] integerValue] <= key) {//如果比基准数小，继续查找
            i++;
        }
        //如果比基准数大，则将查找到的大值调换到j的位置
        array[j] = array[i];
        
    }
    
    //将基准数放到正确位置
    array[i] = @(key);
    
    /**** 递归排序 ***/
    //排序基准数左边的
    [self quickSortArray:array withLeftIndex:leftIndex andRightIndex:i - 1];
    //排序基准数右边的
    [self quickSortArray:array withLeftIndex:i + 1 andRightIndex:rightIndex];
}
#pragma mark - 冒泡排序
-(void)sortWithMaoPao{
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@1,@5,@2,@4,@3, nil];
   
    for (int i = 0; i < arr.count; i ++) {
        
        for (int j = 0; j < arr.count - i - 1;j ++ ) {
            if (arr[j] > arr[j+1]) {
                [arr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                    
                }
            }
          
          }
    
    //第一次排序完成，最大的数在最后面
    NSLog(@"最终结果：%@",arr);
    
    
}

#pragma mark -选择排序
//第一趟排序找到最小的，然后和第一个位置进行替换，依次进行
- (NSArray *)selectAlgorithm:(NSArray *)array{
    NSMutableArray *tempArray = [NSMutableArray arrayWithArray:array];
    NSInteger count = tempArray.count;
    int index;
    for (int i = 0; i < count - 1; i ++) {
      index = i;
      for (int j = i + 1; j < count; j ++) {
          if (tempArray[index] > tempArray[j]) {
              index = j;
      }
    }

        if (index != i) {
              id temp = tempArray[i];
              [tempArray replaceObjectAtIndex:i withObject:tempArray[index]];
              [tempArray replaceObjectAtIndex:index withObject:temp];
      }
    }
  return tempArray;
}

#pragma mark -堆排序
- (void)heapSort:(NSMutableArray *)list
{
    NSInteger i ,size;
    size = list.count;
    //找出最大的元素放到堆顶
    for (i= list.count/2-1; i>=0; i--) {
        [self createBiggesHeap:list withSize:size beIndex:i];
    }
    
    while(size > 0){
        [list exchangeObjectAtIndex:size-1 withObjectAtIndex:0]; //将根(最大) 与数组最末交换
        size -- ;//树大小减小
        [self createBiggesHeap:list withSize:size beIndex:0];
    }
    NSLog(@"%@",list);
}

- (void)createBiggesHeap:(NSMutableArray *)list withSize:(NSInteger) size beIndex:(NSInteger)element
{
    NSInteger lchild = element *2 + 1,rchild = lchild+1; //左右子树
    while (rchild < size) { //子树均在范围内
        if ([list[element] integerValue] >= [list[lchild] integerValue] && [list[element] integerValue] >= [list[rchild]integerValue]) return; //如果比左右子树都大，完成整理
        if ([list[lchild] integerValue] > [list[rchild] integerValue]) { //如果左边最大
            [list exchangeObjectAtIndex:element withObjectAtIndex:lchild]; //把左面的提到上面
            element = lchild; //循环时整理子树
        }else{//否则右面最大
            [list exchangeObjectAtIndex:element withObjectAtIndex:rchild];
            element = rchild;
        }
        
        lchild = element * 2 +1;
        rchild = lchild + 1; //重新计算子树位置
    }
    //只有左子树且子树大于自己
    if (lchild < size && [list[lchild] integerValue] > [list[element] integerValue]) {
        [list exchangeObjectAtIndex:lchild withObjectAtIndex:element];
    }
}

@end
