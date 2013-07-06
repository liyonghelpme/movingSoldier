content = {}
content[0]=
[[
# Another A+B
### Description
读入两个小于10000的正整数A和B，计算A+B。需要注意的是：如果A和B的最后K位数字都相同，请直接输出-1。（K不超过8）
### Input
测试输入包含若干测试用例，每个测试用例占一行，格式为"A B K"，相邻两数字有一个空格间隔。(1<=A,B<=10000)
当A和B同时为0时输入结束，相应的结果不要输出。
### Output
对每个测试用例输出1行，即A+B的值或者是-1。
### Sample Input
    
    
    1 2 1
    11 21 1
    108 8 2
    36 64 3
    0 0 1
    
### Sample Output
    
    
    3
    -1
    -1
    100
    
]]
content[1]=
[[
# average
### Description
给你n个数，请输出这n个数的平均数，方差
### Input
多组测试数据，对于每组测试数据(测试数据组数<=100)
首先是一个数n，表示接下来有n个数(n <= 100)
接着是n个数a1…an (可能不是整数，保证|ai| <= 1000)
直到文件结束
### Output
每组数据一行，两个数E, D分别为这n个数的平均数和方差，之间用一个空格分隔
保留小数点后5位
### Sample Input
    
    
    10
    1 1 1 1 1 1 1 1 1 1
    10
    1 1 1 1 1 1 1 1 1 1
    
### Sample Output
    
    
    1.00000 0.00000
    1.00000 0.00000
    
### Hint
EX = sum{ Xi } / n
DX = E(X - E(X))
]]
content[2]=
[[
# A ++ B
### Description
当你在小学学习算数的时候，老师会教你把两个数由右至左按位加起来。很多时候，加法过程中会出现进位。对于一部分孩子，理解这个“进位”在当时是很困难的事情。现在你
的工作就是编写一个程序来判断两个数相加的过程中会产生多少次进位，用以确定这两个数相加的“难度”。
### Input
每一行有两个无符号整数（最大不超过1000000000），当输入0 0的时候，程序结束。
### Output
对于每一行的输入两个整数，你需要判断会产生有多少个进位，每一个输出占一行。
### Sample Input
    
    
    123 456
    555 555
    123 594
    0 0
    
### Sample Output
    
    
    No carry operation.
    3 carry operations.
    1 carry operation.
    
]]
content[3]=
[[
# joseph
### Description
话说这次Joseph上次因为他的机智在Nazi的屠杀中得以幸免，而这次他又可能受到的外星人的迫害，快来帮帮他吧。这次连Joseph在内的n个人被排成一列，被
指定从最前面的人开始报数，报到最后一人后，再从倒数第二个人开始从后向前报数，报到第一个人，再从第2个人从前向后报数，以此类推，报到的数是m的倍数的人出列。J
oseph站在什么位置才能使他最后出列呢？
### Input
多组测试数据
对于每组测试数据，有两个数n，m表示队伍的长度和出列者报的编号(1 <= n <= 1000, 1 <= m <= 100000)
### Output
每组数据输出一行。
表示Joseph站在从前面开始数第k个位置可以保证他最后出列
### Sample Input
    
    
    1 100000
    1000 1
    
### Sample Output
    
    
    1
    1000
    
### Hint
如5个人，报到7出列，则具体过程为
    
    
    1				
    	2			
    		3		
    			4	
    				5
    			6	
    		7		
    	1	X		
    2		X		
    	3	X		
    		X	4	
    		X		5
    		X	6	
    		X		
    	7	X		
    1	X	X		
    	X	X	2	
    	X	X		3
    	X	X	4	
    5	X	X		
    	X	X	6	
    	X	X		7
    	X	X	1	X
    2	X	X		X
    	X	X	3	X
    4	X	X		X
    	X	X	5	X
    6	X	X		X
    	X	X	7	X
    
]]
content[4]=
[[
# homework
### Description
来不及了，来不及了，截至日期就要到了，可是作业还没有完成，怎么办怎么办？多来A梦急忙伸出”圆手”，将大雄变成了n个分身。现在大雄(们)要做的作业有m道题，由
于有些题目会用到其他题目的结果(可能第5道题目是：第3道题的结果加上第7到题目的结果，最后再减去第1到题目的结果，答案是多少)。并且大雄的某个分身一旦开始做
某个题目，直到把这个题目做完，他是无暇顾及别的题目的。并且大雄的每个分身的智力和做题的熟练程度都是相同的。聪明的你，请告诉大雄(们)，他(们)最快需要用多长
的时间，才能把题目都做完(如果不可能在截止日期前把题目做完，可能大雄(们)就要仗着人多势众，去欺负胖虎去了)
### Input
多组测试数据
对于每组测试数据，第1行是三个正整数n (1 <= n <= 1000,表示大雄的分身个数), m(1 <= m <= 1000,表示题目的个数)，k (1
<= k <= 1000000)距离交作业剩余的时间。
接下来是m行，第i+1行描述第i道题所用到的别的题目的结果。首先是一个整数c (0 <= c <= m)，表示第i道题目会用到c道题目的结果(0 <= c
<= 10)，接下来是c个正整数x1, .., xc分别为用到结果的题目编号(1 <= xj <= m)。
最后是一行m个正整数t1, .., tm，ti表示大雄的某个分身完成第i道题目所需的时间(1 <= ti <= 100)。
### Output
每组数据输出一行。
如果大雄不可能在截止日期前把所有题目做完(如落下的题目太多了，或者出现类似于第1题用到第二题结果，第二题用到第一题结果的情况)，则输出一行，”Panghu,
I’m coming!” (不含引号)，否则，输出一个整数表示大雄(们)最快需要多长时间才能把题目做完。
### Sample Input
    
    
    1 2 10000
    0
    0
    1 2
    
    2 2 10000
    0 
    0
    1 2
    
    2 2 10000
    1 2 
    0
    1 2
    
    2 2 1
    1 2
    1 1
    1 2
    
### Sample Output
    
    
    3
    2
    3
    Panghu, I’m coming!
    
### Hint
大雄还不会线性代数，还不知道可以用解方程(组)的方法确定题目的答案。
]]
content[5]=
[[
# Deter
### Description
大雄终于开始学习线性代数了，他刚学了线性代数中的行列式。就遇到了这道难题：计算下面的一个关于x的多项式中xn项的系数。
给定一个向量{ci}(1 <= ci <= n, i = 1, 2, .., n)
设行列式Dn = |aij|，满足以下条件
其中对于aij (j = 1..n)的值，当j = ci时，aij = x, 否则aij = i + j
那么，请你帮帮大雄，告诉他这道题目的答案：关于x的多项式Dn中xn项的系数。
### Input
多组测试数据，对于每组测试数据，先是一个正整数n (1 <= n <= 1000), 接下来是n个数，c1, c2, …, cn (1 <= ci <=
n, i = 1, 2, .., n)
### Output
每组测试数据输出一行，表示关于x的多项式Dn中xn项的系数。
### Sample Input
    
    
    1
    1
    
    2
    1 2
    
    2
    2 1
    
### Sample Output
    
    
    1
    1
    -1
    
]]
content[6]=
[[
# A+B problem
### Problem Description
计算A+B
### Input
第一个数为数据组数n,接下来n行，每行2个整数a,b(保证a+b在int范围内)
### Output
对于每组数据，输出一行，a+b的值
### Sample Input
    
    
    1
    1 2
    
### Sample Output
    
    
    3
    
]]
content[7]=
[[
# A+B Problem
#include <iostream>
using namespace std;
int main()
{
//你的程序
return 0;
}
]]
content[8]=
[[
# Hello World!
### Problem Description
大家的第一个c++程序想必都是Hello World吧，现在要求你打印出“能打印出Hello World的程序”！
### Input
无
### Output
如题所述
### Sample Input
无
### Sample Output
    
    
    #include <iostream>
    
    using namespace std;
    
    int main()
    {
    　　　　cout << "Hello World!" << endl;
    　　　　return 0;
    }
    
### Hint
缩进为4个空格，注意转义字符！
]]
content[9]=
[[
# 成绩转换
### Problem Description
输入一个百分制的成绩t，将其转换成对应的等级，具体转换规则如下：
90~100为A;
80~89为B;
70~79为C;
60~69为D;
0~59为E;
### Input
第一行是数据组数n,接下来n组，每组占一行，由一个整数组成。
### Output
对于每组输入数据，输出一行。如果输入数据不在0~100范围内，请输出一行：“Score is error!”。
### Sample Input
    
    
    4
    56
    67
    100
    123
    
### Sample Output
    
    
    E
    D
    A
    Score is error!
    
]]
content[10]=
[[
# 晴天小猪的数学题
### Problem Description
Party过几天就要举行了，可是晴天小猪还有一堆的数学作业没做。我们知道晴天小猪很笨，那么多的数学题他肯定做不完了，你能帮帮他吗？
晴天小猪这次的作业是解一元二次方程。给出系数a，b，c，请给出方程的结果。若方程无解，则输出“No
Answer”；若方程只有一个解，则输出该解；若方程有两个解，则输出这两个解的差的绝对值。
### Input
第一行为一个整数n，表示共有n组测试数据（1<=n<=100）。每组测试数据为一行，有三个整数a，b，c，代表三个系数，数据保证a，b，c为
-100~100 的整数且a不等于0。
### Output
对于每组输入数据，输出一行结果，结果保留2位小数。
### Sample Input
    
    
    2
    4 2 3
    1 2 1
### Sample Output
    
    No Answer
    -1.00
]]
content[11]=
[[
# 晴天小猪的圣诞节
### Problem Description
圣诞节马上就要到了，晴天小猪想在圣诞节之夜邀请他的好朋友来家里举办一个开心的party。晴天小猪有很多很多的好朋友：雨天小猪、晴天大猪、晴天胖猪•••可是他
的家比较小，不能把所有好朋友都请来，于是他决定只请他最好的朋友。
每个好朋友在晴天小猪心中都有一个好感度，这个好感度会是一个1~99999的整数，如果这个数反过来和本身一样（即回文数，比如11、131），那么这个好朋友就是
他最好的朋友。
现在小猪列出了所有好朋友的好感度，请告诉他他一共要请几个最好的朋友呢？
### Input
第一行为一个整数n，表示共有n组测试数据（1<=n<=100）。每组测试数据有两行，第一行为一个整数k，表示晴天小猪共有k个好朋友（1<=k<=100），第
二行有k个1~99999的整数，表示每个好朋友的好感度。
### Output
对于每组数据输出占一行，为最好的朋友个数ans。
### Sample Input
    
    3
    2
    121 45654
    3
    26 35 84
    1
    1
### Sample Output
    
    2
    0
    1
]]
content[12]=
[[
# 寻找ICPC之Special Judge
### 输入
能读到的全部，直到读到EOF为止。
### 输出
就 1 个数，为你找到的"ICPC"的个数（不区分大小写）。
### 样例输入
    
    
    afdajfdajfeurejvzbagfeqIcpCmfdasjueICPCfdafmbvczb
    
    i
    cpciCPcicpcicp
    
    c
    
### 样例输入
    
    4
]]
content[13]=
[[
# 晴天小猪的豆沙饼
### Problem Description
晴天小猪有很多的豆沙饼，他想在圣诞之夜用来招待他的好朋友，因为好朋友有很多，所以他想挑一块最大的出来。你能帮帮他找出最大的那块豆沙饼吗？
晴天小猪的豆沙饼都是长方形的，现在他知道每个豆沙饼的长和宽，请告诉他最大的豆沙饼的面积。
### Input
第一行为一个整数n，表示共有n组测试数据（1<=n<=100）。每组测试数据有若干行，对于每组数据第一行为一个整数k，表示晴天小猪共有k个豆沙饼（1<=k<
=100），接下来有k行，每行有两个1~100的整数a和b，表示每个豆沙饼的长和宽。
### Output
对于每组数据，输出一行，为最大的豆沙饼的面积。
### Sample Input
    
    
    1
    3
    30 30
    20 40
    10 50
### Sample Output
    
    900
]]
content[14]=
[[
# 晴天小猪的苹果树
### Problem Description
除了豆沙饼，晴天小猪还有一棵苹果树，他的苹果树很奇怪，只在冬天结果。现在树上挂满了苹果，小猪想去把他们全部摘光，可是很多苹果小猪都够不到，于是他找来了一个凳
子，有些苹果站在凳子上就能够到了。
现在告诉你苹果的个数和每个苹果的高度，还告诉小猪能够到的最大高度a和凳子的高度b，请告诉小猪他一共能摘到多少苹果以及依靠凳子摘到苹果数。
规定：若正好碰到也视为能摘下来。
### Input
第一行为一个整数n，表示共有n组测试数据（1<=n<=100）。每组测试数据有两行，第一行为三个整数k、a、b，表示树上共有k个苹果（1<=k<=100），
小猪能够到的最大高度a（1<=a<=999），凳子的高度b（1<=b<=999）。第二行有k个1~999的整数，表示每个苹果的高度。
### Output
对于每组输入数据，输出一行，为两个整数，表示一共摘到的苹果及依靠凳子摘到的苹果数，中间用空格隔开。
### Sample Input
    
    
    2
    3 100 30
    200 100 130
    2 100 10
    102 103
    
### Sample Output
    
    
    2 1
    2 2
]]
content[15]=
[[
# 晴天小猪的大冒险
### Problem Description
圣诞节终于到了，雨天小猪、晴天大猪、晴天胖猪等好朋友都来到了晴天小猪的家。吃完了丰盛的晚饭，他们开始玩游戏。第一个游戏是真心话大冒险，他们的规则是：主持人给
出一个圆的半径，要选手们立刻给出圆的面积和周长。晴天小猪不想被罚，你能帮帮他吗？
### Input
第一行为一个整数n，表示共有n组测试数据（1<=n<=100）。每组测试数据有一行，一个实数r，表示圆的半径（|r|<=100）。
### Output
对于每组输入数据输出一行，有两个整数，为圆的面积和周长，中间用空格隔开，保留小数点后2位。如果r<0，则输出”Impossible!”。
### Sample Input
    
    
    2
    1
    -1
    
### Sample Output
    
    
    3.14 6.28
    Impossible!
]]
content[16]=
[[
# 晴天小猪的绕口令
### Problem Description
第二个游戏是绕口令。规则是：主持人给出一串字符串，要求把这串字母简化。该串字符串全部为小写英文字母。
比如：aaabbbcc，则简化为3a3b2c；zzzzeeeeea，则简化为4z5e1a。依次类推。
最后一题了，帮帮晴天小猪哦。
注意：本题禁止使用数组和字符串。否则此题记0分。
### Input
第一行为一个整数n，表示共有n组测试数据（1<=n<=100）。每组测试数据有一行，该行第一个数为字符串长度t（ t <=
1,000,000）,然后为一行长度为t的字符串。
### Output
对于每组输入数据输出一行，即简化后的字符串。
### Sample Input
    
    
    3
    7 aaaaaaa
    4 abcd
    6 qwweee
    
### Sample Output
    
    
    7a
    1a1b1c1d
    1q2w3e
]]
content[17]=
[[
# N^N
### description
给你一个正整数n, 请输出 n^n (n的n次方)的个位数字.
### input
第一行是一个正整数T (1 <= T <= 100)，表示有T组数据。接下来的T行每行一个正整数n (1 <= n <= 12)
### output
对于每组数据，输出一个正整数k，表示n^n的最个位。
### sample input
    
    
    2
    3
    4
    
### sample output
    
    
    7
    6
    
### hint
    
    
    3 * 3 * 3 = 27 -> 7
    4 * 4 * 4 * 4 = 16 -> 6
    
]]
content[18]=
[[
# sort
### description
排序n个数，不准用系统的sort函数
为了避免误会，请不要在你的程序中出现sort这个单词! ( 具体说就是你的程序不要出现连续四个字母为sort )
### input
首先是一个数n，表示要排序的数有n个 (0 <= n <= 100000)
接着是n个数，分别为n个待排序的数。
### output
从小到大输出排序后的n个数，之间用空格分隔(最后一个数后有没有空格均可)。
### sample input
3
1 2 3
3
3 2 1
### sample output
1 2 3
1 2 3
### hint
huge input and output, scanf & printf recommanded.
]]
content[19]=
[[
# optimize
### Description
我们已经学了时间复杂度的概念，请读懂并改写下面的代码，使得他可以在1s内得到正确的结果。
    
    
    #include <cstdio>
    
    #define maxn 100000
    int a[maxn];
    
    int main(){
        int n;
        while ( scanf("%d", &n) == 1 ){
            long long res = 0;
            for (int i = 1; i <= n; i++)
                scanf("%d", &a[i]);
            for (int i = 1; i <= n; i++){
                int sumLeft = 0, sumRight = 0;
                for (int j = 1; j < i; j++)
                    sumLeft += a[j];
                for (int j = i+1; j <= n; j++)
                    sumRight += a[j];
                res += (long long)sumLeft * sumRight;
            }
            printf("%lld\n", res);
        }
    }
    
### input
多组测试数据。对于每组测试数据，首先是一个数n (1 <= n <= 100000), 接下来是n个正整数a0 ... an-1
( 1 <= ai <= 1000 )
### output
对于每组测试数据，输出一行，为一个正整数r (r的含义详见description)
### sample input
    
    
    1
    1
    2
    1 2
    3
    1 2 3
    
### sample output
    
    
    0
    0
    3
    
]]
content[20]=
[[
# cancer
### description
根据以往的临床记录，某种诊断癌症的试验具有如下的效果：癌症病人试验反应为阳性的概率为P1, 非癌症病人被诊断为阴性的概率为P2，
现已知癌症的患病率为P3，求实验反映为阳性的患者患有癌症的概率。
### input
三个实数P1, P2, P3, 之间用空格隔开
### output
一行，一个实数，保留3位小数。
### sample input
    
    
    1.00 1.00 0.87
    
### sample output
    
    
    1.000
    
]]
content[21]=
[[
# collection
### description
我们应该都有儿时吃干脆面的经历把，干脆面凭借各种的卡片从我们手里骗走了无数的RMB，现在请你帮忙计算一下，假设每包方便面有一个纪念卡片，每种卡片出现等概率，
要集齐所有卡片，平均要买多少包方便面才能达到目的？
### input
多组测试数据，每组测试数据为一个正整数n (1 <= n <= 10000)
### output
每组测试数据输出一个整数，为期望的需要购买多少包才能达到目的(四舍五入取整)
### sample input
    
    
    1
    108
    
### sample output
    
    
    1
    569
    
]]
content[22]=
[[
# sort4
### description
排序n个数，要求用课上老师讲的四路归并排序（本题查代码）
由于是人工查代码，请不要提交非四路归并排序算法的程序! 否则酌情倒扣分(人工查代码很累的)
由于出题这很懒，此题用的测试脚本与sort相同，所以也不要在代码中出现sort这个单词
### input
首先是一个数n，表示要排序的数有n个 (0 <= n <= 100000)
接着是n个数，分别为n个待排序的数。
### output
从小到大输出排序后的n个数，之间用空格分隔(最后一个数后有没有空格均可)。
### sample input
    
    
    3
    1 2 3
    3
    3 2 1
    
### sample output
    
    
    1 2 3
    1 2 3
    
### hint
huge input and output, scanf & printf recommanded.
]]
content[23]=
[[
# fibnacci
### description
fibnacci数是一种数学上很常见的数列，它的可以这么求：
    
    
    int fibnacci(int n){
        if (0 == n) return 0;
        if (1 == n) return 1;
        return fibnacci(n-1) + fibnacci(n-2);
    }
    
但是由于这么求复杂度较高，请使用更好的方法求出第n个fibnacci数
由于这个数可能很大，你只需输出它 mod 10007 的结果。
### input
多组测试数据，读到文件末结束。
每组测试数据一行，为一个非负整数 n (0 <= n <= 1000)
### output
每组数据一行，表示第n个fibnacci数(第0个为0，第1个为1) mod 10007 的结果
### sample input
    
    
    0
    1
    2
    
### sample output
    
    
    0
    1
    1
    
### hint
O(2 ^ n)的算法会超时
]]
content[24]=
[[
# go upstairs
### description
TT上楼梯，时而上一级，时而上两级，如果楼梯总共有n级，TT从楼底上到楼顶有多少种方法呢？
由于结果可能很大，你只需输出它 mod 100007 的结果。
### input
多组测试数据，读到文件末结束。
每组测试数据一行，为一个非负整数 n (1 <= n <= 2000000000)
### output
每组数据一行，TT上楼梯的方法数 mod 100007 的结果
(TT每步或者迈上一级，或者迈上两级)
### sample input
    
    
    2
    1
    
### sample output
    
    
    2
    1
    
### hint
O(n)的算法会超时
]]
content[25]=
[[
# generator
### description
假设我们只有一个01随机发生器(以50%的概率产生0，50%的概率产生1，如硬币)，
而要等概率的产生0, 1, ..., n-1的随机数，
一个常用的方法是，产生k个0-1随机数(a0, ..., ak-1)
得到x = a0 * 20 + a1 * 21 + ... + ak-1 * 2k-1
可以证明x在{0, 1, ..., 2k - 1}均匀分布
于是我们要产生0, 1, ..., n-1的随机数，可以通过调用k次01随机发生器(2k >= n)，
得到一个[0, 2k - 1]范围的随机数x
如果0 <= x < n, 则返回x做为结果
否则我们重复这个操作( 调用k次01随机数发生器，计算得到一个[0, 2k - 1]范围的随机数x )
直到x落在区间[0, n-1]为止
请问用上文的方法，如果选择最佳的k, 要得到m个 {0, 1, ..., n-1}的随机数，需要调用01随机发生器的期望次数是多少？
### input
多组测试数据
每组测试数据两个整数n, m (1 <= n, m <= 100)
### output
每组测试数据输出一行，表示这个期望次数，结果保留5位小数
### sample input
    
    
    1 100
    2 100
    
### sample output
    
    
    0.00000
    100.00000
    
]]
content[26]=
[[
# Scheduling
### description
某汽车厂有2个装配线，每个装配线有n个装配站，装配线对应的装配站执行相同的功能，但所用的时间可能不同。经过第i条(i = 1, 2)装配线的第j个(1 <=
j <= n)装配站所花的时间为Aij. 从第i个条流水线的第j个装配站，移到第j+1个装配站的时间为1,
而移到另外一个装配线的下一个装配站则需要时间Tij (>= 1)
如果汽车的装配需要顺次经过所有装配站，现在已知装配之间Aij和转移时间Tij，问装配一辆汽车所需要的最短时间？
### input
多组测试数据
对于每组测试数据，首先是一个正整数n，表示装配站的个数
然后是两个矩阵A(2行n列), T(2行n列)
以上所有数都是 1 - 100之间的整数
### output
每组测试数据，输出一个整数，表示所需的最短时间
### sample input
    
    
    3
    
    1 2 3
    4 5 6
    
    9 8 7
    6 5 4
    
    2
    
    1 2 
    3 4
    
    5 6
    7 8
    
### sample output
    
    
    8
    4
    
]]
content[27]=
[[
# path
### description
给你一个有向完全图 G = (V, E), 起点s和终点t，求起点到终点的最短路
其中:
V = { vi = <xi, yi, zi> | 1 <= i <= n }
E = { e = <v1, v2, dist(v1, v2) > : v1, v2 属于 V, dist(v1, v2) = |v1, x - v2,
x| + |v1, y - v2, y| + |v1, z - v2, z| }
### input
多组测试数据
每组测试数有首先是一个数n, 表示这个图有n个点(1 <= n <= 1000)
接下来是n行，每行三个整数(x, y, z)，表示这个点的三维坐标 ( 0 <= x, y, z <= 10000 )
最后是两个整数s t (1 <= s, t <= n)表示起点和终点
当 n = 0 时输入结束
注：图中两点间距离定义为他们的曼哈顿距离，即 ||ab|| = |xa - xb| + |ya - yb| + |za - zb|
### output
每组数据输出一行，表示s -> t的最短路
### sample input
    
    
    1
    1 2 3
    1 1
    0
    
### sample output
    
    
    0
    
]]
content[28]=
[[
# 强制转换
### Problem Description
学习了一段时间的c++，想必大家都发现c++不同数据类型之间是可以进行强制转换的。今天这道大水题就是按要求进行强制转换了。
对于不同的n，相应的操作如下。
n 操作
0 int->char
1 int ->double
2 char->int
3 double->int
### Input
多组输入。每组数据一行，开始为一个数字n 接下来为一个待转换数据
### Output
每组数据输出一行，为转换后的数据。
### Sample Input
    
    
    0 49
    1 20
    
### Sample Output
    
    
    1
    20
]]
content[29]=
[[
# 拯救Courage
### Problem Description
其实Courage的真实身份是五毒兽-勇气，他一直生活在昆仑山。某天出外玩耍时不慎遇到一只蛤蟆精，就在他即将被蛤蟆精吃掉时。被下山的云天河遇见，天河看见这只
小兽长得粉嫩，顿生怜悯之心，出手灭掉了蛤蟆精。可是这只是蛤蟆精的一个障眼法，Courage与天河同时被卷入了一个幻境，在他们面前有一扇密码门，门上有若干个英
文字母，还有一个锁盘。只有正确输入密码他们才能离开幻境。山顶野人般的天然呆-
云天河可不会这种题，于是他向你来求助了，为了拯救可爱的Courage，大家努力吧o(∩_∩)o ~~
哦，对了，这个野人在门旁还发现了一块记载如下的石板，虽然不知道记载的是什么，但他相信会对你有帮助的。
门上所有字符的ASCII码之和即为开锁密码！
### Input
输入包含多组数据，每组数据第一行为一个数字n，表示有n个字符（保证没有空格）。接下来一行n个字符。
### Output
按题目要求输出
### Sample Input
    
    
    5 ABCDE
    1 0
    
### Sample Output
    
    
    335
    48
]]
content[30]=
[[
# 伤心的晴天小猪
### Problem Description
上次上机后，好多同学居然责怪可爱的晴天小猪。苯苯的晴天小猪没有办法，遇到各种问题只能找聪明的你们求助。既然大家都不喜欢晴天小猪，伤心的他决定乘坐时光机去另一
个时间点，摆脱这个伤心地。但是这个时光机太奇怪了，居然可以随意设定时间，10月50日都能设定，到达这个时间点估计就灰飞烟灭了。可是苯苯的晴天小猪不知道哪些时
间是存在的，于是他只能再次向聪明的你们求助了。相信善良的你们不会故意让他灰飞烟灭的吧^_^（画外音：就是要让他永远消失→_→……）
### Input
第一行是数据组数n，接下来n组数据，每组数据一行按照年，月，日，小时，分钟，秒给定一个时间。（20：00：00将以20:0:0给出，详见样例）
### Output
如果这个时间点合法（不考虑闰秒-_-||）请输出Good bye!否则请输出Please wait for a moment!
### Sample Input
    
    
    2
    2011 11 2 19 30 0
    2011 2 29 1 20 35
    
### Sample Output
    
    
    Good bye!
    Please wait for a moment!
]]
content[31]=
[[
# 算账的景天
### Problem Description
在新仙界打败魔尊重楼后，景天回到渝州买下了永安当并更名为新安当。每天鉴定各种古董，当铺里几位娇妻也会发生各种搞笑的事情。这样的日子虽然简单但是美好。景天虽然
精于算账，但是现在他已经不是当年的那个伙计了，不用为了生计那么努力，于是在思考怎样改良下算盘，让使用更简单。于是他找到了聪明的你来帮忙^_^
为了简化问题，此计算器只要求计算一位数加减乘除和求模运算。比如：
1+2
3-1
9*7
4/3
5%2
这样的一位数算式。给出若干个表达式，请给出它们的结果
注意：此题必须使用switch语句，否则不得分！
### Input
输入包含多组数据，每组数据为一行，为一个只占3个字符的数学表达式。数据保证除法运算中和求模运算中不出现0。
### Output
每组数据输出一行，为表达式的结果。对于除法运算，要求保留小数点后两位。
### Sample Input
    
    
    1+2
    9*7
    4/2
    5%2
    
### Sample Output
    
    
    3
    63
    2.00
    1
]]
content[32]=
[[
# 逃出迷宫
### Problem Description
小蛮和龙幽两人在江湖上行侠仗义，锄强扶弱。老百姓非常感谢他们，但他们同时也结下了不少仇家。很明显，这些仇家都不是什么见得了人的人物，干得全都是下流手段。某天
他们向小蛮和龙幽下了战帖，说要来一场光明正大的决斗，如果他们赢了，以后小蛮和龙幽就不得再干涉他们的事。龙幽觉得其中有诈，刚想拒绝。可是任性的小蛮却一口答应了
下来，龙幽（一 一+）……
等他们到了约定的地方却发现对方没有按时到，龙幽敏锐的察觉到事情不对，拉着小蛮就要离开，可这时虚空中传来了声音：“既来之，则安之。何必这么急着走呢……这个阵法
是专门为你们留的，找不到破阵之法，你们就将永远被困在里面了，哈哈哈哈……”小蛮大声斥责他们无赖，龙幽无奈的回答“他们本来就是无赖(─.─|||，我们还是想办
法出去吧”说完开始研究这个阵法……
经过一番研究，龙幽发现此阵很奇特，每一步都得走特定的步数，一步错则得从头开始。经过一番尝试，他发现前几步满足下面这个数列……
第一项：1 第二项：2 第三项：5 第四项：26 第五项：677••••••
现在请你帮助他们逃出这座迷阵吧……
### Input
输入包含多组数据，每组数据为一行，为一个整数n（1<=n<=100）。
### Output
对于每一个n，输出他们第n步需要走的步数。现在只要求你给出这个步数的十位数的值。
### Sample Input
    
    
    3
    5
    6
    
### Sample Output
    
    
    0
    7
    3
]]
content[33]=
[[
# 传授棋艺
### Problem Description
青石每日自己对弈，对弈了这么多年，有点厌倦了。而他的那帮师兄弟都不是他的对手，这让他终日愁眉苦脸。唐雨柔某日前来拜访询问一些事情，青石突发奇想，想将自己一生
棋艺传给雨柔。唐雨柔欣然答应，而青石留给她的第一个任务却是在棋盘上摆棋子（囧rz）
给出一个k，请你打印一个边长为k的棋盘，上面按照下述法则摆满棋子。最外面一圈为黑子，用‘*’表示，接着一圈为白字，用‘#’表示，再接着一圈又为黑子……依次类
推。
### Input
输入包含多组数据，每组数据为一行，为一个整数k（1<=k<=20）。
### Output
对于每一个k，打印出相应的棋盘，每两个棋盘间隔一行
注意：最后不要输出多余的空行！
### Sample Input
    
    
    1
    5
    4
    
### Sample Output
    
    
    *
    
    *****
    *###*
    *#*#*
    *###*
    *****
    
    ****
    *##*
    *##*
    ****
]]
content[34]=
[[
# MaximumSubsequenceSum
### description
给你一个序列a0 ... an-1, 求它的最大子序列和
即：max{ sum{ ai ... aj } : 0 <= i <= j < n }
为了将问题描述得更清楚，下面给出了一个三次方的算法(java实现，肯定会超时)
    
    
    
    /**
     * Class implementing a maximum subsequence sum algorithm that performs
     * the computation using a direct implementation of the definition.  The running 
     * time is in O(n^3), where n is the number of elements in the array.
     */
    public class MaxSumIter {	
    	public int maxSum(int[] a) {
    		int m = 0;
    		for (int i = 0; i <= a.length; i++) {
    			for (int j = i; j <= a.length; j++) {
    				int sum = 0;
    				for (int k = i; k < j; k++) {
    					sum += a[k];
    				}
    				m = Math.max(m, sum);
    			}
    		}
    		return m;
    	}
    }
    
    
### input
多组测试数据
对于每组测试数据，首先是一个正整数n，表示序列的长度
接着是n个整数 a0, ..., an-1
其中 1 <= n <= 100000, |ai| <= 1000, 0 <= i < n
文件末结束
### output
  
对于每组测试数据，输出一个非负整数r，表示序列的最长子序列和
### sample input
    
    
    3
    1 2 3
    
    3
    -1 -2 -3
    
    3
    -1 2 -3
    
### sample output
    
    
    6
    0
    2
    
]]
content[35]=
[[
# MatrixChainMultiplication
### description
Matrix chain multiplication is an optimization problem that can be solved
using dynamic programming. Given a sequence of matrices, we want to find the
most efficient way to multiply these matrices together. The problem is not
actually to perform the multiplications, but merely to decide in which order
to perform the multiplications.
We have many options because matrix multiplication is associative. In other
words, no matter how we parenthesize the product, the result will be the same.
For example, if we had four matrices A, B, C, and D, we would have:
(ABC)D = (AB)(CD) = A(BCD) = A(BC)D = ....
However, the order in which we parenthesize the product affects the number of
simple arithmetic operations needed to compute the product, or the efficiency.
For example, suppose A is a 10 × 30 matrix, B is a 30 × 5 matrix, and C is a 5
× 60 matrix. Then,
(AB)C = (10×30×5) + (10×5×60) = 1500 + 3000 = 4500 operations
A(BC) = (30×5×60) + (10×30×60) = 9000 + 18000 = 27000 operations.
Clearly the first method is the more efficient. Now that we have identified
the problem, how do we determine the optimal parenthesization of a product of
n matrices?
### input
Multiple test cases, till End Of File.
For each test case, first there is a n, indication n matrices to multiply.
Then n line follows, in each line there is a pair of integer ri, ci
You can assume 1 <= n <= 100, 1 <= ri, ci <= 100, ci = ri+1
### output
For each test case, you should output an integer indicating the least number
of operations to accomplish the task.
### sample input
    
    
    3
    10 30
    30 5
    5 60
    
    1
    1 2
    
### sample output
    
    
    4500
    0
    
]]
content[36]=
[[
# BricksN
### description
We have a set of many construction bricks. It contains exactly one base which
is simply a special kind of brick of dimensions 1x1xw. We also have a infinite
amount of bricks of k different kinds: 1x1x1, 1x1x2, ..., 1x1xk. Formally, for
each i between 1 and k, inclusive, we have as many 1x1xi bricks as we need.
For simplicity, we will call these bricks "bricks of length i". The following
image shows the situation for w=9 and k=3: there is a base of length 9, and
three brick types of lengths 1, 2, and 3.
![<img:/richtext/res/11/bricks1.png>](/richtext/res/11/bricks1.png)
We can stack bricks on top of other bricks (including the base) to form
different structures. The design of the bricks forces us to place the bricks
at integer positions only. To ensure stability, each brick other than the base
must rest completely on a surface composed of other bricks or the base. The
following image shows a structure that is invalid for four reasons:
![<img:/richtext/res/12/bricksn2.png>](/richtext/res/12/bricksn2.png)
The height of a structure is the number of layers of bricks it contains. The
base is not counted into the height of the structure.
Two structures are different if there is a position where they differ in any
way. (There are two ways in which two given structures may differ: First,
there may be a position where one structure has a brick and the other does
not. Second, there may be a position where both structures have bricks, but
the bricks are of different types.)
Given are three ints: w, the length of the base, k, the maximum length of your
bricks, and h, the maximum height of your structure. Find the total number of
different valid structures you can make. Return the total modulo 1000000007.
For example, the following image shows all 83 different valid structures when
w = 3, k = 3 and h = 2.
![<img:/richtext/res/13/bricksn83u.png>](/richtext/res/13/bricksn83u.png)
### input
Multiple test cases.
For each test cases, there are three integers w, h, k (1 <= w, h <= 50, k <=
w)
### output
For each test case, output an integer indicating the answer modulo 1000000007.
### sample input
    
    
    3 1 3
    3 2 3
    1 5 1
    10 10 3
    
### sample output
    
    
    13
    83 
    6
    288535435
    
]]
content[37]=
[[
# MissingParentheses
### description
Given a string of parentheses, you must turn it into a well formed string by
inserting as few parentheses as possible, at any position (you cannot delete
or change any of the existing parentheses).
A well formed string of parentheses is defined by the following rules:
The empty string is well formed.
If s is a well formed string, (s) is a well formed string.
If s and t are well formed strings, their concatenation st is a well formed
string.
As examples, "(()())", "" and "(())()" are well formed strings and "())(",
"()(" and ")" are malformed strings.
Given a String par of parentheses, return the minimum number of parentheses
that need to be inserted to make it into a well formed string.
### input
Multiply test cases, until End Of File.
For each test case, there is a string which contains only '(' or ')'. You can
assume its length is no more than 100.
### output
For each test case, output a line containing the answer.
### sample input
    
    
    (()(()
    ()()(()
    (())(()())
    ())(())((()))))()((())))()())())())()()()
    
### sample output
    
    
    2
    1
    0
    7
    
]]
content[38]=
[[
# 兔子问题
### Problem Description
第一个月有一对刚诞生的兔子
第二个月之后它们可以生育
每月每对可生育的兔子会诞生下一对新兔子
兔子永不死去
假设第一个月有1对兔子，问第N个月有多少对兔子
### Input
多组数据，每组一个整数N（N>=1）
### Output
第N个月兔子对数
禁止使用公式！否则此题0分！
### Sample Input
    
    
    1
    2
    3
    
### Sample Output
    
    
    1
    1
    2
]]
content[39]=
[[
# 汉诺塔
### Problem Description
现在有三根相邻的柱子，标号为A,B,C，A柱子上从下到上按金字塔状叠放着n个不同大小的圆盘，现在把所有盘子一个一个移动到柱子C上，并且每次移动同一根柱子上都
不能出现大盘子在小盘子上方，请输出实现最小移动次数的方案。
每一步输出一行P-> Q表示将P柱上的最上方盘子移动到Q柱。
### Input
多组数据，每组一个整数n
### Output
输出题目要求，每组数据间用空行隔开。
### Sample Input
    
    
    1
    2
    3
    
### Sample Output
    
    
    A->C
    
    A->B
    A->C
    B->C
    
    A->C
    A->B
    C->B
    A->C
    B->A
    B->C
    A->C
    
### Hint
数据较大，请使用scanf和printf！
]]
content[40]=
[[
# 开个小玩笑~
### Problem Description
仔细观察下图，给你2个整数，你的任务是按图示规律输出第三个数
请不要怀疑此图!
![<img:/richtext/res/18/1.bmp>](/richtext/res/18/1.bmp)
### Input
第一行为数据组数T(1<=T<=30)
接下来T行每行2个整数A,B（1<=B<=A<=10100）.
### Output
每组数据按要求输出一行
### Sample Input
    
    
    3 
    99 72
    45 27
    39 18
    
### Sample Output
    
    
    27
    18
    21
]]
content[41]=
[[
# 晴天小猪的兔子
### Problem Description
（我想了很久，还是决定出一学期的晴天小猪系列吧，大家不要骂我•••）
晴天小猪养了一只兔子，今年这只兔子生下了一只小兔子。晴天小猪家的兔子有这么一个规律：每只兔子从出生的第四年的年初（算当年，即三年后）开始，每年都会生一只小兔
子。假定现在这年记为兔子1年，现在小猪家总共有了两只兔子，晴天小猪想知道在兔子N年他家总共会有多少只兔子。如果太多了他家实在是住不下•••
此题必须用递归写!否则不得分！
### Input
多组测试数据。每组测试数据只有一行为一个整数k（1<=k<=30），表示兔子k年。
### Output
对于每组输入数据，输出一行, 为一个整数，兔子k年一共有多少只兔子。
### Sample Input
    
    
    1
    3
    5
    
### Sample Output
    
    
    2
    4
    9
]]
content[42]=
[[
# 晴天小猪的雪花
### Problem Description
冬天到了，小镇开始下雪。晴天小猪每年都会看雪花，当然是因为很好看•••不过他发现自从他开始按兔子k年计时之后，他看到的雪花也发生了很奇怪的变化•••以下是他
收集到的雪花：
兔子1年：
*  
兔子2年：
**  
兔子3年
**  
#
兔子4年
**  
##
兔子5年
**  
##
*  
### Input
多组测试数据。每组测试数据只有一行为一个整数k（1<=k<=30），表示兔子k年。
### Output
对于每组输入数据，输出雪花的样子。每两组数据间要间隔一行，注意不要在最后输出多余的空行。
### Sample Input
    
    
    8
    
### Sample Output
    
    
    **
    ##
    **
    ##
    
]]
content[43]=
[[
# 晴天小猪的羊肉串
### Problem Description
冬天到了，晴天小猪和好朋友们围在一起吃烧烤。他们烤了很多很多的东西，有羊肉串、牛肉串、鸡肉串•••当然没有猪肉串。晴天小猪最喜欢鸡肉串了，他想在一堆的串中把
它找出来。
我们用一个不超过200的字符串表示各种烤串，字符串中只会出现小写字母。如果字符串中出现了连续的三个字母，比如abc、hij等，就表示这是一个鸡肉串。
### Input
多组测试数据。每组测试数据只有一行，先是一个整数n（3<=n<=200），表示该串字符串的长度。接下来是一个长度为n的字符串。
### Output
对于每组输入数据，若含鸡肉串，则输出“YES”，否则输出“NO”。
### Sample Input
    
    
    3 xyz
    6 qwerty
    7 qweabcr
    
### Sample Output
    
    
    YES
    NO
    YES
]]
content[44]=
[[
# 无向图与前度数
### 问题描述
对于一个无向图和此无向图的所有节点的一个排列，可以定义图中每个节点的前度数为：在这个排列中出现在此节点前面的且与之直接相邻的点的个数。
于是对于一个无向图和此无向图的所有节点的一个排列，可以定义此排列的最大前度数为：所有节点的前度数的最大值。
求所有排列的最大前度数的最小值。
### 输入
输入第一行为数据组数 T（T <= 20）。
对于每组数据，首先是一个空行，接下来的第一行为图中的点数和边数 n 和 m（1 <= n <= 10000，0 <= m <= 100000）。
接下来 m 行每行两个数 a 和 b（1 <= a < b <= n），表示有一条点 a 和点 b 之间的无向边。
### 输出
对于每组数据输出一个数，为输入的无向图的所有节点排列的最大前度数的最小值。
### 样例输入
    
    
    3
    
    2 1
    1 2
    
    3 2
    1 2
    1 3
    
    3 3
    1 2
    2 3
    1 3
    
### 样例输出
    
    
    1
    1
    2
    
### 来源
第七届北航程序设计大赛网络预赛 - lzx
]]
content[45]=
[[
# 最大路劲值
### 问题描述
给定一个包含 n 个点的简单无向完全图，每条边有给定的权重。对于指定的起点和终点，求一条从起点到终点的路劲值最大的路径。
路径的路劲值定义为：这条路径上所有边的权重的最小值除以路径包含的边数。
符合条件的路径可能不唯一，但是其路劲值肯定唯一，输出这个值。
### 输入
输入第一行为数据组数 T（T <= 20）。
对于每组数据，首先是一个空行，接下来的第一行为图中的点数和指定的起点和终点 n、s、t（节点编号为 1 到 n，2 <= n <= 100，1 <= s <
t <= n）。
接下来 n - 1 行为所有边的权重。其中第 i 行会有 n - i 个数，第 j 个数为 i 号节点到 i + j 号节点的边的权重wi,i+j（0 <=
wi,i+j <= 1000000）。
### 输出
对于每组数据，输出一个实数，为要求的最大路劲值，保留两位小数。
### 样例输入
    
    
    4
    
    2 1 2
    3
    
    3 1 3
    4 5
    6
    
    4 2 3
    3 4 7
    1 5
    6
    
    4 2 3
    1 10 10
    1 10
    1
    
### 样例输出
    
    
    3.00
    5.00
    2.50
    3.33
    
### 来源
第七届北航程序设计大赛现场决赛 - lzx
]]
content[46]=
[[
# n以内约数最多的数
### 问题描述
题意非常简单，问 [1, n] 范围内约数最多的数是几。
### 输入
输入第一行为数据组数 T（T <= 100）。
对于每组数据，只有一个数字 n（1 <= n <= 109）
### 输出
对于每组数据，请在一行中输出两个数，即 [1, n] 范围中约数最多的那个数（如果有多个，则输出最小的那个），以及其约数的个数，用一个空格隔开。
### 样例输入
    
    
    3
    10
    20
    30
    
### 样例输出
    
    
    6 4
    12 6
    24 8
    
### 来源
第七届北航程序设计大赛现场决赛 - lzx
]]
content[47]=
[[
# 最少的扇形区域
### 问题描述
给定平面上的 n 个点和一个夹角 x，问最少要多少个夹角为 x 且以原点为顶点的扇形，才能覆盖所有的 n 个点。
### 输入
输入第一行为数据组数 T（T <= 50）。
对于每组数据，首先是一个空行。
接下来的一行是一个整数 n 和一个实数 x（单位为度）（1 <= n <= 100000, 0 <= x < 360），分别为点的个数和夹角的度数。
接下来 n 行每行 2 个整数 xi 和 yi，分别为这 n 个点的坐标（-1000000 <= xi, yi <= 1000000，xi * yi !=
0）。
### 输出
对于每组数据，输出一个整数，为最少要多少个这样的扇形，才能覆盖所有的点（一个点可以被覆盖多次，只要被盖住了就行，擦边也算覆盖）。
### 样例输入
    
    
    2
    
    2 180
    1 1
    -1 -1
    
    2 160
    1 1
    -1 -1
    
### 样例输出
    
    
    1
    2
    
### 提示
精度是个大问题啊……
### 来源
第七届北航程序设计大赛现场决赛 - gg
]]
content[48]=
[[
# ACM排名表
### 问题描述
ACM 国际大学生程序设计竞赛，英文全称：ACM International Collegiate Programming Contest（ACM-ICPC
或 ICPC）是由美国计算机协会（ACM）主办的，一项旨在展示大学生创新能力、团队精神和在压力下编写程序、分析和解决问题能力的年度竞赛。经过30多年的发展，
ACM 国际大学生程序设计竞赛已经发展成为最具影响力的大学生计算机竞赛。一般就简称为 ACM 竞赛了（虽然照理来说应该简称成 ICPC 才对）。
ACM 竞赛的计分规则如下：
首先按照过题数排名，过题数相同的队伍按照罚时排名（罚时小的队伍排在前面），如果罚时也相同则认为名次相同（名次相同时在排名表上队伍 id
较小的队伍列在前面）。
对于罚时的计算。队伍总体的罚时等于该队各题的罚时之和。对于某题的罚时，如果这道题最后没有通过（没有正确提交），则这题的罚时为
0，否则这道题的罚时为：从比赛开始到该题第一次正确提交经过的时间 + 第一次通过之前的错误提交次数 * 20
分钟。也就是说，对于某题，在你第一次通过后，以后的提交都不再算罚时。
现给定所有提交，要求输出队伍的排名表。
### 输入
输入第一行为数据组数 T（T <= 20）。
对于每组测试数据，首先是一个空行。接下的第一行是两个整数 c 和 n，为队伍数和提交数。 (1 <= c <= 200，0 <= n <= 10000 )
接下来 n 行每行描述一个提交，包含 4 个整数：ci（提交的队伍）, pi（提交的题目）, ti（提交的时间，单位为秒）, ri（提交的结果，为 1
表示正确，为 0 表示错误）。
其中 1 <= ci <= c，1 <= pi <= 10，0 <= ti <= 18000。
数据保证较早的提交排在较前的位置。
### 输出
对于每组，请输出包含所有队伍的排名表。
排名表为c（参赛队伍数）行，每行一支队伍。每行应包含四个整数，分别为此队的排名、队伍id、过题数、罚时（四舍五入到整数分钟，注意只是输出的时候四舍五入，计算
排名时还是要靠准确的罚时的）。
每组数据的最后输出一个空行。
### 样例输入
    
    
    1
    
    5 4
    1 2 3000 0
    1 2 3100 1
    2 1 4200 1
    4 10 4200 1
    
### 样例输出
    
    
    1 2 1 70
    1 4 1 70
    3 1 1 72
    4 3 0 0
    4 5 0 0
    
    
### 来源
第七届北航程序设计大赛网络预赛 - gg
]]
content[49]=
[[
# 大囧
### Desciption
DS最近很囧，总是不能把妹子哄开心。。。所以，邪恶的他也想让你们囧一囧。。。是不是很邪恶啊哈哈！
![<img:/richtext/res/44/1253467516.jpg>](/richtext/res/44/1253467516.jpg)
他给你一个数字 n 让你输出囧字的迭代（详见样例）。
### Input
第一行一个整数，代表数据的组数。
每组数据一个整数 n（1 <= n <= 7）
### Output
每组数据输出一个囧字的图形，然后再输出一个空行。
### Sample Input
    
    
    3
    1
    2
    3
    
### Sample Output
    
    
    +------+
    |      |
    | /  \ |
    |      |
    | +--+ |
    | |  | |
    | |  | |
    +-+--+-+
    
    +--------------+
    |              |
    |     /  \     |
    |    /    \    |
    |   /      \   |
    |  /        \  |
    | /          \ |
    |              |
    |   +------+   |
    |   |      |   |
    |   | /  \ |   |
    |   |      |   |
    |   | +--+ |   |
    |   | |  | |   |
    |   | |  | |   |
    +---+-+--+-+---+
    
    +------------------------------+
    |                              |
    |             /  \             |
    |            /    \            |
    |           /      \           |
    |          /        \          |
    |         /          \         |
    |        /            \        |
    |       /              \       |
    |      /                \      |
    |     /                  \     |
    |    /                    \    |
    |   /                      \   |
    |  /                        \  |
    | /                          \ |
    |                              |
    |       +--------------+       |
    |       |              |       |
    |       |     /  \     |       |
    |       |    /    \    |       |
    |       |   /      \   |       |
    |       |  /        \  |       |
    |       | /          \ |       |
    |       |              |       |
    |       |   +------+   |       |
    |       |   |      |   |       |
    |       |   | /  \ |   |       |
    |       |   |      |   |       |
    |       |   | +--+ |   |       |
    |       |   | |  | |   |       |
    |       |   | |  | |   |       |
    +-------+---+-+--+-+---+-------+
    
    
### 来源
第七届北航程序设计大赛现场决赛 - KissBuaa.Ds && KissBuaa.Anran
]]
content[50]=
[[
# 宝石大战
### 问题描述
董适小盆友和妹纸正在玩儿宝石大战的游戏！彩笔DS总是拿不到最高分，妹纸很生气，小董适很着急，你能帮帮他吗？
![<img:/richtext/res/45/c671da92ae70eda450664f6d.jpg>](/richtext/res/45/c671da
92ae70eda450664f6d.jpg)
宝石阵中的每一颗宝石都有自己的价值，用 0 到 9 这 10 个数字表示。
游戏中每次只能消去一个矩形中的全部宝石，消去的得分为矩形中的宝石的价值总和，并且只有矩形中的宝石全部都是同样的价值时才允许消。
小董适想知道他第一次消去的时候最多能获得多少分。
### 输入
输入第一行为数据组数 T（T <= 50）。
对于每组数据，第一行是两个整数 n 和 m（0 < n, m <= 500），表示宝石矩阵有 n 行 m 列。
接下来 n 行每行 m 个字符，为具体的宝石矩阵，矩阵中每一个字符都在 [0,9] 之间。
### 输出
对于每组数据，输出一个整数，为第一次消去能获得的最大得分。
### 样例输入
    
    
    2
    2 2
    12
    34
    3 4
    1144
    1100
    1100
    
### 样例输出
    
    
    4
    8
    
### 来源
第七届北航程序设计大赛网络预赛 - KissBuaa.DS
]]
content[51]=
[[
# 谁能告诉我时间
### 问题描述
Kiss 队有仨队员，除了一个普通队员和一个文艺队员以外的那个队员有一块儿手表。
![<img:/richtext/res/92/clock.PNG>](/richtext/res/92/clock.PNG)
这块神奇的手表没有刻度，表盘可旋转所以你不知道 12 点方向在哪里！
这块手表的只有时针和分针，并且时针和分针一样长！
不过王安然能一眼看出现在两个指针的夹角是多少度Orz，并且知道现在的时间在 [0:00, 12:00) 范围内。
王安然还惊奇地发现，他手表的时针和分针都是连续运动的！甚至能够覆盖整个实数域Orz。。。
请你告诉他所有可能的时间。
### 输入
输入第一行为数据组数 T。
每组数据就一个整数 x（0 <= x <= 180），为时针与分针的夹角。
### 输出
对于每组数据，以 hour:minute 的形式按从 0 点到 12 点的顺序输出时间，分钟精确到小数点后第三位。每组数据的最后请输出一个空行。
### 样例输入
    
    
    1
    90
    
### 样例输出
    
    
    0:16.364
    0:49.091
    1:21.818
    1:54.545
    2:27.273
    3:0.000
    3:32.727
    4:5.455
    4:38.182
    5:10.909
    5:43.636
    6:16.364
    6:49.091
    7:21.818
    7:54.545
    8:27.273
    9:0.000
    9:32.727
    10:5.455
    10:38.182
    11:10.909
    11:43.636
    
    
### 来源
第七届北航程序设计大赛网络预赛 - KissBuaa.DS
]]
content[52]=
[[
# GG的小金库
### 问题描述
每个人都喜欢金币，GG 也不例外。经过若干年的辛勤劳动，GG 终于拥有 10 亿个小金库了。
MM 对 GG 的小金库很好奇，想知道 GG 究竟有多少金币，于是 MM 对 GG 展开了一系列的询问。
GG 一共有 109 个小金库，编号为 1..109 。每个小金库要么是空的，要么有若干金币。
MM 每次询问从第 a 个到第 b 个金库中金币最少的那个金库有多少金币。
在询问了 Q 次之后，MM 想知道 GG 最少有多少金币。当然如果 MM 发现 GG 的答案自相矛盾，那 GG 就自求多福吧。
### 输入
输入第一行为数据组数 T（T <= 30）。
对于每组数据，第一行是一个整数 Q （1 <= Q <= 100000），表示有 Q 个询问。
接下来 Q 行，每行 3 个整数 a, b, c，表示 [a..b] 金库中最少的金库有 c 个金币（1 <= a <= b <= 109，0 <= c
<= 109 ）。
### 输出
对于每组数据输出一行，如果没有矛盾，则输出一个整数，为 GG 至少拥有的金币总数，否则输出 "Error"。
### 样例输入
    
    
    5
    1
    1 1000000000 0
    1
    1 1000000000 5
    3
    3 4 1
    5 6 10
    4 5 100
    3
    3 4 100
    5 6 10
    4 5 1
    5
    6 6 1000
    4 4 100
    3 4 10
    4 5 10
    3 6 10
    
### 样例输出
    
    
    0
    5000000000
    211
    Error
    1120
    
### 来源
第七届北航程序设计大赛网络预赛 - mm
]]
content[53]=
[[
# Barty的出游
### 问题描述
Barty 后宫三千万，但正宫只有 Bella 一个。
这天，Barty 打算和正宫 Bella 出去玩。Barty 想额外多带一些后宫佳丽，因为人越多越热闹；但 Bella 想尽量少带，因为她不想和别人分享她的
Barty。两人争执不下，Barty 提出用游戏来决定出游的人数，Bella 同意了。
游戏规则是这样的：
Barty 在纸上画了一个 n 行 m 列的方格图，每个格子里有一个数字，这实际上是 Barty
后宫的寝宫的俯视图，每个格子里的数字代表每个房间里住着的人数。最左上角的格子是第 1 行第 1 列，Barty 摆了一颗棋子在第 1 行第 0
列的位置（见提示中的图）。游戏开始时首先轮到 Barty，Barty 可以在轮到自己时将棋子向正右方移至少 1 格、至多 k 格，然后轮到
Bella；Bella 可以在轮到自己时将棋子向正下方移动至少 1 格、至多 k 格，然后再次轮到Barty。棋子停在的格子所对应的房间被称为被选中的房间。
两人轮替操作，直到某一方将棋子移出方格图为止。这时，所有被选中的房间里的佳丽可以有幸参与到出游，换句话说，这枚棋子所有曾经的落点所在的格子里面的数字相加，就
是这次出游所要额外携带的人数。Barty 希望这个人数最大化，而 Bella 希望这个人数最小化。
要知道，正宫 Bella 冰雪聪明，也足够理智，绝不会在战略上犯任何错误。现在 Barty 求助于你，他希望知道这次能带上多少后宫佳丽，你能帮帮他吗？
### 输入
输入第一行为数据组数 T（T <= 10）。
对于每组数据，第一行有三个整数，用空格隔开，分别是 n, m, k（1 <= n, m <= 500，1 <= k <= 10）。
接下来有 n 行，每行 m 个非负整数，且所有整数均不超过 10000。它代表 Barty 的后宫的每个房间里的佳丽人数，具体可参照示例。
### 输出
对于每组输入，你只需要输出一个整数，即 Barty 本次出游能额外带出的后宫佳丽人数。
### 样例输入
    
    
    2
    2 2 2
    1 3
    4 2
    3 4 2
    2 3 0 4
    0 3 2 0
    5 3 1 0
    
### 样例输出
    
    
    3
    7
    
### 样例说明
对于第一组测试数据，无论 Barty 向右移一格还是两格，Bella 一定会向下两格使得游戏结束。于是 Barty 的最佳策略是第一步向右移两格，然后被
Bella向下移两格，游戏结束，结果为 3。
第二组测试数据如下图所示：
![<img:/richtext/res/23/Barty1.PNG>](/richtext/res/23/Barty1.PNG)
Barty 先行动，把棋子向右移动两格到 (1,2)，Bella 把棋子向下移动两格到 (3,2)，Barty 把棋子向右移动一格到 (3,3)，然后
Bella 向下移动两格（一格亦可）把棋子移出方格。被选中的方格有：(1,2) (3,2) (3,3)（如下图），故这次出游，Barty 能额外带上后宫
3+3+1=7 人。
![<img:/richtext/res/24/Barty2.PNG>](/richtext/res/24/Barty2.PNG)
### 来源
第七届北航程序设计大赛网络预赛 - wht
]]
content[54]=
[[
# 切棍棍
### 问题描述
话说 Barty 和 Bella 最喜欢玩切棍棍的游戏了。
n 根棍棍，每根长度都为 m，每次每人可以选择其中的 1 根棍棍，把他切成等长的若干段，要求切成的每段长度 > k 且仍旧是整数。Barty 和 Bella
轮流切，Barty 先切，谁不能切谁输。
假设 Barty 和 Bella 都足够聪明，且不愿意让着对方，问最后谁胜？
### 输入
输入第一行为数据组数 T（T <= 20）。
每组数据占一行，为三个数 n, m, k, 含义详见描述（1 <= n, m, k <= 1000000, m > k）
### 输出
对于每组数据输出一行。如果是 Barty 胜，则输出 A，否则输出 E。
### 样例输入
    
    
    3
    10 10 1
    9 9 1
    10 10 5
    
### 样例输出
    
    
    E
    A
    E
    
### 来源
第七届北航程序设计大赛现场决赛 - gg
]]
content[55]=
[[
# 马后
### 题目描述
众所周知，国际象棋的皇后是车和象的组合体，马作为唯一一个被冷落的棋子，不甘寂寞，奋发图强，终于和象一起组成了新的棋子——马后。
马后，如上所说，是马和象的组合体——既可以按马走“日”字，也可以按象的规则沿斜线走任意格。
![<img:/richtext/res/25/mahou1.PNG>](/richtext/res/25/mahou1.PNG)
已知在一个棋盘上，马后位于点 (0,0)，要到达点 (m,n)。要求马后只能沿横纵坐标均增加的方向走（即，马后只能从点 (i, j) 走到 (i+1,
j+2) 或 (i+2, j+1) 或 (i+k, j+k), k > 0），请问有多少种到达方式？
这个数字可能很大，你只要告诉我这个结果除以 1,000,000,007 后的余数即可。
请注意，如果马后可以以象的走法一步到达某点，那么你不能把这一步拆成象走法的两步（或以上）而记作一种新的到达方式。
比如，马后从 (0,0) 到达 (3,3) 共有三种方式：
(0,0)->(1,2)->(3,3)
(0,0)->(3,3)
(0,0)->(2,1)->(3,3)
而只要包含了类似于 (0,0)->(1,1)->(3,3) 之类的路径的走法均不合法。
### 输入
输入第一行为数据组数 T（T <= 1000）。
每组数据输入占一行，只有两个整数，用空格隔开，为 m 和 n（1 <= m, n <= 1000），m 和 n 的含义见题目描述。
### 输出
对于每组数据，只需要输出一个整数，即马后到达点 (m,n) 的不同方法数模 1,000,000,007 的结果。
### 样例输入
    
    
    3
    3 3
    2 4
    3 8
    
### 样例输出
    
    
    3
    1
    0
    
### 来源
第七届北航程序设计大赛现场决赛 - wht
]]
content[56]=
[[
# 小白鼠
### 问题描述
有 n 个瓶子，已知其中有且仅有一个瓶子的饮料有毒。现在我们想知道哪个瓶子的饮料有毒，于是找来一些小白鼠做测试。
假设我们有足够多的小白鼠，为了加快测试速度，我们每次可以把来自若干个瓶子的测试样本混在一起，喂给小白鼠。如果小白鼠喝了有毒的饮料，即死。
现在给你每个瓶子的饮料有毒的概率（和总是 100%），问以最优策略（测试次数尽可能少）执行，期望的测试次数是多少？
### 输入
输入第一行为数据组数 T（T <= 20）。
对于每组数据，首先是一个空行，接下来的第一行为瓶子的个数 n（1 <= n <= 100）。
再接下来的一行为 n 个实数 p1 ... pn，表示每个瓶子中的饮料有毒的概率（sum{ pi | 1 <= i <= n } = 1 ）。
### 输出
对于每组数据输出一个数，为期望的测试次数，小数点后保留两位数字。
### 样例输入
    
    
    3
    
    3
    0.5 0.25 0.25
    
    4
    0.25 0.25 0.25 0.25
    
    2
    0.00 1.00
    
### 样例输出
    
    
    1.50
    2.00
    1.00
    
### 提示
概率为 0 的事件未必是不可能事件，比如说在数轴上随机选点，结果选中了一个整点……
所以第三组样例还是需要测一次的。
### 来源
第七届北航程序设计大赛现场决赛 - gg
]]
content[57]=
[[
# 逆序数
### 问题描述
对于 1..n 的全排列，有 n! 种排列方法，现在我们想知道逆序数（即逆序对的数目）恰好为 m 的排列有多少个?
对于一个排列 a[1..n] 若 i < j 且 a[i] > a[j], 则我们称 (i, j) 为此排列中的一个逆序对，显然 1..n
的排列的逆序数最多为 n * (n - 1) / 2。
由于结果可能很大，你只需输出其模 10009 的结果。
### 输入
输入第一行为数据组数 T（T <= 20）。
每组数据占一行，为两个数 n 和 m（1 <= n <= 300，0 <= m <= n * (n - 1) / 2）。
### 输出
对于每组数据输出一个数，为逆序数为 m 的排列数模 10009 的结果。
### 样例输入
    
    
    3
    1 0
    10 1
    10 10
    
### 样例输出
    
    
    1
    9
    1652
    
### 来源
第七届北航程序设计大赛网络预赛 - gg
]]
content[58]=
[[
# 晴天小猪的数学题II
### Problem Description
冬天之后，晴天小猪就要读四年级了，这也意味着他要面临更难的数学题。晴天小猪在做作业的时候又遇到了困难，希望你能帮帮他。
数学题是这样的：告诉你一个数列a和一个数列b，两个数列都由N个整数组成，请你构造一个新数列c，使得Ci=Ai+Bi。
你能直接告诉晴天小猪数学题的答案么？
### Input
多组测试数据。每组测试数据有三行，第一行为一个整数N（1<=N<=100），表示a、b、c三个数列都包含N个数，第二行有N个1~100的整数，表示a数列，第
三行也是N个1~100的整数，表示b数列。
### Output
对于每组数据输出一行，为c数列，两两数字之间用空格隔开，注意不要在最后输出多余的空格。
### Sample Input
    
    
    4
    1 2 3 4
    5 6 7 8
    1
    1
    2
    
### Sample Output
    
    
    6 8 10 12
    3
]]
content[59]=
[[
# 晴天小猪的兔子II
### Problem Description
上次说到，晴天小猪养了一群兔子，可是随着时间的推移，兔子越来越多，他家实在住不下了，于是他决定送三只兔子给上机成绩排前三的同学。送哪三只兔子呢，当然是选最重
的三只兔子，因为他们吃得最多~
现在告诉你晴天小猪家每只兔子的重量，请找出体重最重的三只兔子。
### Input
多组测试数据。每组测试数据有二行，第一行为一个整数N（3<=N<=100），表示总共有N只兔子，第二行有N个1~100的整数，每个整数表示第N只兔子的体重。
### Output
对于每组输入数据，输出一行结果，按从大到小的顺序输出最重的三只兔子的序号（第一只兔子序号记为1，第二只记为2，依次类推），对于体重相同的兔子输出序号靠前的。
用空格隔开，注意最后不要输出多余的空格。
### Sample Input
    
    
    3
    1 2 3
    5
    10 50 30 40 20
    
### Sample Output
    
    
    3 2 1
    2 4 3
]]
content[60]=
[[
# 晴天小猪的苹果树II
### Problem Description
还是上次说到，晴天小猪的苹果树收获了很多苹果。他把所有苹果分成了很多袋（每袋的苹果数都不一样）。这么多的苹果当然要和大家一起分享，于是他决定把苹果数最多的三
袋送给上机成绩排名4~6的同学。送了三袋苹果之后，晴天小猪想知道他总共还有多少个苹果。
### Input
多组测试数据。每组测试数据有两行，第一行为一个整数N（3<=N<=100），表示总共有N袋苹果，第二行有N个1~100的整数，表示第N袋苹果中的苹果个数。
### Output
对于每组数据，输出一行, 为一个整数，表示晴天小猪剩下的苹果总数。
### Sample Input
    
    
    3
    1 2 3
    5
    5 4 3 2 1
    
### Sample Output
    
    
    0
    3
]]
content[61]=
[[
# 游戏王
### Problem Description
Courage很喜欢玩游戏王，很喜欢收集游戏王卡片，每张卡片都有其对应的编号。现在他收集到了一些卡片，但这些卡片里肯定有相同的。Courage想知道，去掉重
复的卡片，他总共有多少种不同的卡片。规定编号相同的即为重复的卡片。
### Input
多组测试数据。每组测试数据有两行，第一行为一个整数N（1<=N<=100），表示总共有N张卡片，第二行有N个1~100的整数，每个整数表示第N张卡片的编号。
### Output
对于每组输入数据，输出一行, 为一个整数，表示Courage总共有多少种不同的卡片。
### Sample Input
    
    
    5
    1 2 1 2 1
    5
    1 2 3 4 5
    
### Sample Output
    
    
    2
    5
]]
content[62]=
[[
# 超市排队
### Problem Description
黄月英开了一家优购超市，诸葛亮有空的时候会去帮忙。有一天，店里像往常一样排了一个长长的队伍，有n个客人等待结账。这时，司马懿偷偷插到了第a个位置上，过了不久
，张角也来插了个队，插到了第b个位置上。插队可是一个不好的行为，大家可不要这样哦。诸葛亮想知道现在的队列是怎么样的。
用1~100的整数表示不同的客人，用-1表示司马懿，用-2表示张角。
### Input
多组测试数据。每组测试数据有两行，第一行为三个整数n、a、b（1<=n<=100），意思如题所述，第二行有n个1~100的整数，表示初始队列的排列情况。数据
保证a大于0且不超过n+1，保证a大于0且不超过n+2。
### Output
对于每组输入数据输出一行，表示当前队列的样子，两两整数间用空格隔开，注意最后不要输出多余的空格。
### Sample Input
    
    
    3 1 1
    1 2 3
    3 2 3
    1 2 3
    
### Sample Output
    
    
    -2 -1 1 2 3
    1 -1 -2 2 3
]]
content[63]=
[[
# 喜羊羊与灰太狼
### Problem Description
GG很喜欢看喜羊羊与灰太狼，他有很多喜羊羊与灰太狼的录像带。每个录像带用一个1~100的整数表示其遍号。GG有个很奇怪的习惯，他会选出遍号为奇数的录像带按从
小到大的顺序看，或者选出编号为偶数的录像带按从小到大的顺序看。可是录像带太多了，GG头都晕了，你能告诉他要按怎样的顺序来看录像带吗？
方法a表示GG选奇数的录像带看，b表示选择偶数的。
最后一题了，帮帮GG哦o(∩_∩)o ……
### Input
多组测试数据。每组测试数据有两行，第一行为一个整数n和一个字符c（1<=n<=100，c为a或者b，意思如题所述），第二行有n个1~100的整数，每个整数表
示第n盘录像带的编号。
### Output
对于每组输入数据输出一行，表示看录像带的顺序。两两整数间用空格隔开，注意最后不要输出多余的空格。
### Sample Input
    
    
    5 a
    5 1 2 4 3
    3 b
    3 2 1
    
### Sample Output
    
    
    1 3 5
    2
]]
content[64]=
[[
# 简单的序列操作
### 问题描述
多年以来，序列操作的题目因为描述短、不会读错题、做起来简单（？！）又有趣，一直倍受广大 ACMer & OIer 的青睐。这次也不例外。
现在有一个长度为 109 的序列 int arr[1..109]，所有元素均初始化为 0。然后有 Q 个操作，操作有 4 种类型，格式如下：
(1) Mult a b c： 将 [a,b] 区间所有数乘上 c　　　　　//for(i=a;i<=b;i++) arr[i]*=c;
(2) Add a b c： 将 [a,b] 区间所有数加上 c　　　　　//for(i=a;i<=b;i++) arr[i]+=c;
(3) Sum a b ： 求 [a,b] 区间所有数的和　　　　　　//for(i=a;i<=b;i++) sum+=arr[i];
(4) Cnt a b c： 求 [a,b] 区间值等于 c 的数的个数　　//for(i=a;i<=b;i++) if (arr[i]==c)
cnt++;
对于每个 Sum 和 Cnt 操作，输出要求的值。
### 输入
输入第一行为数据组数 T（T <= 10）。
对于每组数据，第一行是一个整数 Q （1 <= Q <= 50000， 对于 90% 的数据有 Q <= 10000），表示有 Q 个询问。
接下来 Q 行，每行表示一个操作（1 <= a <= b <= 109, 0 <= c <= 10000, 并且数据保证序列所有元素在任何时刻都不会超过
10000）。
### 输出
对于每组数据，首先输出一行"Case X:"（X = 1..T），然后对于每个 Sum 和 Cnt 操作都要输出一行，为要求的结果。
### 样例输入
    
    
    2
    4
    Add 100 399 5
    Mult 200 299 3
    Sum 1 1000
    Cnt 1 1000 5
    2
    Cnt 1 1000000000 1
    Cnt 1 1000000000 0
    
### 样例输出
    
    
    Case 1:
    2500
    200
    Case 2:
    0
    1000000000
    
### 来源
第七届北航程序设计大赛现场决赛 - mm
]]
content[65]=
[[
# 矩阵覆盖
### 问题描述
小董适本来写了一个“衣服与布片之间不能不说的故事”，后来被阿星批评了，于是不加任何额外题目背景了…………Orz
给定一个 01 矩阵 A，以下继续给定 p 种 01 矩阵 Bi，每种矩阵的个数要多少有多少。
要求：
(1) A 矩阵中所有的 1 至少需要用某个 B 矩阵中的一个 1 覆盖。当然，可以用多个 1 和多个 0 覆盖。
(2) Bi 覆盖 A 矩阵时，至少有一个 Bi 中为 1 而 A 中为 0 的黏贴点。
(3) Bi 矩阵的范围不可超出 A 的范围。
(4) A 矩阵中的每一个位置（无论是 0 还是 1）都可以被 Bi 矩阵重复覆盖。
问：最少需要使用多少个 B 矩阵才能满足以上要求。
### 输入
输入第一行为数据组数 T（T <= 20）。
对于每组数据：首先是一个空行，接下来的第一行为三个整数 n, m, p（1 <= n, m <= 10，1 <= p <= 5），表示 A 矩阵的大小为 n
行 m 列，p 为 B 矩阵的种类数，接下来 n 行描述了 A 矩阵（数据保证 A 矩阵中 1 的个数不大于 A 矩阵面积的 1 / 6）。
之后为 p 种 B 矩阵。
对于每种 B 矩阵，首先是两个数 a, b（1 <= a, b <= 4），代表此种 B 矩阵的大小为 a 行 b 列，接下来 a 行则描述了这种 B
矩阵。
### 输出
每组测试数据输出一行。
如果可以满足要求，输出要用的 B 矩阵的个数；如果无法满足要求，输出 "impossible"。
### 样例输入
    
    
    2
    
    4 3 1
    010
    010
    000
    000
    2 1
    1
    1
    
    2 6 1
    010000
    100000
    1 2
    11
    
### 样例输出
    
    
    impossible
    2
    
### 来源
第七届北航程序设计大赛网络预赛 - KissBuaa.DS
]]
content[66]=
[[
# LCS
### description
给你两个序列A[0...m-1], B[0...n-1]，求A和B的最长公共子序列C[0...k-1]
也就是求一个最长的C，使得
    
    
    C[0...k-1] = A[I(0), I(1), ..., I(k-1)] = B[J(0), J(1), ..., J(k-1)] 
    其中 0 <= I(i) < m, 0 <= J(i) < n, i = 0...k-1
    对于 i < j, I(i) < I(j), J(i) < J(j)
    
### input
多组测试数据(组数<=20),对于每组测试数据
首先是一行两个正整数m, n
接下来的一行是m个整数A[0], ..., A[m-1]
最后一行是n个整数B[0], ..., B[n-1]
1 <= m, n <= 1000, 0 <= A[i] <= 10000, 0 <= B[j] <= 10000, 0 <= i < m, 0 <= j
< n
### output
每组数据输出两行
第一行形如"Case #?: k"，?为第几组测试数据，k表示最长公共子序列C的长度
第二行是k个数，给出字典序最小的序列C (如果C的长度为0，请输出“null”)
详见Sample
### sample input
    
    
    5 4
    1 2 3 4 5
    1 5 2 3
    
    4 4
    1 1 2 2
    2 2 1 1
    
    1 1
    1
    2
    
### sample output
    
    
    Case #1: 3
    1 2 3
    Case #2: 2
    1 1
    Case #3: 0
    null
    
### hint
考虑到这样的子序列可能有多个,如果你不知道怎么输出这个序列，要输出C[]的时候什么都不要输出，你可以得到50%的分数，
如果你随便输出一个可行的C，你可以得到80%的分数，如果你输出的是所有可行的C中字典序最小的那个，你可以得到100%的分数
如果你C的长度算错了，你将得到0%的分数
也就是说，对于样例输入，如果你的输出是
    
    
    Case #1: 3
    Case #2: 2
    Case #3: 0
    
你将得到50%的分数
如果你的输出是
    
    
    Case #1: 3
    1 2 3
    Case #2: 2
    2 2
    Case #3: 0
    null
    
你将得到80%的分数
]]
content[67]=
[[
# LIS
### description
给你一个序列A[0...n-1]，求它的最长单调上升子序列
也就是求一个最长的C，使得
    
    
    C[0...k-1] = A[I(0), I(1), ..., I(k-1)] 
    其中 0 <= I(i) < n, i = 0...k-1
    对于 i < j, I(i) < I(j), A[ I(i) ] < A[ I(j) ]
    
### input
多组测试数据(组数<=20),对于每组测试数据
首先是一行有以个正整数n
接下来的一行是n个整数A[0], ..., A[n-1]
对于 50%的分数, 1 <= m, n <= 1000, 0 <= A[i] <= 100000, 0 <= i < n
对于100%的分数, 1 <= m, n <= 100000, 0 <= A[i] <= 100000000, 0 <= i < n
### output
每组数据输出两行
第一行形如"Case #? :k"，?为第几组测试数据，k表示最长单调上升子序列C的长度
第二行是k个数，给出字典序最小的C
详见Sample
### sample input
    
    
    5
    1 2 3 4 5
    
    4
    1 1 3 2
    
    1
    1
    
### sample output
    
    
    Case #1: 5
    1 2 3 4 5
    Case #2: 2
    1 2
    Case #3: 1
    1
    
### hint
考虑到这样的子序列可能有多个,如果你不知道怎么输出这个序列，要输出C[]的时候什么都不要输出，你可以得到50%的分数，
如果你随便输出一个可行的C，你可以得到80%的分数，如果你输出的是所有可行的C中字典序最小的那个，你可以得到100%的分数
如果你C的长度算错了，你将得到0%的分数
也就是说，对于样例输入，如果你的输出是
    
    
    Case #1: 5
    Case #2: 2
    Case #3: 1
    
你将得到50%的分数
如果你的输出是
    
    
    Case #1: 5
    1 2 3 4 5
    Case #2: 2
    1 3
    Case #3: 1
    1
    
你将得到80%的分数
]]
content[68]=
[[
# Arrangement
### description
其实这就是书上讲的活动安排，不过被我抽象了~~~~~~~
在一维坐标轴上，给你若干条线段，要求选择更多的线段，使得每个点最多被覆盖1次
也就是说给你一个线段的集合 S = { < ai -> bi > : 0 <= i < |S|, ai <= bi },
要求你给出这个集合的一个子集 T = { < aI(t) -> bI(t) > : 0 <= I(t) < |S|, 0 <= t < |T|,
对于任意x, 满足aI(t) <= x <= bI(t)的t的个数 <= 1 }
为了降低难度，这题就不要求字典序(字典序...典序...序...)输出答案了，只需要输出任意一组解即可(在选择的最多的线段个数，即maximize|T|，的
前提下)
### input
多组测试数据，对于每组测试数据
首先是一行，一个数n，表示线段的条数。
接下来的一行，有2n个整数ai, bi，分别为线段的起点和终点坐标( 0 <= ai <= bi <= 100000000, 0 <= i < n )
0 < n < 100
### output
每组测试数据输出两行，
第一行形如"Case #?: k"，?为第几组测试数据，k表示选出的不相交的线段的条数
第二行是k个正整数，之间用空格分隔，分别为这k条线段的下标(下标从0开始)
### sample input
    
    
    3
    2 5 1 10 6 7
    
### sample output
    
    
    Case #1: 2
    0 2
    
### hint
如果z正确求得不相交线段的条数，可以得到50%的分数
如果还给出一组可行的选择方案，可以得到100%的分数
]]
content[69]=
[[
# 0-1Knapsack
### description
0-1背包问题
有一个背包，容量为V，有n个物品，体积Vi, 价值Wi, 物品不能分割。
求最大可以拿到的价值，并输出一种方案.
### input
多组测试数据，对于每组测试数据
第一行是两个正整数n, V, 分别表示物品数和背包的容量
第二行是2n个正整数，V0, W0, ..., Vn-1, Wn-1, 表示这n个物品的体积和价值
1 <= n < 100, 1 <= V <= 1000
### output
对于每组测试数据输出两行
第一行形如"Case #?: W"，?为第几组测试数据，W能拿到的物品的最大价值
第二行首先是一个整数k,表示拿到的物品数为k,接下来是k个正整数,分别为这k个物品的编号(编号从0开始),整数之间用空格分隔
### sample input
    
    
    2 2
    1 10 1 20
    2 1
    1 10 1 20
    
### sample output
    
    
    Case #1: 30
    2 0 1
    Case #2: 20
    1 1
    
### hint
如果给出能拿到物品的最大价值，可以得到50%的分数
如果还给出一组可行的选择方案，可以得到100%的分数
]]
content[70]=
[[
# FracKnapsack
### description
分数背包问题
有一个背包，容量为V，有n个物品，体积Vi, 价值Wi, 物品可以分割。
求最大可以拿到的价值，并输出一种方案.
### input
多组测试数据，对于每组测试数据
第一行是两个正整数n, V, 分别表示物品数和背包的容量
第二行是2n个正整数，V0, W0, ..., Vn-1, Wn-1, 表示这n个物品的体积和价值
1 <= n < 100, 1 <= V <= 1000
### output
对于每组测试数据输出两行
第一行形如"Case #?: W"，?为第几组测试数据，W能拿到的物品的最大价值
第二行是n个实数，分别表示这n个物品拿到的量(0~100%),实数之间用空格分隔
以上的实数要求你和标准答案的差 <= 10-3
### sample input
    
    
    2 2
    1 10 1 20
    2 1
    1 10 1 20
    
### sample output
    
    
    Case #1: 30
    1 1
    Case #2: 20
    0 1
    
### hint
如果给出能拿到物品的最大价值，可以得到50%的分数
如果还给出一组可行的选择方案，可以得到100%的分数
]]
content[71]=
[[
# a+b
# Already Rejudged.Please submit your code again!
### Input
输入多组a,b
求a+b
### Output
输入灰常大，请用scanf
### Input
    
    
    1 2
    3 4
    
### Output
    
    
    3
    7
    
]]
content[72]=
[[
# 神奇的球球
# 神奇的球球
### 题目叙述
传说有一只神牛叫做GG，他最近有一个爱好是跟他的好基友MM做游戏。这天，GG拿来好多好多颜色都不一样的球球，MM突发奇想拿来了很多很多不一样颜色的盒子。俩人
很有爱的在一起摆弄，该回家的时候，面对这些“漂亮”的盒子和球球，俩人会心一笑，叫来了一直叫DS的菜鸟，说——“你把这些球球都放进盒子里面吧！”然后就土遁了。
。。
DS对GG和MM这种虐菜的行为很是不满，于是他想把盒子或者球球都染成一个颜色！对于面前这些很有色彩的颜色和球球，DS想知道把球球放进盒子里面有多少种方法。
P.S. 相同颜色的球球看做是相同的球球。相同颜色的盒子看做是相同的盒子。
注意：允许有空盒子
### 输入
此题有多组数据。数据组数小于等于1000
数据第一行，代表数据的组数。
以下的每行有三个整数：x,n,m。
第一个数表示DS使坏的方法——
x=0 乖乖的DS什么都没有做；
x=1 坏坏的DS把球球都染成了一个颜色；
x=2 坏坏的DS把盒子都染成了一个颜色；
x=3 邪恶的DS把盒子和球球都染成了一个颜色！
  
### 输出
对于每组样例输入，输出一个整数。即将球球放进盒子里面的方案数对1000000007取模。
### 样例输入
    
    
    4
    0 8 5
    1 8 5
    2 8 5
    3 8 5
    
### 样例输出
    
    
    390625
    495
    3845
    18
    
### 数据规模
    
    
    对于 20% 的数据 0<n,m≤10
    对于 50% 的数据 0<n,m≤100
    对于 70% 的数据 0<n,m≤500
    对于 100% 的数据 0<n,m≤1000
    
]]
content[73]=
[[
# 排序
### Problem Description
大水题一道，给你n个数字，按升序输出
### Input
多组数据，每组第一行一个数字(n<100)表示有n个待排序数字，接下来一行n个数字
### Output
按升序输出
### Sample Input
    
    
    5
    1 2 3 4 5
    3
    3 2 1
    
### Sample Output
    
    
    1 2 3 4 5
    1 2 3
]]
content[74]=
[[
# strcmp
### Problem Description
依然是排序问题，不过这次排序的对象是字符串。
设有两个序列X[0...k-1], Y[0...m-1]
X的字典序小于Y，存在一个i<k使得, X[0..i-1] = Y[0..i-1] 且 X[i] < Y[i]
若前k项都相等则长度长的定义为更大
例如boat < boot < cap < card < cat < to < too< two < up
请自己实现strcmp的功能。
不允许使用strcmp函数及string类的小于(大于)比较符！否则此题0分！
### Input
多组数据，每组第一行一个数字n(n<=20)，接下来n行，每行一个字符串，长度小于100
### Output
按字典序输出n行，每行一个字符串。每2组输出用空行隔开。
### Sample Input
    
    
    9
    cap
    to
    cat
    card
    two
    too
    up
    boat
    boot
    
### Sample Output
    
    
    boat
    boot
    cap
    card
    cat
    to
    too
    two
    up
    
]]
content[75]=
[[
# 八国王 or not~
### Problem Description
书后的习题里有一道八皇后问题，lcl刚接触的时候觉得太伤脑筋了，于是她编出了一道八国王问题，决定先解决这个，但她又发现这个也太困难了，于是决定从第一步开始，
先判断某一个给定的n*n矩阵是否满足n国王的条件。你也来试试看吧~
注意：
满足n国王问题的条件是，两个国王不能在同一行，同一列，但是可以出现在同一条对角线上；矩阵中有且只能有n个国王。
（嘿嘿~可能国王会比较神经大条一点？或者比较宽容一点……）
这里用数字1来代表该位置有国王，0代表没有。
### Input
包含多组数据。
对于每组数据：
第一行包括一个整数n。（1<=n<=10）
第2~n+1行包括一个n*n的矩阵。
### Output
对于每组数组，若给出的矩阵满足n国王的条件，则输出“YES”，否则输出“NO”
### Sample Input
    
    
    3
    1 0 0
    0 0 1
    0 1 0
    4
    1 0 0 0
    0 1 0 0
    0 1 1 0
    0 0 0 1
    
### Sample Output
    
    
    YES
    NO
]]
content[76]=
[[
# 地心引力
### Problem Description
2012就快到了，大家有没有很激动呢？其实根据我们的研究，2012并不会导致地球毁灭，只是地球重力场会发生变化，地球对人的引力将不是竖直向下的！将旋转90°
有木有！！！
更神奇的是，连你写在纸上的字都会旋转有木有！！！
现在给你一个n*n的矩阵，请输出2012之后它的样子！
### Input
多组数据，每组数据第一行一个整数n(n<=20)表示接下来是一个n*n的矩阵。
然后n行，每行n个数字。
### Output
请输出2012之后它的样子（顺时针旋转）
### Sample Input
    
    
    1
    1
    3
    1 2 3
    4 5 6
    7 8 9
    
### Sample Output
    
    
    1
    7 4 1
    8 5 2
    9 6 3
]]
content[77]=
[[
# 晴天小猪学算术
### Problem Description
晴天小猪同学最近有点郁闷，因为最近数学学到了用竖式计算乘法，但晴天小猪总是算不对。聪明的你来帮帮晴天小猪吧。
### Input
多组测试数据，每组测试数据包括两个整数m,n仅一行(1<=m,n<=231-1)，以0 0 结尾。两个数的第一位和最后一位都不是0。
### Output
输出格式: 两个乘数的末位数对齐 乘号后面紧跟着第二个乘数,线的长度以最长的数的位数为准,每两组测试数据中间，输出一个空行。
0需要输出！
### Sample Input
    
    
    89 13
    2 3
    0 0
    
### Sample Output
    
    
      89
     x13
    ----
     267
     89 
    ----
    1157
    
     2
    x3
    --
     6
    
]]
content[78]=
[[
# 学线代的Courage
### Problem Description
晴天小猪因为学算术不开心，而Courage遇到的问题就比晴天小猪麻烦多了。Courage最近在学习线性代数，而他对矩阵乘法一直没弄明白，于是完成不了老师布置
的作业。于是只能向你求助了。
令A=![<img:/richtext/res/35/QQ%E6%88%AA%E5%9B%BE20111129180331.jpg>](/richtext/
res/35/QQ%E6%88%AA%E5%9B%BE20111129180331.jpg) ,B=![<img:/richtext/res/36/QQ%E
6%88%AA%E5%9B%BE20111129180342.jpg>](/richtext/res/36/QQ%E6%88%AA%E5%9B%BE2011
1129180342.jpg) 当且仅当p=n时可以进行乘法运算
AXB=![<img:/richtext/res/37/QQ%E6%88%AA%E5%9B%BE20111129180349.jpg>](/richtext
/res/37/QQ%E6%88%AA%E5%9B%BE20111129180349.jpg) 为qXm的矩阵，且cij=![<img:/richtext/
res/38/QQ%E6%88%AA%E5%9B%BE20111129180357.jpg>](/richtext/res/38/QQ%E6%88%AA%E
5%9B%BE20111129180357.jpg)
如果是非法的矩阵运算，请直接输出-1
### Input
多组测试数据，每组第一行为一个整数n(n<=10)，表示有n个矩阵连续相乘。接下来有n个矩阵，每个矩阵第一行2个整数p,q表示这是一个pXq的矩阵，接下来将
给你一个pXq的矩阵。(1<=p,q<=1000)
### Output
请输出这n个矩阵连续相乘后的结果，若为非法乘法，请输出-1。
### Sample Input
    
    
    2
    1 2
    1 1
    2 3
    1 2 3
    4 5 6
    2
    1 1
    1
    2 2
    1 0
    0 1
    
### Sample Output
    
    
    5 7 9
    -1
    
### Hint
scanf and printf are recommended
]]
content[79]=
[[
# 股票交易
### 描述
最近中国股市又开始慢慢热起来了，还有传言说2009年中国股市将重新进入牛市。我们也来关注下股票交易的问题。
股票的定义是一个纯经济学问题，它实际上是代表了你对股份公司的所有权，可是广大的股民群众实际上都把它看作了商品的一种，只是这种商品不是通过生产活动产生的。我们
在这里也就随大流，把它看作商品吧。既然是商品，就存在计量的问题，水果我们是按斤买的，电视机我们是按台买的，而股票我们是按“股”买的。这里的股与电视机的台是类
似的，也就是说，我们不能买半股，至少要买一股。当然股票和水果、电视机还是有区别，除开用处不说，股票有个非常大的特点就是价格时时刻刻都在变，任何时候任何人都可
以在交易市场上合法的买卖。股票交易是要交手续费的，这个费用包括证券交易印花税（交这个税的意义就是政府承认你的这一次交易是合法的）、过户费、监管费等等，有些费
率还与买卖的股票类别有关，计算比较复杂。
为了计算方便，我们把问题简化一下。首先，忽略一天之内的价格变动，也就是说每天只有一个成交价，在这一天买卖都是这个价格。然后，假定只在卖的时候要交手续费，费用
是一个定值s。
比如说，如果交易的手续费是100元，第一天某支股票的价格是10元一股，我们有10000元，于是可以买入1000股，到了第二天，股票涨到了11元一股，我们再卖
出全部的1000股，于是得到11000元，去掉100元手续费，于是赚了900元。
现在如果已知了一支股票n个交易日的成交价、手续费以及一开始的资金数，问：如果在这n天中最多只允许买卖一次，那么最多能赚多少钱？
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=10）。
对于每组数据，第一行是3个整数n（1<n<=10000）、s（0<=s<=1000）、p（0<p<=106），分别为交易日的个数，手续费和初始的资金。第二行
是n个大于0的正实数（小数点后最多两位有效数字），按时间顺序给出了n个交易日每天的成交价（成交价<1000）。
### 输出
对于每组数据，输出一个数，为这n天内限定最多只买一次能赚的的最大钱数，保留2位小数。
### 样例输入
    
    
    2
    4 10 100
    10.00 1.00 12.00 10.00
    3 10 100
    10.00 5.00 1.00
    
### 样例输出
    
    
    1090.00
    0.00
    
### 来源
第四届北航程序设计大赛网络预赛
]]
content[80]=
[[
# 排队接水
### 描述
现在有n个人想要接水，以及k个水龙头，现在已知每个人接水的时间，显然不同的接水顺序，大家要花的等待时间就不一样。求一个排队序列使得所有人等待时间（自己在接水
的时候肯定也是要站在旁边等的，所以这个时间也要算进等待时间里面去）的总和最小。
### 输入
输入包含多组数据。
第一行为数据的组数x（0<x<=10）。
对于每组数据，第一行为整数n（1<=n<=10000）和k（1<=k<=100）分别为人数和水龙头的个数，第二行为n个整数，分别表示n个人的接水时间（接水时
间<=10000）。
### 输出
每组数据输出一行，这一行应该有一个数，为所有人等待时间总和的最小值。
### 样例输入
    
    
    2
    5 1
    1 2 3 4 5
    5 2
    1 2 3 4 5
    
### 样例输出
    
    
    35
    22
    
### 提示
第一组数据，最小的总等待时间的最小值为1+(1+2)+(1+2+3)+(1+2+3+4)+(1+2+...+5)=35。
第二组数据，最小的总等待时间的最小值为1+(1+2)+(1+2+4)+3+(3+5)=22。
### 来源
第四届北航程序设计大赛网络预赛
]]
content[81]=
[[
# 圆柱
### 描述
给定一张矩形的纸和一把剪刀，你可以用下面的方法做出一个圆柱形的纸杯：
剪一刀，得到两张矩形的纸；
用一张剪出一个圆，用来做纸杯的底；
适当裁剪另一张矩形的纸，使其中一条边的长度正好等于刚才剪出的圆的周长，这样就可以卷起来作为圆柱体的柱面。
如果告诉你给定的纸的宽和高，问用上面的方法做出的纸杯的最大的容积。
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=50000），接下来每行一组数据。
每组数据，就两个整数w（0<w<=300）和h（0<h<=300）为给定的纸的宽和高。
### 输出
对于每组数据，输出一个实数为最大的容积，保留3位小数。
### 样例输入
    
    
    4
    10 10
    10 30
    10 50
    10 70
    
### 样例输出
    
    
    54.247
    412.095
    785.398
    785.398
    
### 来源
第四届北航程序设计大赛网络预赛
]]
content[82]=
[[
# 最优序列
### 描述
给定一个长度为n的序列，要求重新排列序列中各个元素的位置，使得这个序列的字典序最小。要求每个元素的初始下标减去重新排列后的下标的结果要小于等于k。
比如：
给定长度为7的序列，并且限定k为2：6 10 4 5 3 1 2
可以重新排列各个元素的位置得到新序列：4 5 3 1 2 6 10
对于4，其下标由3变成了1，差为2小于等于k，
对于5，其下标由4变成了2，差为2小于等于k，
对于3，其下标由5变成了3，差为2小于等于k，
对于1，其下标由6变成了4，差为2小于等于k，
对于2，其下标由7变成了5，差为2小于等于k，
对于6，其下标由1变成了6，差为-5小于等于k，
对于10，其下标由2变成了7，差为-5小于等于k，
并且4 5 3 1 2 6 10就是能够得到的字典序最小的序列了。
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=20）。
对于每组数据，第一行为两个整数n（0<n<=10000）和k（0<k<=10000），第二行n个互不相同的整数为初始的序列A（0<Ai<109）。
### 输出
对于每组数据，输出能够得到的字典序最小的序列。
### 样例输入
    
    
    2
    7 2
    6 10 4 5 3 1 2
    7 3
    6 10 4 5 3 1 2
    
### 样例输出
    
    
    4 5 3 1 2 6 10
    4 3 1 2 5 6 10
    
### 来源
第四届北航程序设计大赛网络预赛
]]
content[83]=
[[
# QK的AW准备之旅
### 描述
AW是GRE写作，由issue和argument组成。题库是已经由ETS准备好的，考试时将从中随机抽取题目进行写作，所以，最好QK需要在考试之前练习所有的题
目，但事实上这是不可能的，所以他只能选一部分进行练习。我们给每个题目定义以下三个参数：
(1) 编号
(2) 练习所用时间T，
(3) 题目的价值V，
虽然ETS的题库很大，但是里面有很多题目都是相似的。做两个相似的题得到的价值只是两题的V的较大值，而做两个不相似的题得到的价值是两题的V的和。
现在QK只剩下Tr的时间准备了，若已知题库中所有n题的参数，以及它们之间的相似关系，问QK最多能准备多大价值的题目。
### 输入
输入包含多组测试数据，第一行为数据组数x（0<x<=10）。
每组测试数据的第一行为题库中题目的数量n（1<=n<=1000）和QK剩下的准备时间Tr（0<=Tr<=1000），
第二行是n个整数，依次为编号1到n的每一题的练习所需时间T（0<T<=1000），
第三行也是n个整数，依次为编号1到n的每一题的价值V（0<V<=10000），
第四行是一个整数m（0<=m<=10000），接下来m行是QK调查得来的题目的相似关系，每行两个数a（1<=a<=n）和b（1<=b<=
n）表示编号为a和b的两题是相似的。如果a与b相似且b与c相似，那么a与c也一定相似。
### 输出
每组数据只输出一个数（占一行），为QK能准备的题目的最大价值。
### 样例输入
    
    
    2
    4 10
    5 4 3 8
    5 6 5 10
    1
    2 3
    5 20
    1 2 3 4 5
    2 4 6 8 10
    3
    2 3
    3 4
    4 1
    
### 样例输出
    
    
    11
    18
    
### 提示
第一组数据选择练习的题目是第1和第2题。
第二组数据选的是第4和第5题，虽然时间有多，但是其他的都是直接或间接的相似题，练习了也不能让价值更大。
### 来源
第四届北航程序设计大赛网络预赛
]]
content[84]=
[[
# Fibonacci数列
### 描述
已知Fibonacci数列
F1=1,
F2=1,
F3=2,
F4=3,
F5=5,
...
Fx=Fx-1+Fx-2
求Fibonacci数列的各项中末尾恰好有k个0的第m项。比如末尾恰好有1个0的第1项就是F15=610，而末尾恰好有2个0的第2项则是
F300=222232244629420445529739893461909967206666939096499764990979600，
我们只需要这一项的下标。
### 输入
输入包含多组数据。
第一行为数据的组数x（0<x<=20），接下来每组数据一行。
每组数据包括两个整数k和m，用一个空格隔开，输入保证输出结果小于231。
### 输出
每组数据输出一行，为Fibonacci数列中末尾恰好有k个0的第m项的下标。
### 样例输入
    
    
    3
    1 1
    2 2
    2 5
    
### 样例输出
    
    
    15
    300
    900
    
### 来源
第四届北航程序设计大赛网络预赛
]]
content[85]=
[[
# n个节点的k叉树
### 描述
对于一棵树T，定义size(T)为T中的节点数，child_num(T)为T的根的子节点个数，child(T,i)为以T的左数第i个儿子为根的子树。
对于两棵树Ta和Tb，若size(Ta)=size(Tb)且child_num(Ta)=child_num(Tb)=x且child(Ta,1)=child(
Tb,1)且child(Ta,2)=child(Tb,2)且......且child(Ta,x)=child(Tb,x)，则说Ta=Tb，即这两棵树的结构相
同。问有多少结构不同的包含n个节点的k叉树。例如下面就是包含4个节点的三叉树的所有5种结构。
    
    
    O    O      O      O      O
    |    |     / \    / \    /|\
    O    O    O   O  O   O  O O O
    |   / \   |          |
    O  O   O  O          O
    |
    O
    
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=20），每组数据占一行。
对于每组数据，就两个数，为n（0<n<=200）和k（0<k<=200）。
### 输出
对于每组数据，输出包含n个节点的k叉树的不同的结构数，结果会很大，只需要输出其模200905的结果就可以了。
### 样例输入
    
    
    4
    3 1
    3 2
    4 2
    4 3
    
### 样例输出
    
    
    1
    2
    4
    5
    
### 来源
第四届北航程序设计大赛网络预赛
]]
content[86]=
[[
# 选英雄
### 描述
大家玩Dota如果玩过5v5一定会深有体会，虽然玩家的操作和意识很重要，但队伍的阵容同样非常重要，有时胜利的决定性因素就是我方选了一个对方没有有效克制手段的
英雄。所以QK想通过建模来分析下选英雄的问题。
单纯用能力值来评价英雄之间的战斗结果显然是不具有普适性的，比如A可以战胜B，B能战胜C，C又能战胜A这样的情形。QK设计了这样的分析方法：
对于任意两个英雄A和B，定义w(A, B)表示A与B对战时A能够得到的优势值；
定义w(B, A)=-w(A, B)，所以w(A, A)=0；
对于阵容T(A)=(A1, A2, …, Ax)与阵容T(B)=(B1, B2, …, By)，定义T(A)与T(B) 对阵时的优势值W(T(A),
T(B))=sum{w(Ai, Bj), i=1~x, j=1~y}；
易知W(T(B), T(A))=-W(T(A), T(B))。
利用优势值就能够比较好得预测战斗的情况和结果了，而且还适用于团队战斗。
如果已知n个英雄任两个之间的战斗优势值，以及我方所选的5个英雄，而对方还没有开始选，那么对方肯定会选择使自己的优势值最大的队伍（也就是使我方优势值最小的队伍
）。
现在的问题是，如果我方先选英雄，要怎么选才能使得最后的优势值最大。
### 输入
输入包含多组数据。
第一行为数据的组数x（0<x<=10）。
对于每组数据，第一行为一个整数n（10<=n<=30）为可选英雄的个数，接下来n行为一个n*n的整数矩阵（即w矩阵），矩阵的第i行第j列就是第i号英雄与第j
号英雄对阵的优势值。
### 输出
每组数据输出一行，这一行应该有一个数，为我方能得到的最大优势值。
### 样例输入
    
    
    1
    10
    0	10	0	0	0	0	0	0	0	0
    -10	0	1	1	1	1	1	1	1	15
    0	-1	0	3	1	2	-2	-3	2	20
    0	-1	-3	0	1	2	5	-6	2	3
    0	-1	-1	-1	0	-1	-3	7	1	12
    0	-1	-2	-2	1	0	3	1	-1	15
    0	-1	2	-5	3	-3	0	15	1	-20
    0	-1	3	6	-7	-1	-15	0	7	5
    0	-1	-2	-2	-1	1	-1	-7	0	1
    0	-15	-20	-3	-12	-15	20	-5	-1	0
    
### 样例输出
    
    
    71
    
### 提示
我方选择的是1 2 3 5 6号英雄，这时对方的最好选择是4 7 8 9 10号英雄。
### 来源
第四届北航程序设计大赛网络预赛
]]
content[87]=
[[
# 股票交易•改
### 描述
最近中国股市又开始慢慢热起来了，还有传言说2009年中国股市将重新进入牛市。我们也来关注下股票交易的问题。
股票的定义是一个纯经济学问题，它实际上是代表了你对股份公司的所有权，可是广大的股民群众实际上都把它看作了商品的一种，只是这种商品不是通过生产活动产生的。我们
在这里也就随大流，把它看作商品吧。既然是商品，就存在计量的问题，水果我们是按斤买的，电视机我们是按台买的，而股票我们是按“股”买的。这里的股与电视机的台是类
似的，也就是说，我们不能买半股，至少要买一股。当然股票和水果、电视机还是有区别，除开用处不说，股票有个非常大的特点就是价格时时刻刻都在变，任何时候任何人都可
以在交易市场上合法的买卖。股票交易是要交手续费的，这个费用包括证券交易印花税（交这个税的意义就是政府承认你的这一次交易是合法的）、过户费、监管费等等，有些费
率还与买卖的股票类别有关，计算比较复杂。
为了计算方便，我们把问题简化一下。首先，忽略一天之内的价格变动，也就是说每天只有一个成交价，在这一天买卖都是这个价格。然后，假定只在卖的时候要交手续费，费用
是一个定值s。
比如说，如果交易的手续费是100元，第一天某支股票的价格是10元一股，我们有10000元，于是可以买入1000股，到了第二天，股票涨到了11元一股，我们再卖
出全部的1000股，于是得到11000元，去掉100元手续费，于是赚了900元。
以上都和预赛的股票交易是一样的，但是这里问题稍有变化，不再限定只能买卖一次了，即随便你买卖多少次。现在如果已知了一支股票n个交易日的成交价、手续费以及一开始
的资金数，问在这n天中最多能赚多少钱？
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=10）。
对于每组数据，第一行是3个整数n（1<n<=1000）、s（0<=s<=10000）、p（0<p<=10000），分别为交易日的个数，手续费和初始的资金。第
二行是n个大于0的正实数（小数点后最多两位有效数字），按时间顺序给出了n个交易日每天的成交价。
### 输出
对于每组数据，输出一个数，为这n天内能赚的的最大钱数，保留2位小数。输入保证结果不超过109。
### 样例输入
    
    
    3
    4 10 100
    10.00 1.00 12.00 10.00
    3 10 100
    10.5 5.3 1.9
    5 10 100
    4 1 8 2 5
    
### 样例输出
    
    
    1090.00
    0.00
    1865.00
    
### 来源
第四届北航程序设计大赛现场决赛
]]
content[88]=
[[
# Vim的替换操作
### 描述
Vim是从vi发展出来的一个文本编辑器。代码补完、编译及错误跳转等方便编程的功能特别丰富，在程序员中被广泛使用。和Emacs并列成为类Unix系统用户最喜欢
的编辑器。作为一个风靡世界、粉丝众多的文本编辑器，Vim有着极为丰富的操作命令。本题便是要求你编写一个程序，模拟Vim编辑器的替换命令。
Vim替换命令的格式一般为（方括号中的内容为可选项，花括号中的内容为必选项）：
    
    :[range]s/{pattern}/{string}/[flag]
其中：冒号':'是这一类命令的开始；[range]表示命令的作用域，即命令起作用的行的范围；s是替换命令substitute的简写；{pattern}和{s
tring}分别为待搜索的模式串和所要替换成的替换串；'/'用来界定{pattern}和{string}的起始；[flag]表示标志位，用来开启或关闭一些选
项。
行范围[range]通常是两个整数，表示作用域起始行和结束行的行号，中间以一个逗号隔开。如："4,8"表示第4行到第8行（包括第4行和第8行）。文本的行号从
1开始。也可以用一个百分号'%'表示文档的所有行。（除此之外，Vim还提供了更多灵活的表示方式。如某个数省略不写则代表光标所在行，"$"代表文本的最后一行等
等，这样",$"就表示光标所在的行到最后一行。）
{pattern}和{string}都支持正则表达式（如果你不知道什么是正则表达式，比赛结束记得google一下～）。如果{pattern}为空串，则使用上
一条替换命令中的 {pattern}作为模式串。
显然，{pattern}和{string}中不能包含分隔符，否则会产生歧义。为此，要使用反斜杠'\'进行转义。例如，要将全文中的"<br>"替换为"<br
/>"，就不能写成
    
    :%s/<br>/<br />/g
而必须写成：
    
    :%s/<br>/<br \/>/g
如果这两个表达式中的斜杠非常多，比如"file:///usr/share/man/man1/vim.1.gz"，那么对每个斜杠进行转义就显得很麻烦。为此人们
想到了一个解决办法，就是可以使用其他字符作为分隔符（总是将作为替换命令代表的's'后的第一个字符作为分隔符）。例如使用'+'做分隔符时，上述命令就可以写成这
样：
    
    :%s+<br>+<br />+g
### 输入
只有一组输入数据。其中第一行包含一个正整数L（L <= 100），表示待处理文本的行数。接下来的L行为待处理文本的内容，每行不超过100个字符。
之后每行有一个替换命令，命令的总数不超过50个，并保证在所有替换命令的执行过程中每行都不超过100个字符。
### 输出
每个替换命令执行之后，依行号从小到大的顺序，输出所有发生了替换的行的行号和内容，每个文本行对应一行输出。其中行号宽度为4个字符，向右对齐，不足部分以空格补齐
。行号结束后输出两个空格，接着为替换后的文本行内容。
如果某条命令没有进行任何替换，输出一行"Pattern not found"（不包括引号）。
每个替换命令的结果输出完毕后再加一个换行。
### 样例输入
    
    
    4
    If the Tao is greet, then the operating system is greet.
    If the operating system is greeter, then the compiler is greet.
    If the compiler is greeter, then the applications is greet.
    The user is pleased and there is harmony in the world.
    :1,3s/greet/great/g
    :%s//great/g
    
### 样例输出
    
    
       1  If the Tao is great, then the operating system is great.
       2  If the operating system is greater, then the compiler is great.
       3  If the compiler is greater, then the applications is great.
    
    Pattern not found
    
    
### 来源
第四届北航程序设计大赛现场决赛
]]
content[89]=
[[
# 集体旅游
### 描述
Sigma和QK刚考完GRE作文，想放松一下心情，于是号召ACM训练队所有成员出去旅游，这一号召得到了高层领导Leo和教练阿星的同意。经过努力，找到了一辆大
巴作为交通工具。但是由于ACM训练队的队员都很有个性，每个人都有自己想去的地方，也就是说并不一定大家都想去同一个地方旅游。由于大巴停靠旅游点需要找停泊位置，
给其它客车让道等，这一系列事情都是相当费时的。Sigma不希望在路上浪费过多的时间（6月份还要考GRE
verbal，还得多背单词），所以强烈建议只在少数旅游点停车以节约时间。
为了简化问题，假设所有旅游点都在数轴的正方向上，北航为原点。ACM训练队有n个人想乘这趟大巴去旅游，第i个人想去的目的地在pi处。大家约定大巴最多只在k个地
方停车，如果大巴在sigma想去的地点不停的话，sigma就只能选择最近的停车点下车，然后再自己想办法去目的地。当Leo收集到所有人要去的地点信息后，想要知
道在哪些地方停车，可以使所有人自己解决的路程长度总和最小。希望你能给出这个最小的总路程。
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=20）。
对于每组数据，第一行为两个整数n（0<n<=500）和k（0<k<=50），第二行n个正整数分别表示n个人想要去的目的地坐标（坐标值小于10000）。
### 输出
对于每组数据，输出一个正整数为所有人要自己解决的总路程长度的最小值。
### 样例输入
    
    
    2
    3 1
    1 11 21
    6 2
    1 2 4 11 12 14
    
### 样例输出
    
    
    20
    6
    
### 来源
第四届北航程序设计大赛现场决赛
]]
content[90]=
[[
# 扫雷
### 描述
在一个雷区被埋了若干的地雷，现在的目标是把所有的地雷找出来。整个雷区被划分成了n*m个正方形区域。每个区域最多有一个地雷，如果确定某个区域没有地雷，可以在那
个方格处使用探测器，探测器会告诉你周围8个正方形区域中共埋了多少颗地雷。现在整个雷区中有部分区域已经被证实是安全的了，并且在这些区域中探测器探测的结果也已经
知道，整个雷区内的地雷数也已知了，希望你能通过这些信息准确判断出所有地雷具体埋设的位置。
### 输入
输入包含多组数据。
第一行为数据的组数t（0<t<=10）。
对于每组数据，第一行有三个数，为雷区的大小n（2<n<10）和m（2<m<10），以及雷区中埋设的地雷数量k（1<k<=10）。
接下来n行每行有m个字符，描述了雷区的情况，每个字符对应于一个正方形区域。若某个区域对应的字符是'#'，则说明这个区域的情况不明，否则是'0'~'8'，表示
探测器在这个区域内探测的结果。输入一定是合法的，即探测器探测的结果一定是准确可靠的。
### 输出
对于每组数据，如果可以百分之百确定所有地雷的具体位置，则像输入一样用一个n行m列的字符矩阵输出整个雷区的情况，每个区域如果没有地雷，则输出探测器在这个区域探
测的结果，否则输出'*'；如果不能百分之百确定所有地雷的具体位置，则输出"NO"（不包括引号）。
每组数据之后输出一个空行。
### 样例输入
    
    
    3
    4 4 3
    ####
    #111
    111#
    001#
    3 3 2
    ##1
    #21
    #10
    3 3 2
    1#1
    2#2
    1#1
    
### 样例输出
    
    
    111*
    *111
    1111
    001*
    
    NO
    
    1*1
    222
    1*1
    
    
### 来源
第四届北航程序设计大赛现场决赛
]]
content[91]=
[[
# 树网的核
### 描述
设T=<V, E, W>是一个无圈且连通的无向图（也称为无根树），每条边有正整数的权，我们称T为树网（tree
network），其中V和E分别表示结点与边的集合，W表示各边长度的集合，设T有n个结点。
树网中任何两结点a和b都存在唯一的一条简单路径，用d(a,b)表示以a和b为端点的路径的长度，它是该路径上各边长度之和。我们称d(a,b)为a和b间的距离。
根据d(a,b)可以定义结点集合A到结点b的距离d(A,b)=min{d(a,b)|a∈A}。
对T的任意连通子图T'=<V', E', W'>，定义ECC(T',T)=max{d(V',u)|u∈V}为T'的偏心距。
现在的任务是，对于给定的树网T和非负整数s，求T的一个子图T'，使得T中所有边的权值的和不超过s，且ECC(T',T)最小。我们称这个子图T'为树网T的核（
Core）。必要时，T'可以退化为某个结点。一般来说，在上述定义下，核不一定只有一个，但最小偏心距是唯一的。
### 输入
输入包含多组测试数据，第一行为数据组数x（0<x<=10）。
对每组数据第一行为n（1<=n<=1000）和s（0<=s<=108），接下来n-
1行描述树网中的所有边，每行给出3个用空格隔开的正整数，依次表示每一条边的两个端点编号和权值（权值小于10000），点的编号为1到n。
### 输出
对于每个测试点输出一个数，为最小的偏心距。
### 样例输入
    
    
    2
    8 6
    1 3 2
    2 3 2
    3 4 6
    4 5 3
    4 6 4
    4 7 2
    7 8 3
    5 9
    1 2 5
    2 3 2
    2 4 4
    2 5 3
    
### 样例输出
    
    
    5
    3
    
### 来源
第四届北航程序设计大赛现场决赛
]]
content[92]=
[[
# QK背单词
### 描述
背单词是费血的，相信大家都有体会……
红宝书上有n个单词，QK一开始有hp滴血，现在距离考试还有T天的时间。当然，QK希望在考前背完单词，但是，他又不希望挂掉（即hp <=
0）所以，对于这T天准备时间的第i天，他都有3种选择。
1. 背单词。那么这一天，他将能背d个单词，并且费ai的血；
2. 睡过去，什么也不会发生，就像不存在这一天；
3. 来点娱乐活动，由于考试的阴影依然要费ai的血，但是可以回复y的血。
问QK在保证不挂掉的前提下最多能背多少单词。
### 输入
输入包含多组测试数据，第一行为数据组数x（0<x<=10)。
每组测试数据的第一行为红宝书中单词的数量n（1<=n<=108），QK一开始的血量hp（0<hp<=108），考前还剩下的天数T(0<=T<=10000)，
每天能背的单词数d（0<d<=1000），一天进行娱乐活动能回的血量y（0<y<=hp）。
第二行是T个整数，依次为a1到aT（0<=ai<=100）。
### 输出
每组数据只输出一个数（占一行），为QK在保证不挂掉的前提下最多能背的单词数。
### 样例输入
    
    
    2
    20 20 5 4 9
    6 6 4 6 6
    10 100 3 4 10
    10 10 10
    
### 样例输出
    
    
    16
    10
    
### 提示
第一组数据，前两天和后两天背单词，第三天娱乐；第二组数据，三天都背单词。
### 来源
第四届北航程序设计大赛现场决赛
]]
content[93]=
[[
# 复素数
### 描述
如果一个复数a+bi，其中a和b都是整数，那么a+bi就是复整数。模为1的复整数称为单位复整数（包括1，-1，i，-i四个）。对于一个非单位复整数，如果它可
以表示为2个非单位复整数的乘积，则这个复整数是一个复合数，否则是一个复素数。
对于给定的复整数a+bi，希望能判断a+bi是不是一个复素数。
### 输入
第一行为数据组数x（0<x<=50)，接下来x行每行一组数据，为两个整数a和b（1<=a2, b2<=109）表示复整数a+bi。
### 输出
对于每组数据输出一行，若是复素数则输出"YES"，否则输出"NO"，都不包含引号。
### 样例输入
    
    
    3
    2 1
    2 2
    3 -4
    
### 样例输出
    
    
    YES
    NO
    NO
    
### 提示
2+2i = 2*(1+i)
3-4i = (2-i)*(2-i)
### 来源
第四届北航程序设计大赛现场决赛
]]
content[94]=
[[
# 凸多边形的划分
### 描述
给你一个凸多边形，可以通过添加若干不相交的对角线把这个凸多边形划分成一些三角形或四边形。假如给定的凸多边形有n个顶点，问有多少种不同的划分方案。
### 输入
输入包含多组数据。
第一行为数据的组数x（0<x<=20），接下来每组数据一行。
每组数据只有一个整数n（2<n<=5000）
### 输出
每组数据输出一行为划分方案数，结果会很大，只需要输出其模200905的结果就可以了。
### 样例输入
    
    
    8
    3
    4
    5
    6
    7
    8
    9
    10
    
### 样例输出
    
    
    1
    3
    10
    38
    154
    654
    2871
    12925
    
### 来源
第四届北航程序设计大赛现场决赛
]]
content[95]=
[[
# 圣诞节礼物
### 描述
圣诞节快到了，Jimmy 买了好多礼物准备送给他的朋友们，他想把价格为 S1 的礼物送给第 1 个朋友，价格为 S2 的礼物送给第 2
个朋友.....以此类推，他想把价格为 Si 的礼物送给第 i 个朋友。但是他买的礼物太多了，以至于他忘了是否存在价格为 Si 的礼物。幸运的是 Jimmy
把购物清单留了下来 。
现在告诉你 Jimmy 购买的 n 件礼物的价格，以及他想要送的 m 件礼物的价格，他想知道他能否从买的 n 件礼物中挑出那 m
件送给他的朋友们。如果能的话就告诉他“YES”, 否则告诉他“NO”。
### 输入
输入包含多组数据。
对于每组数据，第一行为两个正整数 n 和 m （0 < n , m <= 100000），分别为买的礼物的件数和想要送的礼物件数。第二行 n
个正整数，为买的 n 件礼物的价格。第三行 m 个正整数，第 i 个数代表想要送给第 i 个朋友的礼物的价格。（价格都在231以内）
当 n = m = 0 时输入结束。
### 输出
每一组数据输出一行，如果能则输出“YES”，否则输出“NO”。
### 样例输入
    
    
    10 4
    1 2 3 4 5 6 7 8 9 10
    2 3 5 90
    10 3
    1 2 3 4 5 78 33 22 2 1
    2 2 4 
    0 0
    
### 样例输出
    
    
    NO
    YES
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[96]=
[[
# 隐藏的BUAA
### 描述
给定一个字符矩阵，问里面隐藏了多少个 BUAA 。对于矩阵中的任意一条 4 连通的路径，如果按这条路径依次经过的字符正好是“BUAA”，就算找到了一个隐藏的
BUAA 。
例如对于下面的 4 × 4 的字符矩阵：
    
    
    AAUB
    AABB
    BBBB
    BBBB
    
一共藏了4个BUAA：（行号，列号）
(2,3)->(1,3)->(1,2)->(1,1)
(2,3)->(1,3)->(1,2)->(2,2)
(1,4)->(1,3)->(1,2)->(1,1)
(1,4)->(1,3)->(1,2)->(2,2)
### 输入
输入包含多组数据。
对于每组数据，第一行为两个整数 n 和 m （1 <= n, m <= 50），接下来的 n 行每行 m 个大写字符，为给定的字符矩阵。
当 n = m = 0 时，输入结束。
### 输出
每组数据输出一行，为隐藏的BUAA的个数。
### 样例输入
    
    
    2 1
    A
    B
    4 4
    AAUB
    AABB
    BBBB
    BBBB
    0 0
    
### 样例输出
    
    
    0
    4
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[97]=
[[
# 盒子工厂
### 描述
淘宝的生意越来越火，以至于包装用的盒子都供不应求。现在一个盒子工厂的老板需要你编写一个控制程序，来帮助他们制造盒子。
这个程序所需要实现的功能很简单，读取一条指令，然后指挥机械臂去执行就可以了。但是，如果指令不合法，应该把这条命令忽略掉。
初始时有 n 个盒子（编号0 ~ n-1）顺次排列在一条流水线上。
有效命令包括：
    
    move a onto b
a 和 b 均为盒子编号，此命令作用是将 a 和 b 两个盒子之上的盒子全部放回初始位置以后，将 a 放于盒子 b 上；
    
    move a over b
a 和 b 均为盒子编号，此命令作用是在把所有在 a 盒子之上的盒子放回初始位置后，把 a 放于含有 b 盒子的堆上；
    
    pile a onto b
a 和 b 均为盒子编号，此命令作用是先把放在 b 盒子上面的所有盒子放回初始位置，再把 a 及 a 盒子上面所有盒子移到 b 盒子所在堆上，移动时保持 a
及 a 以上盒子的堆放次序；
    
    pile a over b
a 和 b 均为盒子编号，此命令作用是把 a 及 a 上面的所有盒子放在含有 b 盒子的堆上面；
    
    quit
退出程序。
任何命令中，假设出现 a = b 或者 a 和 b 出现在同一堆盒子中，那么我们认为这条命令不合法。所以你的控制程序需要知道任何时候流水线上的盒子堆叠状况。
### 输入
输入包含多组数据。
对于每组数据，第一行为一个整数 n （1 <= n <= 25），为盒子的个数。
接下来为命令序列，每行一条有效命令，格式如上文描述，你的程序需要顺序执行这些命令。命令序列以一条 quit 命令结束。
当 n = 0 时输入结束。
### 输出
对于每组数据，输出 n 行，为控制程序退出后流水线上的盒子堆叠状况。
第 i+1 行为编号为 i 的盒子的初始位置所堆叠的盒子状况：以 i
开头，后接":"，然后空格，然后最底层盒子编号，再空格，再是从下数第二个盒子的编号......
### 样例输入
    
    
    10
    move 9 onto 1
    move 8 over 1
    move 7 over 1
    move 6 over 1
    pile 8 over 6
    pile 8 over 5
    move 2 over 1
    move 4 over 9
    quit 
    0
    
### 样例输出
    
    
    0: 0
    1: 1 9 2 4
    2:
    3: 3
    4:
    5: 5 8 7 6
    6:
    7:
    8:
    9:
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[98]=
[[
# 第k大生成数
### 描述
我们把 n 个数字（每个数字在 1 ~ 9 范围内，可能有相同的）排成一行，根据排列方法的不同，会得到一系列 n 位整数。问这些整数（相同的只算一个）中第
k 大的是哪个。
例如，设 n = 4 个数字分别为1、1、2、3，则可以得到的 4 位整数有
    
    
    3211
    3121
    3112
    2311
    2131
    2113
    1321
    1312
    1231
    1213
    1132
    1123
    
这其中第 6 大的整数是 2113
### 输入
输入包含多组数据。
对于每组数据，第一行为两个正整数 k 和 n （0 < n <= 20，0 < k <= 109）。第二行是 n 个 1 到 9 的整数，表示要排的 n
个数字。
当 k = n = 0 时，输入结束。
### 输出
每组数据输出一行，就一个整数，表示可以组成的第 k 大的数，如果不存在，则输出 -1 。
### 样例输入
    
    
    6 4
    1 1 2 3
    0 0
    
### 样例输出
    
    
    2113
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[99]=
[[
# 串门
### 描述
有一个长度为 k 的只由小写字母构成的字符串。在这个字符串中，任何一个长度在 1 到 10
之间的子串都是一个居民，每个居民有自己的爱好（子串的内容）和地址（首字母位置）。
现在，这个字符串上的居民决定去串门，但是每个居民只会去和自己有着相同兴趣的另一个居民家串门（即这两个字串内容完全一样），并且若有多个的话，他只去离自己最近的
（地址绝对值之差最小），如果最近的也不止一个的话，他会去地址较小的。如果没有其他居民与他有相同兴趣，他就只能待在家里。
我们想知道对于某个居民他会去哪个居民家里串门。如果有，请输出他去串门的那个居民的地址，否则输出 -1 。
### 输入
输入包含多组数据。
对于每组数据，第一行为两个正整数 k 和 n （2 <= k < 100000，1 <= n < 10000），分别表示字符串长度和询问的组数。
第二行是一个长度为 k 的字符串 s ，为给定的字符串。
接下来 n 行，每行有两个正整数 a 和 b （1 <= b <= 10，1 <= a <= a+b-1 <=
k），表示要串门的这个居民所对应的子串的起始位置在 a ，长度为 b 。
当 k = n = 0 时，输入结束。
### 输出
对于每组测试数据，输出 n 行，每行一个整数表示对应询问的回答。
### 样例输入
    
    
    2 1
    aa
    1 1
    8 4
    abcaaabc
    5 1
    4 2
    1 3
    3 2
    0 0
    
### 样例输出
    
    
    2
    4
    5
    6
    -1
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[100]=
[[
# 周长最长
### 描述
给定平面上 n 个点，求一个简单多边形（简单多边形覆盖的是一个没有“洞”的块，两个只有一个公共点的块不能看做一个块），要求：
（1）这个简单多边形的所有端点在给定的这 n 个点当中；
（2）给定的 n 个点都在这个简单多边形内部或边上；
（3）这个简单多边形的周长最长。
### 输入
输入包含多组数据。
对于每组数据，第一行为一个整数 n （3 <= n <= 11），接下来 n 行每行两个整数（绝对值小于等于1000），为给定的 n 个点的坐标。
当 n = 0 时，输入结束。
### 输出
每组数据输出一行，为要求的简单多边形的周长，小数点后保留两位有效数字。
### 样例输入
    
    
    3
    0 0
    1 1
    1 0
    4
    0 0
    0 1
    1 0
    1 1
    5
    0 0
    1 1
    2 0
    3 1
    4 0
    5
    0 0
    1 2
    2 1
    3 2
    4 0
    0
    
### 样例输出
    
    
    3.41
    4.00
    8.83
    11.89
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[101]=
[[
# 周长最短
### 描述
给定平面上 n 个点，求一个简单多边形（简单多边形覆盖的是一个没有“洞”的块，两个只有一个公共点的块不能看做一个块），要求：
（1）这个简单多边形的所有端点在给定的这 n 个点当中；
（2）给定的 n 个点都在这个简单多边形内部或边上；
（3）这个简单多边形的周长最短。
### 输入
输入包含多组数据。
对于每组数据，第一行为一个整数 n （3 <= n <= 1000），接下来 n 行每行两个整数（绝对值小于等于100000），为给定的 n 个点的坐标。
当 n = 0 时，输入结束。
### 输出
每组数据输出一行，为要求的简单多边形的周长，小数点后保留两位有效数字。
### 样例输入
    
    
    3
    0 0
    1 1
    1 0
    4
    0 0
    0 1
    1 0
    1 1
    5
    0 0
    1 1
    2 0
    3 1
    4 0
    5
    0 0
    1 2
    2 1
    3 2
    4 0
    0
    
### 样例输出
    
    
    3.41
    4.00
    8.83
    10.47
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[102]=
[[
# 北京一日游
### 描述
我们都知道，在北京乘车是很方便的。
如果我们乘地铁，只需要两元钱（无论有没有公交卡）就可以到达任何线路上的地铁站（并且换乘是免费的）。对于公交车，票价一般是一元（当然有的线路要高一些，有的线路
还可能分段计费），如果有普通公交卡可以打 4 折（即只需要支付 40%），而如果有学生公交卡则可以打 2 折（即只需要支付 20%）。
现在小管和若干同学想从北航出发到某处去玩，他们想办法弄到了若干普通公交卡和学生公交卡，还查到了一些相关的公交和地铁信息。试问，他们最少要花多少路费。为了简化
问题，我们假设他们查到的所有公交车线路都是全程一元的，并且他们所有人总是一起行动。
### 输入
输入包含多组数据。
对于每组数据，第一行有三个数字 X、Y、Z，分别表示一起去的人数、他们弄到的普通公交卡和学生公交卡的张数（0 < X <= 150，0 <= Y,Z <=
150）。
第二行有三个数字 N、M 和 P （0 < N <= 1000，0 <= M,P <=
100），分别表示相关的车站个数（不含北航）、查到的地铁线路条数和公交线路条数。我们设 N 个相关车站从 1 ~ N 编号，北航为 0 号，目的地为 N
号。
接下来 M 行为他们查到的 M 条地铁线路。首先是一个数字C（0 <= C <= 100），表示这条地铁线路中我们关心的有 C 站，接下来 C
个数表示各站的编号。
最后 P 行为他们查到的 P 条公交线路。每行首先是一个数字 D（0 <= D <= 100）表示该线路我们关心的有 D 站，接下来 D
个数表示各站的编号。
两组数据之间有一行空行。当 X = Y = Z = 0 时，输入结束。
输入保证一定有办法到达目的地。
### 输出
对于每组数据，输出一行“It will at least cost #.## yuan.”，其中“#.##”表示最少要花的路费。
### 样例输入
    
    
    1 0 0
    1 0 1
    2 0 1
    
    3 1 1
    5 4 1
    2 0 1
    4 1 3 4 5
    2 0 2
    2 2 3
    2 0 4
    
    0 0 0
    
### 样例输出
    
    
    It will at least cost 1.00 yuan.
    It will at least cost 6.00 yuan.
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[103]=
[[
# 最小搜索代价
### 描述
对于一棵二叉树，如果其中所有节点都满足性质“其左子树中的所有节点的值都小于他自己的值，且其右子树中所有节点的值都大于他自己的值”，那么这棵二叉树就是一棵二叉
搜索树。
对于一棵有 n 个节点的二叉搜索树，若树中 n 个节点的值分别为 e1、e2、...、en（e1 < e2 < ... < en），且值为 ei
的节点的搜索频率为 f(ei)，那么可以定义这棵二叉搜索树的搜索代价为：
    
    
    f(e1) * deep(e1) + f(e2) * deep(e2) + ... + f(en) * deep(en)
    
其中 deep(ei) 为值为 ei 的节点在树中的深度（根节点的深度为 0）。
显然，如果调整这棵二叉搜索树的结构（当然前提是要保持其满足二叉搜索树的结构性质），其搜索代价就会随之改变。并且肯定可以通过一系列的调整，使这棵二叉搜索树的搜
索代价达到最小值。现在问题就是：这个最小值是多少。
### 输入
输入包含多组数据。
每行一组数据，以数字 n 开头（0 < n <= 250），为二叉搜索树中的节点个数，紧接着 n 个正整数，代表
f(e1)、f(e2)、...、f(en)。
当 n = 0 时输入结束。
### 输出
每组数据输出一行，为可以达到的最小搜索代价，保证在 231 以内。
### 样例输入
    
    
    1 5
    3 10 10 10
    3 5 10 20
    0
    
### 样例输出
    
    
    0
    20
    20
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[104]=
[[
# 聚会
### 描述
Jimmy 在买完圣诞的礼物后，突然想到有这么多份礼物要送，那不是要累死了，所以他决定在自己家里举办一个聚会，把朋友们都邀请过来，然后在聚会上把礼物送给他们
。但有一个问题出现了，Jimmy 的有些朋友可能在同一个项目中工作，如果一个朋友和他的直接 leader 同时出现在聚会上，那么他们两就不会很开心。所以
Jimmy 决定如果邀请了一个朋友来，那么就不邀请他的直接 leader。
每个朋友都有一个欢乐值。现在 Jimmy 得到了一份名单，名单里写着每个人的直接 leader，以及每个人的欢乐值。Jimmy
想要邀请一些朋友使参加聚会的朋友的欢乐值之和最大，你能帮帮 Jimmy 吗？
注意：每个人最多只有一个直接 leader，并且如果 A 是 B 的 leader，那么 B 就不可能是 A 的直接或间接 leader。
### 输入
输入包含多组数据。
对于每组数据，第一行为两个整数 n 和 m（1 <= n, m <= 100000），表示 Jimmy 总共有 n 个朋友（编号为 1 ~ n），有 m
对直接 leader 关系。
第二行为 n 个正整数，依次给出了编号为 1、2、3、...、n 的朋友的欢乐值。
接下来的 m 行，每行有两个 1 ~ n 的数 x 和 y ，表示 x 是 y 的直接 leader。
当 n = m = 0 时输入结束。
### 输出
每组数据输出一行，为最大的欢乐值（保证在231以内）。
### 样例输入
    
    
    15 14
    1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
    1 2
    2 3
    3 4
    2 5
    1 6
    1 7
    7 8
    1 9
    9 10
    9 11
    9 12
    1 13
    13 14
    1 15
    0 0 
    
### 样例输出
    
    
    9
    
### 来源
第五届北航程序设计大赛网络预赛
]]
content[105]=
[[
# 转义字符
### 描述
转义字符是 C 语言中表示字符的一种特殊形式。通常使用转义字符表示 ASCII 码字符集中不可打印的控制字符和特定功能的字符，如用于表示字符常量的单撇号
（'），用于表示字符串常量的双撇号（"）和反斜杠（\）等。转义字符用反斜杠（\）后面跟一个字符或一个八进制或十六进制数表示。
    
    
    \a   响铃（BEL）
    \b   退格（BS）
    \f   换页（FF）
    \n   换行（LF）
    \r   回车（CR）
    \t   水平制表（HT）
    \v   垂直制表（VT）
    \\   反斜杠
    \?   问号字符
    \'   单引号字符
    \"   双引号字符
    \0   空字符（NULL）
    \ddd 任意字符（ddd 为三位八进制数）
    \xhh 任意字符（hh 为二位十六进制数）
    
特别的是，若（\）后面跟了 3 个 '0' ~ '7' 的字符，那么这 3 个 '0' ~ '7' 的字符会被看做一个三位八进制数，然后这四个字符（\
加上后面跟的 3 个字符）会被转义为 ASCII 码等于这个三位八进制数的字符。
比如 '\060' 则会转义为 '0' 因为 '0' 的 ASCII 码为 48，而 48 转成八进制显示就是 60。
现在的问题是：如果给你一个未转义的字符串（字符串中的字符都是可见字符，且不包含空格和制表符，这个字符串中每个（\）后面一定会跟 3 个 '0' ~ '7'
的字符），希望你将这个字符串转义后的结果输出。
### 输入
输入包含多组数据。
每组数据占一行，为给定的未转义的字符串，长度都不超过 400。
输入以一行 end 结束，这组数据不需要输出（详见样例）。
### 输出
对于每组数据，输出其转义后的结果，保证每个转义后的字符都是可打印字符。每组数据占一行。
### 样例输入
    
    
    a\060\061
    end.\100\101\102\103
    \150\145\154\154\157word
    \145\156\144
    END
    end
    
### 样例输出
    
    
    a01
    end.@ABC
    helloword
    end
    END
    
### 来源
第五届北航程序设计大赛现场决赛
]]
content[106]=
[[
# 猫抓老鼠
### 描述
话说 Tom 和 Jerry 向来不合。虽然 Tom 一直想尽办法要捉到 Jerry，但总是事与愿违。
这次 Tom 又把 Jerry 困到了一个圆形池塘的正中央，Jerry 能够再次成功逃脱么？我们知道，猫是不会游泳的，Tom 也不例外。
![<img:/richtext/res/47/200912191450139005.png>](/richtext/res/47/200912191450
139005.png)
我们已知池塘的半径为 R，Jerry 速度是 1，Tom 的速度是 N。由于到了岸上后，Jerry 可以借助灌木丛进行掩护，所以只要 Jerry
到达岸边的时候，Tom 没有到达 Jerry 的身边，我们就认为 Jerry 可以成功逃离。并且 Tom 和 Jerry
在以往的冲突中积累了丰富的经验，我们认为他们都足够聪明。这里，我们不考虑 Tom 和 Jerry 的体力问题。
为了简化问题，我们假设 R 和 N 都是整数。
### 输入
输入包含多组数据。
每行一组数据。每行两个正整数 R 和 N（1 <= N,R <= 109），为池塘的半径和 Tom 的速度。
当 R = N = 0 时输入结束。
### 输出
对于每组数据输出一行，如果 Jerry 一定能够逃脱，则输出 "Yes"，反之输出 "No"（不输出引号）。
### 样例输入
    
    
    1 1
    100 100
    0 0
    
### 样例输出
    
    
    Yes
    No
    
### 来源
第五届北航程序设计大赛现场决赛
]]
content[107]=
[[
# 通往女友之路
### 描述
据传言，最近 lzx 暗地里交了一个新的女朋友。某天女朋友一声令下，要 lzx 立即和她共进晚餐，于是 lzx 不得不立即向女朋友的住处赶去。
lzx
可以直接跑到女友家，也可以先跑到公路上招一辆出租车（我们假设空载的出租车只在公路上跑），然后让出租车直线送到女友的住处（载了客就不用考虑公路的问题了，lzx
当然会花大价钱尽可能快赶到）。
现已知 lzx 的和他女友住处的位置，以及 lzx 跑步的速度和出租车的速度。问 lzx 最少需要多长时间可以到女友的家。
为了简化问题，我们假设只有一条公路，在 x 轴上，且两端都无限延伸。
![<img:/richtext/res/48/200912191501559795.png>](/richtext/res/48/200912191501
559795.png)
### 输入
输入包含多组数据。
第一行是一个整数 T，表示有 T 组测试数据（0 < T <= 2000）。
接下来 T 行每行一组数据，每行有 6 个整数，x1、y1、x2、y2、vr、vt。其中 (x1,y1)、(x2,y2) 分别为 lzx
和女友的坐标（-1000 <= x1，y1，x2，y2 <= 1000），vr 为 lzx 跑步的速度，vt 表示出租车的速度（1 <= vr < vt
<= 1000）。我们认为 lzx 的体力和他携带的现金都是足够的，并且公路上随时都能招到出租车。
### 输出
对于每组数据，输出一行，就一个实数，为 lzx 到达女友住处的最短时间（保留两位小数）。
### 样例输入
    
    
    2
    1 1 2 2 1 2
    1 1 2 2 1 7
    
### 样例输出
    
    
    1.41
    1.32
    
### 来源
第五届北航程序设计大赛现场决赛
]]
content[108]=
[[
# 拱猪
### 描述
小波最近正在写一个拱猪的游戏程序，其中有个重要又麻烦的步骤就是算分。
拱猪游戏的参加人数一般为四人，通常使用一副去掉大、小王的扑克牌进行游戏。拱猪时力争多得正分或少得负分，一般当某人得到正一千分或者负一千分的时候被视为胜利或失
败，胜者或负者会得到相应的奖励或惩罚。
游戏开始时每人手上有 13 张牌，每一轮每人出一张牌（按逆时针顺序），出的牌最大的那个人收走打出的这 4 张牌，并且下一轮首先出牌。
一副牌当中，黑桃 Q、方块 J、梅花 10 及全部红桃牌张被称为分牌。
黑桃 Q 称为“猪”，基本分值为 -100 分；
方块 J 称为“羊”，基本分值为 100 分；
所有红桃中，A 的基本分为 -50 分，K 为 -40 分，Q 为 -30 分，J 为 -20 分，10 至 5 都是 -10 分，4 至 2 则都是 0
分；
梅花 10 称为“变压器”，基本分值为 50 分，基本倍数为 2 倍。
此外，小波了解到，在拱猪游戏中还有亮牌规则：
亮牌又称明牌、卖牌。手中若有“猪”、“羊”、“变压器”、红桃 A 则可以亮牌。开始出牌以前，玩家若有以上的牌可以亮出，改变其分值和功能。“猪”、
“羊”被亮后分值按其基本分值乘 2 计算，“变压器”被亮后除了分值变为 100 之外，倍数也会变成 4。红桃 A 被亮后，所有红桃的分值都按其基本分值乘 2
计算。
最后就是重要的计分方法了：
游戏结束后，每个人根据自己收到的分牌，计算自己的分数。
基本的算分规则为：计算除“变压器”外的牌的分值总和，若得了“变压器”，则将所得分乘以“变压器”的倍数后计为最后得分。若只得“变压器”，而没有得其它，则本副牌
得分为“变压器”的分值。
除此之外：若收齐了全部红桃，称为“收全红”，红桃全部变为正分（其原本分数的相反数）；若收齐所有分牌，称为“猪羊满圈”，红桃和“猪”全部变为正分（其原本分数的
相反数）。
小波希望你能帮他完成程序中算分的这一块。
### 输入
输入包括多组数据。
对于每组数据，第一行为一个整数 n（0 < n <= 52），为某个人收到的牌的总数。
第二行则是描述的这个人拿到的所有牌，对于每一张牌，输入的格式为 "#*"，其中 '#' 表示这张牌的花色，为 'S'、'H'、'D'、'C'
之一，分别表示黑桃（Spade）、红桃（Heart）、方块（Diamond）、草花（Club），'*' 表示这张牌的点数，为
'1'~'9'、'J'、'Q'、'K'、'A' 之一（其中若 '*' 为 '1' 则表示这张牌的点数是 10），每两张牌中间用空格隔开。
第三行描述的则是游戏开始时的亮牌情况，用一个长度不超过 4 的字符串表示：若字符串为 'no'，则表示“猪”、“羊”、“变压器”、红桃 A
都没有亮；否则字符串一定由'S'、'H'、'D'、'C'组合而成，如果出现了 'S' 则表示“猪”被亮了，如果出现了 'H' 则表示红桃 A
被亮了，如果出现了 'D' 则表示“羊”被亮了，如果出现了 'C' 则表示“变压器”被亮了。
当 n = 0 时输入结束。
### 输出
对于每组数据输出一行，为此人的得分。
### 样例输入
    
    
    6
    HA HK SQ C1 CA C2
    no
    4
    SQ DJ C1 DA
    D
    13
    H2 H3 H4 H5 H6 H7 H8 H9 H1 HJ HQ HK HA
    H
    4
    SQ C1 SK CJ
    CS
    1
    C1
    C
    16
    H2 H3 H4 H5 H6 H7 H8 H9 H1 HJ HQ HK HA SQ DJ C1
    SHDC
    0
    
### 样例输出
    
    
    -380
    200
    400
    -800
    100
    3200
    
### 来源
第五届北航程序设计大赛现场决赛
]]
content[109]=
[[
# Dota英雄传之等级炮
### 描述
相信大家都知道 Dota 吧，其中有个英雄叫末日使者，它有个技能叫等级炮，其伤害原理如下：当对方等级是某些特定数的倍数时候造成额外 250 点伤害。
后来有人觉得 Dota 等级满级 25 级太少了，可以改成满级 B 级，又有人觉得 Dota 前期等级太低没意思，不如初始设成 A 级。
既然这些都改了，是不是我们也把等级炮的伤害原理也改一改呢？改成：
N 级的等级炮可以有 N 个不同的质数作为幸运数，它们分别为 P1、P2、……
、PN。当对方的等级数不包含这些幸运数字之外的质因子时会有加成伤害，相信大家已经发现了当对方英雄是 1 级一定会承受加成伤害的。
现在问题出来了，当英雄从 A 级升到满级的过程（含 A 和 B）中，有多少个等级会承受额外伤害呢？
### 输入
输入包含多组数据。
对于每组数据，第一行为一个整数N（1 <= N <= 50），第二行则是 N 个质数 P1、P2、…… 、PN（2 <= Pi <=
50000），第三行两个数 A 和 B（1 <= A <= B <= 109）。
当 N = 0 时输入结束。
### 输出
每组数据输出一行，就一个数，为英雄从 A 级升到满级的过程中会承受额外伤害的等级的个数。
### 样例输入
    
    
    3
    2 3 5
    1 10
    2
    2 7
    1 10
    0
    
### 样例输出
    
    
    9
    5
    
### 提示
对于第一组数据，等级数为 1、2、3、4、5、6、8、9、10 时都会承受加成伤害。
对于第二组数据，等级数为 1、2、4、7、8 时都会承受加成伤害。
### 来源
第五届北航程序设计大赛现场决赛
]]
content[110]=
[[
# 图案匹配
### 描述
假设小波同学有一个圆环，圆环表面有一层表皮，表皮上有些图案。我们现在想通过以下步骤把这个图案从圆环上剥离下来：
1. 沿着环的方向水平切开，并把它拉成一条圆柱（假设圆环是有一定的伸展性，我们能成功地把它展开成一个圆柱）；
2. 平行于这个圆柱的母线把它的表皮切开，然后表皮就可以展开成一个矩形，同时我们保证切开的图案是一片 n×m
的字符矩阵（只有外表皮上有图案，即不能用反面匹配）。
第一步图示：
![<img:/richtext/res/49/1d.PNG>](/richtext/res/49/1d.PNG)
第二步图示：
![<img:/richtext/res/50/2d.PNG>](/richtext/res/50/2d.PNG)
可以发现，下刀的位置不同，最后展开的图案可能不一样，比如
    
    
    eeeeeeeeee
    nnnnnxnnnn
    dddddddddd
    
和
    
    
    nnxnnnnnnn
    dddddddddd
    eeeeeeeeee
    
就可能是同一块圆环表皮展开后的图案。
现在小波已经得到了两块展开后的图案，他想要你判断这两个图案是否可能是同一块表皮展开后的图案。
注意：任何正着画的字符和倒着画的字符是不一样的，也就是说
    
    
    baa
    abb
    aab
    
和
    
    
    baa
    bba
    aab
    
是不一样的图案。像正着画的 b 和倒着画的 q，虽然看起来很像，但我们也不认为是一样的。
### 输入
输入包含多组数据。
对于每组数据，第一行有两个正整数 n（0 < n <= 10）和 m（0 < m <= 100000），为表示图案的字符矩阵的大小。
接下来 2*n 行为两个由小写字母构成的 n×m 的字符矩阵，为小波得到的两个展开图案。
当 n = m = 0 时，输入结束。
### 输出
对于每组数据，如果给定的两个图案有可能是同一块表皮展开后的图案，则输出 "Yes"，否则输出 "No"（不包含引号）。
### 样例输入
    
    
    2 3
    aoo
    oaa
    aao
    ooa
    3 10
    vvvvvuuuuu
    uuuuunnnnn
    xxxxxooooo
    oooooxxxxx
    uuuuuvvvvv
    nnnnnuuuuu
    3 3
    baa
    abb
    aab
    baa
    bba
    aab
    0 0
    
### 样例输出
    
    
    Yes
    Yes
    No
    
### 来源
第五届北航程序设计大赛现场决赛
]]
content[111]=
[[
# 潘多拉的魔盒
### 描述
小波最近正在挑战 ACM 训练队的原创游戏《潘多拉的魔盒》。
潘多拉和伊皮米修斯的婚礼开始了，众神纷纷前来送礼，礼物总是放在一个盒子里面。
游戏就是以此为背景的。游戏从 0 时刻开始，开始时积分为 0，初始的游戏时间为 t 秒，游戏的目标则是尽可能得高分。
游戏中的任何时刻都可能有众神送礼来。众神的礼盒一共有三种，打开后会有不同的效果（潘多拉的盒子里面本来就没有实物嘛）：
金色的盒子，打开后的效果：积分立刻加 x，从此以后每秒积分减 y；
银色的盒子，打开后的效果：积分立刻减 x，从此以后每秒积分加 y；
稀有的黑色盒子，打开后的效果：游戏时间加 z（z 可能是个负数）。
众神总是选不一样的时间来送礼。礼盒送来时，潘多拉可以选择打开，也可以选择弃置（以后就没机会打开了）。
另外：任何时候，积分可以为负，开盒子不需要时间。一旦剩余游戏时间小于等于 0，则游戏立即结束，但最后一刻还是可以开盒子的。
现在的问题是：假如伊皮米修斯能作弊，他能告诉潘多拉众神都在什么时候来送礼，送来的礼盒打开后具体的效果，那么游戏结束时最多能得到多少分。
### 输入
输入包含多组数据。
对于每组数据，第一行是两个整数 n（0 < n <= 1000）和 t（0 < t <= 106），表示有 n 位神会来送礼。
接下来 n 行按到达的时间顺序每行描述一位来送礼的神，每行的第一个数 t （0 < t <= 107）表示这位神到达的时刻，第二个数 k
表示送来的礼盒的颜色（1 为金色，2 为银色，3 为黑色）。如果是黑色的，那么后面会跟着一个整数 z（-106 <= z <=
106）代表这个盒子打开后对游戏时间的改变量；如果不是黑色的，那么后面就会跟着 2 个正整数 x 和 y（x <= 106，y <=
1000），意义如上文描述。黑色的盒子总是比较稀有，所占的比率总是小于等于百分之一。
当 n = t = 0 时输入结束。
### 输出
对于每组数据，输出游戏结束时最多能得到的积分。
### 样例输入
    
    
    3 10
    1 1 10 1
    3 2 10 3
    7 2 5 1
    3 10
    1 1 10 1
    3 2 10 1
    7 2 5 5
    1 100000000
    1 2 1000000 1
    2 10
    1 1 10 1
    2 3 -10
    0 0
    
### 样例输出
    
    
    12
    11
    98999999
    9
    
### 额外说明
注意：第四组数据是为了说明黑色盒子效果的（两个盒子都打开），实际数据中保证黑色盒子在所有盒子中的比率总是小于等于百分之一。
### 来源
第五届北航程序设计大赛现场决赛
]]
content[112]=
[[
# 取石子游戏
### 描述
小波和小 young 在玩一个取石子的游戏。游戏规则如下：
有一个 n×n 的方格棋盘，每个方格中都有不超过 100 颗石子。
两个人都从棋盘的左下角开始，每人每次走一步，两人轮流走，每次可以向右或者向上走一步，两人都到达右上角时游戏结束。
当一个人走到某个格子上时，就可以拿走这个格子上所有的石子。
为了公平起见，他们抽签决定谁先走。毫无疑问，先走的人肯定可以想办法拿到较多的石子。若设到达右上角时，先手拿到的石子数为 Sa，后手拿到的石子数为
Sb，则作为先手，他总是希望 Sa - Sb 尽可能大，而后手则是希望这个值尽可能小。
假设小波和小 young 都足够聪明，问最后 Sa - Sb 会是多少。
### 输入
输入包含多组数据。
对于每组数据，第一行有一个数字 n（1 <= n <= 100），接下来 n 行为一个 n×n 的正整数矩阵（矩阵中的每个数都不超过
100），表示初始时棋盘上各个格子上的石子数。
当 n = 0 时输入结束。
### 输出
每组数据一行，为最后 Sa - Sb 的值。
### 样例输入
    
    
    2
    1 0
    1 0
    3
    1 0 0
    0 0 1
    0 0 1
    0
    
### 样例输出
    
    
    2
    1
    
### 来源
第五届北航程序设计大赛现场决赛
]]
content[113]=
[[
# 扔苹果
### 描述
牛顿小时候喜欢吃苹果，所以他发现了万有引力定律。
lzx小时候不喜欢吃苹果，但是他喜欢扔苹果，他发现每当他将苹果抛出的时候，苹果总是沿着抛物线运动。于是他就自认为发现了“抛物线定律”，可惜当他满心欢喜地把这
个“定律”告诉mm时，mm告诉他，其实苹果的轨迹从来都不是抛物线，而是椭圆。LZX很失落，决心要把这个问题解决。
假设地球是质量均匀的球体，可以认为其质量集中在球心，lzx将苹果以速度v0水平抛出，希望计算苹果的轨迹方程，这里你只要输出轨迹的偏心率e就可以了。
下面先补充一点天体运动常识。
1. v0等于第一宇宙速度![<img:/richtext/res/55/gs1.jpg>](/richtext/res/55/gs1.jpg)时，苹果的轨
迹是圆，e=0
2. v0等于第二宇宙速度![<img:/richtext/res/56/gs2.jpg>](/richtext/res/56/gs2.jpg)时，苹果的轨
迹是抛物线，e=1
3. 其他情况下苹果的轨迹都是椭圆或双曲线（虽然可能会中途撞到地球，但相撞前的轨迹也还是椭圆）
4. 引力势能公式：![<img:/richtext/res/57/gs3.jpg>](/richtext/res/57/gs3.jpg)
5. 能量守恒公式：![<img:/richtext/res/58/gs4.jpg>](/richtext/res/58/gs4.jpg)
6. 角动量守恒公式：![<img:/richtext/res/59/gs5.jpg>](/richtext/res/59/gs5.jpg)
现在告诉你![<img:/richtext/res/58/gs4.jpg>](/richtext/res/58/gs4.jpg)，求偏心率e.
### 输入
输入的第一行是一个整数，为数据的组数t（t<=20）。
每组数据占一行，就一个实数k(0.0001<k<9.9999)，意义如上文描述。
### 输出
对于每组数据输出一行，要求的轨道的偏心率e，保留2为小数(样例分别是第一和第二宇宙速度)。
### 样例输入
    
    
    2
    1.0000
    1.4142
    
### 样例输出
    
    
    0.00
    1.00
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[114]=
[[
# 照亮的面积
### 描述
barty家买了一盏灯，他想计算一下家里的墙壁和地面总共有多少面积被灯光照亮了。
这个问题太简单了，所以他懒得写程序，所以就把这个简单的任务交给了你。
barty的家是一个边长为1的正方体，他在天花板的中心安装了这个灯，灯罩是圆锥形的，barty说，圆锥很美丽，所以你可以认为这盏灯发出的光形成了一个传说中的
轴截面顶角为s的光锥。当然，顶角有可能很大很大。barty在告诉你s的值之后就去找MM玩了。你得在他回来之前完成这个任务。
轴截面顶角是什么？barty说，通过轴的截面不是个三角形嘛，这个还不知道……
![<img:/richtext/res/61/d1.gif>](/richtext/res/61/d1.gif)![<img:/richtext/res/
62/d2.gif>](/richtext/res/62/d2.gif)![<img:/richtext/res/63/d3.gif>](/richtext
/res/63/d3.gif)
### 输入
输入的第一行是一个整数，为数据的组数t（t<=180）。
每组数据占一行，为1个正整数s（0<=s<180）为灯罩轴截面顶角的度数。
### 输出
对于每组输入数据，输出barty家墙壁和地面总共有多少面积被灯光照亮了。四舍五入到小数点后五位即可。
### 样例输入
    
    
    2
    0
    1
    
### 样例输出
    
    
    0.00000
    0.00024
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[115]=
[[
# 群聊
### 描述
barty最近打算开发一款群聊软件，为了方便他和后宫成员谈心。这个软件可以支持多人的文字&语音&视频群聊。
但是现在他遇到了一个问题，由于他的后宫地处不同的地方，网络环境也不同，所以中心服务器的选取十分重要。现在把所有涉及的路由器都给出，路由器之间的连接有一个权值
，代表延迟时间。一段路由的总延迟等于其中各段连接的延迟总和。barty和他的后宫的电脑都会直接和所给的路由器相连，并且延迟可以忽略。对于一次群聊，中心服务器
的延迟，等于中心服务器到群聊的每台电脑的延迟总和。例如下图：
![<img:/richtext/res/64/chat1.jpg>](/richtext/res/64/chat1.jpg)
如果选取2号路由器作为中心服务器，那么对于1、2、3号PC端的延迟为6+1+2+3=12。
现在你接下了barty的这个外包，他希望对于一些不同的群聊对象，你来选取一个延迟最小的中心服务器。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=50）。
对于每组数据，第一行包括两个整数n、m（1<=n<=500，1<=m<=10000），表示路由器数和连接数。之后的m行，每行包含三个整数u、v、w，表示u号
路由器和v号路由器相连，延迟为w（0<w<=1000）（保证任意两台路由器不会有两条直接相连的通路，也不会有路由器跟自己连有通路）。再下一行包含一个整数q（
q<=20），表示需要计算的群聊次数。紧跟着q行，每行第一个数s(2<=s<=100)表示这一次群聊的PC数，后面紧跟的s个数表示每台PC连接着的路由器编号
（保证各次群聊的PC总数不超过100）。
### 输出
对于每组数据，包含q行，每行输出一个整数表示这次群聊的最小延迟。如果不能连接则输出-1。
### 样例输入
    
    
    1
    5 5
    1 2 6
    2 3 1
    3 4 2
    4 5 3
    1 5 12
    2
    3 1 2 5
    5 4 2 2 3 3
    
### 样例输出
    
    
    12
    4
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[116]=
[[
# 棋盘
### 描述
在一个n行m列的棋盘上放棋子，显然一共有2n*m种放棋方案.
对于某种放棋方案，如果存在3个棋子在同一行或同一列(注意不一定要连着，而且不考虑斜着3个的情况)，则视为合法的情况，请问有多少种合法的放棋方案？
### 输入
输入的第一行是一个整数，为数据的组数t（t<=20）。
每组数据占一行，为2个正整数n、m（1<=n,m<=100）为棋盘的尺寸。
### 输出
对于每组数据，输出合法的放棋方案数模1234567的结果。
### 样例输入
    
    
    2
    2 2
    1 4
    
### 样例输出
    
    
    0
    5
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[117]=
[[
# barty的苦恼
### 描述
我们都知道barty的后宫很多，多到难以计数的程度，于是乎barty就不得不把他们分组，但是由于庞大的基数的存在，每组的人数依旧很多，而我们知道barty只
有10只手指，根本数不出来这么大的数目，于是乎他关心的是每组人数对9取模的余数（为什么不是10，因为还有一只手指是留给barty的正宫的）。
现在就麻烦你帮忙解决一下他的苦恼，为他编程算一下barty的每组后宫对9的余数。
### 输入
输入的第一行是一个整数，为barty后宫的组数t（t<=10）。
每组数据占一行，就一个正整数c，表示barty这组后宫的人数c(1<=c<=101000)
### 输出
对于每组数据输出一行，为barty这组后宫的人数对9的余数。
### 样例输入
    
    
    2
    111111111
    999999998
    
### 样例输出
    
    
    0
    8
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[118]=
[[
# 取石子游戏
### 描述
传说lzx暗地里结交了一个女朋友，今天本来是集训队训练的日子，但是lzx推脱自己有事不能参加，实际上是在陪女朋友玩取石子游戏……
游戏的规则是这样的：
石子一共有两堆，分别有a个和b个石子，两人轮流操作，当轮到自己的回合时，选择一堆石子，然后取走这堆石子里的不超过m个石子，不可以不取，然后变为对手的回合。如
果轮到某个人的回合，无石子可取，则这个人输掉这一局游戏。
lzx的女朋友做什么都非常认真，如果输掉任何一局游戏都会很不开心；但同时lzx的女朋友是非常要强的人，她绝不希望lzx在与她的游戏中放水，也就是说，lzx和
他的女朋友都会为自己的每一步选择最佳的策略。这下lzx犯难了，他想到的唯一的既让女朋友开心，又不放水的方法，就是把游戏的初始状态设置成让女朋友一定会获胜的情
况。于是他自告奋勇的承担了每局比赛设置初始状态的工作……
请你判断，对于已知的a、b、m，以及每局先手操作方，这种情况能否让女朋友必胜呢？
### 输入
输入的第一行是一个整数，为数据的组数t（t<=500），之后t行每行一组数据。
每组数据包括a、b、m三个整数及一个字符串s，之间均用一个空格隔开。a、b、m的含义如题目描述中所示（0<=a,b<263，1<=m<231），字符串s代表
每局的先手操作方。如果lzx先操作，则字符串s为"lzx"，如果是lzx的女朋友先操作，则字符串s为"gf"。
### 输出
对于每组测试数据，输出一行：
如果这个初始条件能够使得女朋友最终获胜，lzx逃过一劫，输出一行”Oh yeah!”；
否则，lzx就免不了跪搓衣板了，输出一行”Oh my god!”。
### 样例输入
    
    
    2
    1 2 1 gf
    1 2 1 lzx
    
### 样例输出
    
    
    Oh yeah!
    Oh my god!
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[119]=
[[
# 管道计数器
### 描述
有一个两端封闭的水平光滑直管道，假设其两端分别在坐标轴的0点和L点处，在0时刻，管道内有n个质量相同的弹性小球（球和管道的直径相同且无限趋近于0），第i个小
球在位置xi以速度vi运动（速度大于0则是向L点方向运动，小于0则是向0点方向运动），当小球运动至边缘（x=0或x=L）时就会原速反弹并使计数器加一，一开始
计数器的值是0，问t0时刻计数器的值是多少。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=20）。
对于每组数据，第一行是三个整数n、L、t0，都小于10000。接下来n行每行2个整数xi和vi，表示每个小球初始的坐标和速度（0<xi<L且|vi|<100
）。
### 输出
对于每组数据，输出一个整数，为计数器的值（刚好在t0时刻到达两端的也会触动一次计数器）。
### 样例输入
    
    
    2
    1 10 5
    5 10
    1 10 1
    1 -1
    
### 样例输出
    
    
    5
    1
    
### 提示
1.光滑指没有摩擦，弹性指碰撞没有能量损失。
2.假设i和j发生碰撞，则有能量守恒：m * vi12 / 2 + m * vj12 / 2 = m * vi22 / 2 + m * vj22 / 2
和动量守恒：m * vi1 + m * vj1 = m * vi2 + m * vj2
联立上面2式可得：vi2 = vj1 和 vj2 = vi1
### 来源
第六届北航程序设计大赛网络预赛
]]
content[120]=
[[
# 修改病句
### 描述
我们小学、初中的时候经常会做修改病句的语文题。其中有一个非常常用的符号，它叫做对调号，用![<img:/richtext/res/66/bj1.jpg>](
/richtext/res/66/bj1.jpg)符号或![<img:/richtext/res/67/bj2.jpg>](/richtext/res/67
/bj2.jpg)符号表示。
其中，第一个符号表示竖直线两端的内容互换，而第二个符号代表中间部分的位置不变，而两端的内容互换。
比如：
![<img:/richtext/res/68/bj3.jpg>](/richtext/res/68/bj3.jpg)实际上等同于“cdab”，我们记作：(
ab*cd) ；
![<img:/richtext/res/69/bj4.jpg>](/richtext/res/69/bj4.jpg)实际上等同于“fghicdeab”，我
们记作：(ab|cde|fghi) 。
我希望你能写一个程序，来告诉我，一个字符串经过复杂的上述反转过程之后，最终结果是什么。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=100）。
每组测试数据只有一行，是一个字符串，其中不包含空格且长度不超过1000。字符串内只包含大小写字母，数字，以及( * ) ( | | )
表达式。两种表达式的含义如题目描述中所示。
输入保证括号匹配，且括号内如果有星号则一定只有1个星号，如果有竖线则一定只有两条竖线，并且在一层括号内不会同时出现星号和竖线，但有可能同时不出现。即：(a*
bc|d|e)是非法的，但(a*b(c|d|e))是合法的，其结果为bedca。
### 输出
对于每个测试数据输出一行，为字符串经过变换后的结果。该结果一定只包含大小写字母及数字。
### 样例输入
    
    
    6
    (ab*cd)
    (ab|cde|fghi)
    (a*b(c|d|e))
    (ab*c)defg
    (ab*c(d|e|f))g(h*ij)
    (abc)(def)
    
### 样例输出
    
    
    cdab
    fghicdeab
    bedca
    cabdefg
    cfedabgijh
    abcdef
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[121]=
[[
# 分组
### 描述
一年一度的暑期集训又开始了，但是今年大家对ACM竞赛的兴趣很高，参加集训的人也比往年多很多。星爷打算把所有人先分成两组，分别进行不同的练习。但遗憾的是，在一
起训练的时候，由于各种原因，是会互相造成影响的。
现在集训队有n个人，有m对影响关系。每对影响关系总是有这样的意义：a和b如果在一组训练的话就会出现影响力为u的事件。但是如果他们两个人不在一组的话就不会有这
种问题。
明天星爷就要把分组名单交给学校核查了，领导在查看名单的时候只会关心影响最大的事件。现在他希望找出一种分组方案，使得这个事件的影响力最小（没有事件的话，可以认
为影响力是0）。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=10）。
对于每组数据，第一行包含两个数n、m（1<=n<=20000，1<=m<=100000）含义见上文，之后m行，每行包含三个数a、b、u（0<=a,b<n，0
<u<=100000）表示a和b在一组会出现影响力为u的事件。
### 输出
对于每组数据，输出一个整数，表示最佳分组方案会造成的最大影响力。
### 样例输入
    
    
    1
    4 4
    0 1 4
    3 2 3
    1 2 1
    3 1 2
    
### 样例输出
    
    
    1
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[122]=
[[
# 租船游湖
### 描述
2011年北航ACM集训队集体出游期间准备一起划船游湖。询问租船点得知每条船最多只能载2人，且载重不能超过C。为了节省费用，需要使租船的条数尽量少，但又要保
证每个人都有船坐。问最少要租多少条船。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=10）。
每组数据第一行为两个整数n（1<=n<=1000）和C（1<=C<=109），分别表示集训队的人数和每条船的载重量。第二行为n个整数，分别表示每名队员的重量
Wi（1<=Wi<=C)。
### 输出
对于每组数据，输出最少需要租船的条数。
### 样例输入
    
    
    2
    1 10
    3
    5 10
    5 9 7 1 2
    
### 样例输出
    
    
    1
    3
    
### 来源
第六届北航程序设计大赛网络预赛
]]
content[123]=
[[
# 圆有点挤
### 描述
gg最近想给女友送两个精美的小礼品：两个底面半径分别为R1和R2的圆柱形宝石，并想装在一个盒子里送给女友。好不容易找到了一个长方体的盒子，其底面为A*B的矩
形，他感觉好像宝石装不进去，但又不敢轻易塞进去试试。现请你帮他判断两个宝石能否放进盒子里(宝石只能竖直放置，且不能堆叠)。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=1000）。
每组数据占一行，包括4个数A，B，R1，R2，均为不超过104的正整数。
### 输出
对于每组数据，若两个宝石能放进盒子中，则输出YES，否则输出NO。
### 样例输入
    
    
    2
    10 10 1 1
    10 10 4 4
    
### 样例输出
    
    
    YES
    NO
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[124]=
[[
# barty的智商
### 描述
barty后宫三千，但是正宫只有一个。他的正宫为了他能好好学习，成为学霸，给他定下要求，一定要把和计算机相关的各种课程都学完。
对于每种课程，都会有几个或0个课程作为它的先修课程，只有把那些先修课程学完才能学习该课程，但是这个规定并不是特别严格。设barty的智商为T，且课程A有一门
先修课程为B，根据B课程对A课程的影响，会规定一个相关系数C，如果T>＝C，就是说barty足够聪明，那么就可以无视先修课程B而直接去学习A，另外一个很关键
的问题就是可能存在A是B的先修课程，B是C的先修课程，C又是A的先修课程（这在实际情况中也是可能存在的），但不会有课程是它自己的先修课。
需要你计算的就是：barty的智商最低为多少的时候可以让barty学完全部课程。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=20）。
对于每组数据，第一行为2个正整数n和m（1<=n,m<=10000），分别表示课程数和课程先修关系数，之后的m行，每行三个数ai、bi、ci，表示bi为ai
的一门先修课程，且相关系数为ci（1<=ai,bi<=n，ci<=109）。
### 输出
每组数据一行，为最低需要的智商。
### 样例输入
    
    
    1
    6 6
    2 3 2
    3 4 5
    4 2 7
    2 1 1
    3 5 2
    6 4 7
    
### 样例输出
    
    
    2
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[125]=
[[
# 寒假安排
### 描述
寒假又快要到了，不过对于lzx来说，头疼的事又来了，因为众多的后宫都指望着能和lzx约会呢，lzx得安排好计划才行。
假设lzx的后宫团有n个人，寒假共有m天，而每天只能跟一位后宫MM约会，并且由于后宫数量太过庞大了，而寒假的天数太少，所以lzx在寒假里不会与一个MM约会一
次以上。现在lzx想要知道：寒假安排的方案数如果写成k进制，末位会有多少个0。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=1000）。
每组数据占一行，为3个正整数n、m和k（1<=m<=n<231，2<=k<231），意思如上文所述。
### 输出
对于每组数据，输出一个数，为寒假安排的方案数写成k进制末位的0的数目。
### 样例输入
    
    
    3
    10 5 10
    10 1 2
    10 2 8
    
### 样例输出
    
    
    1
    1
    0
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[126]=
[[
# 木板切割
### 描述
mm有一块A*B的矩形木板，但木板上有一些钉子。ta现在需要从中切割出一个矩形木板，且只能按照与原木板边缘平行或垂直的方向切割，使切割出的木板内部(边缘不算
)包含且仅包含1枚钉子，问ta能够切割出满足条件的木板的最大面积。特别的：若原木板只含一枚钉子，则不需要切割即可满足条件。
### 输入
输入的第一行是一个整数，为数据的组数t（t<=10）。
每组数据第一行为三个整数A(2<=A<=100)，B(2<=B<=100)和钉子的数量n(1<=n<=100)。接下来n行每行2个整数，表示第i枚钉子的坐标
Xi，Yi（以原始木板的左下角为原点(0，0))，0<Xi<A，0<Yi<B。保证所有钉子的坐标都互不相同。
### 输出
对于每组数据，输出满足条件的木板最大面积。
### 样例输入
    
    
    2
    10 10 1
    5 5
    100 100 5
    20 90
    90 20
    50 50
    30 80
    80 30
    
### 样例输出
    
    
    100
    6400
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[127]=
[[
# 闪电战
### 描述
最近北航ACM队内看是流行一款叫做RUSE的即时策略游戏，这款游戏的迷人之处就在于真真假假虚虚实实，对抗性很强。Sbihero是这方面的达人，因为他为了这个
游戏构造了一个合适的模型：
将整个战场可以视为为n*m的一个矩阵，每个元素值都代表着这一区域内的战力值，正值代表己方的战力，负值代表敌方的战力，零表示无军事力量。
而Sbihero最喜欢用的国家德国还有一项特殊的战术——闪电战。闪电战必须在一个连续的区域内发动，动员这一区域内的全部己方军事力量向敌方进攻。如果此区域己方
的战力总和大于敌方的战力总和，那么这场闪电战就记为胜利，否则为失败。结果即为己方战力和敌方战力的差值。
现在Sbihero算数算不过来了…他麻烦你来写一个程序，计算在已知战场上任意一连续区域内发动闪电战的结果。（每个连续区域用一个封闭的顺时针折线来围成）如下图
区域：
![<img:/richtext/res/84/sdz.jpg>](/richtext/res/84/sdz.jpg)
可以表示为(6,2)-->(8,2)-->(8,8)-->(2,8)-->(2,4)-->(4,4)-->(4,6)-->(6,6)-->(6,2)
### 输入
输入第一行为数据组数t（t<=20）。
对于每组数据，第一行包含两个整数X，Y（1<X,Y<=1000），表示战场大小。后面Y行，每行X个整数，表示战场上的战力分布，正数表示己方战力，负数表示敌方
战力。
下面一行包含一个整数k（k<=1000），表示查询的总数。
紧跟着k行表示k组查询区域：每组查询首先是一个整数T（T<=1000），表示这个轮廓线上的折点数。后面有2*T个正整数，每两个整数，表示一个折点的坐标（保证
按顺时针顺序给出）。
保证这条折线是封闭的，并且不相交（相交于点上不算，详细见样例的第2组查询）。
### 输出
对于每组查询，输出一个整数，表示这次闪电战的结果。
### 样例输入
    
    
    2
    10 9
    0 1 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 1 0 0 0
    0 0 0 0 0 1 -1 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    2
    8 6 2 8 2 8 8 2 8 2 4 4 4 4 6 6 6
    10 5 3 7 3 7 6 4 6 4 4 5 4 5 5 6 5 6 4 5 4 
    10 9
    0 1 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 1 0 0 0
    0 0 0 0 0 1 -2 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    2
    8 6 2 8 2 8 8 2 8 2 4 4 4 4 6 6 6
    10 5 3 7 3 7 6 4 6 4 4 5 4 5 5 6 5 6 4 5 4
    
### 样例输出
    
    
    0
    1
    -1
    0
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[128]=
[[
# 人民城管爱人民
### 描述
一天GG正在和他的后宫之一的MM在外面溜达，MM突然说了一句，“我想吃鸡蛋灌饼”……当他们吃的正high的时候，城管出现了！作为传说中的最强军事力量，卖鸡蛋
灌饼的小贩在他们面前也只算是战力为的5的渣滓，一秒钟就被秒杀了……
在这场屠杀中，GG和他的后宫本来只是围观群众，但是不幸的是，城管看到了GG胃里的鸡蛋灌饼，他们要逮捕GG！但是GG显然不能让他们如愿，于是GG带着后宫开始了
往大运村的逃亡之旅。
整个地图有n个路口，灌饼摊在0号路口，大运村在n-1号路口。有m条只能单向通过的道路连接这n个路口，每条道路用一个正整数表示走过需要的时间。整个地图没有环路
，但两个路口之间可能有多条通路。现在GG希望以最短的时间到大运村，但不幸的是，城管为了抓住他动用了卫星对他进行空中跟踪，并且会在某一时刻空降到某一条道路上进
行封锁（封锁会在瞬间完成，可惜动静太大了GG也能在第一时间知道哪条道路被封锁了），之后这条路就无法通过了。在整个行动中只会出现一次空降，而且不会在GG经过这
条道路的时候进行封锁，也就是说，不会在GG在某条路上走了一半的时候封锁这条路。而且，城管们希望尽可能的延缓GG到达大运村的时间。
现在GG希望知道，自己多久能到达大运村，方便安排之后和其他后宫的约会。
注意双方是以博弈的思想来进行选择，即GG希望时间最短，城管希望时间最长，而且他们都非常聪明会做出最佳的选择。
### 输入
输入第一行为数据组数T（T<=30）。
每组数据第一行包含两个整数n,m（2<=n<=10000，1<=m<=100000），表示路口数和道路数。之后m行描述了所有的道路，每行有三个整数u,v,w
（0<=u,v<n，0<w<=1000），表示路口u到路口v有一条需要w时间走过的道路。
### 输出
对于每组数据输出一个整数，表示GG最后到达大运村需要的时间。如果GG无法到达大运村，输出-1。
### 样例输入
    
    
    2
    5 6
    0 1 1
    1 2 1
    2 4 1
    1 4 3
    0 3 2
    3 4 1
    3 4
    0 1 1
    0 1 2
    1 2 3
    1 2 4
    
### 样例输出
    
    
    4
    5
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[129]=
[[
# lzx的向量
### 描述
lzx的后宫们最近在研究平面向量。向量是非常可爱的东西，它们有方向又有长度。现在lzx的每个后宫都在心里想了一个平面向量Vi，并写在情书上送给了lzx。
lzx决定带一些后宫出游，至于带多少后宫那就随便啦，他要把出游的后宫们的情书拿出来，并把后宫们的向量根据平面向量加法规则加起来，得到一个新向量T，lzx说出
游的快乐指数就取决于T的长度。
哦，一件神奇的事情发生啦！lzx发现，所有后宫提供的向量加起来竟然是(0,0)……这意味着lzx肯定不能带所有的后宫出去啦……
怎样让T的长度最大呢……lzx找到了你。
### 输入
输入第一行是测试数据的组数T（T<=30）
接下来有T组数据，每组测试数据的第一行是n（2<=n<=1000），接下来的n行，每一行包括两个整数ai,bi（-100000<=ai,bi<=100000
），代表lzx的第i位后宫送给lzx的那个平面向量。
### 输出
对于每组数据，输出一个整数T2，T即是能够得到的模最大的向量和。
### 样例输入
    
    
    2
    4
    0 10
    10 0
    0 -10
    -10 0
    4
    10 10
    10 -10
    -10 -10
    -10 10
    
### 样例输出
    
    
    200
    400
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[130]=
[[
# 素质组合数
### 描述
lzx对组合数比较感兴趣，并且对计算组合数非常在行。同时为了追求有后宫的素质的生活，lzx每天都要研究质数。
我们先来复习一下什么叫做组合数。对于正整数P、T
![<img:/richtext/res/85/sz1.jpg>](/richtext/res/85/sz1.jpg)
然后我们再来复习一下什么叫质数。质数就是素数，如果说正整数N的约数只有1和它本身，N就是质数；另外，1不是质数。
今天，lzx想要知道![<img:/richtext/res/86/sz2.jpg>](/richtext/res/86/sz2.jpg)。
### 输入
输入第一行是一个整数N（N<=1000）。
接下来N行，每行包括一个正整数T和一个质数P（1<=P<=T<231）。
### 输出
包括N行，根据输入的顺序，每一行为一个整数：![<img:/richtext/res/86/sz2.jpg>](/richtext/res/86/sz2.j
pg)
### 样例输入
    
    
    2
    3 2
    10 3
    
### 样例输出
    
    
    1
    0
    
### 来源
第六届北航程序设计大赛现场决赛
]]
content[131]=
[[
# Stone
### description
石子合并，有若干堆石子，每次可以将任意两堆合并(不要求相邻)，合并的代价是石子数较少的一堆的石子数，问要把所有石子都合并成一堆，需要耗费的代价?
### input
多组测试数据
对于每组测试数据，首先是一个正整数n，表示石子的堆数
接下来是n个正整数a0, ..., an-1 (1 <= n < 1000, 1 <= ai <= 1000, 0 <= i < n )
### output
对于每组测试数据，输出一行
表示所有石子合并成一堆，需要耗费最小的代价
### sample input
1
100
2
100 200
### sample output
0
100
]]
content[132]=
[[
# Multiply
### description
给你两个整数，求出这两个数的乘积
### input
多组测试数据
每组测试数据占一行，分别为两个整数a, b
(0 <= a, b < 101000)
### output
对于每组测试数据，输出一行
表示a和b的乘积
### sample input
    
    
    1 2
    0 100
    9 9
### sample output
    
    
    2
    0
    81
### hint
多项式乘法~~~~~~
]]
content[133]=
[[
# Presents
### Input
For each test case,
The first line contains one integer n (1 ≤ n ≤ 100) — the quantity of friends
Petya invited to the party. The second line contains n space-separated
integers: the i-th number is pi — the number of a friend who gave a gift to
friend number i. It is guaranteed that each friend received exactly one gift.
It is possible that some friends do not share Petya's ideas of giving gifts to
somebody else. Those friends gave the gifts to themselves.
### Output
Print n space-separated integers: the i-th number should equal the number of
the friend who gave a gift to friend number i.
### Sample Input
4
2 3 4 1
3
1 3 2
2
1 2
### Sample Output
4 1 2 3
1 3 2
1 2
]]
content[134]=
[[
# tor
### Input
Each line contains two integers a and c (0 ≤ a, c ≤ 109). Both numbers are
written in decimal notation.
### Output
Each line print the single integer b, such that a tor b = c. If there are
several possible numbers b, print the smallest one. You should print the
number in decimal notation.
### Sample Input
14 34
50 34
387420489 225159023
5 5
### Sample Output
50
14
1000000001
0
]]
content[135]=
[[
# Replacement
### Input
For each test case,
The first line contains a single integer n (1 ≤ n ≤ 105), which represents how
many numbers the array has. The next line contains n space-separated integers
— the array's description. All elements of the array lie in the range from 1
to 109, inclusive.
### Output
Print n space-separated integers — the minimum possible values of each array
element after one replacement and the sorting are performed.
### Sample Input
5
1 2 3 4 5
5
2 3 4 5 6
3
2 2 2
### Sample Output
1 1 2 3 4
1 2 3 4 5
1 2 2
]]
content[136]=
[[
# 数字填充
### Problem Description
晴天小猪喜欢玩数字游戏，但数独这样的游戏对他来说太难了，于是他准备玩一个容易点的游戏。游戏规则是在一个N*N的表格里填数，规则只有一句话：总是以对角线为起点
，先横着填，再竖着填。游戏给了一些样例，请在样例里面找到规律并把这个表格打印出来吧。
### Input
多组测试数据（数据量在100组以内）。每组测试数据只有一行为一个整数n（1<=n<=30），表示表格的大小。
### Output
对于每组输入数据，输出填完的表格（n行，每行n个整数，两两之间用空格隔开，注意不要在最后打印多余空格）。每两个表格之间用空行隔开，注意不要在第一行或者最后打
印出多余的空行。
### Sample Input
    
    
    3
    5
    
### Sample Output
    
    
    1 2 3
    4 6 7
    5 8 9
    
    1 2 3 4 5
    6 10 11 12 13
    7 14 17 18 19 
    8 15 20 22 23
    9 16 21 24 25
    
]]
content[137]=
[[
# 苹果树
### Problem Description
还是苹果树•••说过两次了，晴天小猪有很多苹果树，树都种在他家的周围。现在我们用一个N*N的图来表示晴天小猪家的状况，其中#为晴天小猪的家，0表示空地，1表
示苹果树。已知晴天小猪的苹果树都种在和他家在同一斜线的位置上，你能数出他家总共有多少苹果树吗？
### Input
多组测试数据（数据量在100组以内）。每组测试数据第一行为一行为一个整数n（1<=n<=30），表示图的大小。接下来n行，每行n个字符。
### Output
对于每组输入数据，输出一行，为苹果树的总数。
### Sample Input
    
    
    3
    101
    1#1
    101
    2
    #1
    11
    
### Sample Output
    
    
    4
    1
]]
content[138]=
[[
# 电话费
### Problem Description
到了月底，晴天小猪又收到了可恶的中国移动寄来的话费账单。晴天小猪很喜欢打电话，所以他的电话费很多。中国移动为了照顾他，给了他一个特权，就是他可以把电话费的那
个数里去掉s个数字，去掉其中s个数字后剩下的数字按左右次序组成一个新的正整数（新的数首位不能是0），才是小猪最后要交的钱。你能告诉晴天小猪他最少要交多少钱吗
？
### Input
多组测试数据（数据量在100组以内）。每组测试数据有两行，第一行为两个正整数n和s(1<=s<n<=10000)，表示电话费为一个n位正整数（首位不为0），
可以去掉其中的s位。第二行为一个n位的正整数。
### Output
对于每组输入数据输出一行，为去掉s位后的数字。
### Sample Input
    
    
    11 3
    90019008798
    5 2
    10000
    3 1
    123
    
### Sample Output
    
    
    19008798
    100
    12
### Hint
scanf and printf are recommended!
]]
content[139]=
[[
# 寻找质数
### Problem Description
给定一个正整数n(2<=n<=100000)，判断它是否是质数
### Input
多组数据，每组一个整数n
### Output
若为质数则输出YES，否则输出NO
### Sample Input
    
    
    2
    3
    4
    
### Sample Output
    
    
    YES
    YES
    NO
]]
content[140]=
[[
# 又是字符串……
### Problem Description
这是一道字符串处理的题目： 下面有两种字符串操作，替换和扩充。
首先给出一段字符串s，然后对该字符串进行n次操作，最后输出处理后的字符串。
我们规定替换操作如下： 原字符串：sktrremn操作：# 1 3 mn则替换第一个字母开始长度为3的子串。
替换后为mnrremn如果字串无法完成此操作请输出：Sorry,request denied.我们规定扩充操作如下： 原字符串：sktrremn操作：@ 2
opq sopqtrremn即取代第二位的k并变成opq这个字符串。 如果字串无法完成此操作请输出：Sorry,request denied.
### Input
输入有多组数据。 每组数据第一行是一个字符串。 第二行是一个整数n，代表有n次操作。 之后n行对应n次操作。
### Output
输出有n行，每进行一次操作输出该操作后的字符串或者错误信息。每组数据之间输出一个空行。
### Sample Input
    
    
    stfa
    2
    # 1 5 sp
    @ 1 sss
    
### Sample Output
    
    
    Sorry,request denied.
    ssstfa
]]
content[141]=
[[
# 日期计算
### Problem Description
给定从2000年1月1日逝去的天数，请输出这一天的具体日期
### Input
多组数据，每组一个整数n(n>=0) 保证结果不超过9999年
### Output
输出具体日期，格式为"year-month-day dayofweek”
需要前导0
### Sample Input
    
    
    1
    30
    365
    366
    
### Sample Output
    
    
    2000-01-02 Sunday
    2000-01-31 Monday
    2000-12-31 Sunday
    2001-01-01 Monday
    
### Hint
"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"
]]
content[142]=
[[
# 日期计算BT版
### Problem Description
鉴于有同学感觉上机题太水，本次上机提供一道挑战题。不计分数，仅供大家自我挑战
给定从2000年1月1日逝去的天数，请输出这一天的具体日期
### Input
多组数据，每组一个整数n(n>=0) 保证结果不超过9999年
### Output
输出具体日期，格式为"year-month-day dayofweek”
需要前导0
### Sample Input
    
    
    1
    30
    365
    366
    
### Sample Output
    
    
    2000-01-02 Sunday
    2000-01-31 Monday
    2000-12-31 Sunday
    2001-01-01 Monday
    
### Hint
"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"
]]
content[143]=
[[
# 交叉相乘
### Problem Description
晴天小猪最近一直在忙于各种物理实验，他发现实验数据的处理实在是太麻烦了，就算是用计算器来按也还是很累，于是他决定用编程解决。现在请你来帮他实现一下吧。
有两个数列A和B ，每个数列都有n个整数，这些整数都在1~9之间（即个位数），用A数列的第一项乘以B数列最后一项，加上A数列的第二项乘以B数列倒数第二项••
••••以此类推，最后所求的答案就是交叉相乘后的结果Ans。然后再输出Ans / n的值。
### Input
多组测试数据（数据总数在100以内），每组测试数据有三行，第一行为一个整数n（1 <= n <=
100），第二行为n个用空格隔开的整数，表示A数列，第三行为n个用空格隔开的整数，表示B数列，数据保证A、B数列中的整数都小于10。
### Output
对于每组测试数据输出两行，第一行为交叉相乘的乘积的总和Ans，第二行为Ans / n的值，保留小数点后两位。
### Sample Input
    
    
    2
    9 8
    7 6
    4
    1 2 3 4
    5 6 7 8
    
### Sample Output
    
    
    110
    55.00
    60
    15.00
    
]]
content[144]=
[[
# 螺旋矩阵
### Problem Description
晴天小猪喜欢用二维数组来打印各种图案，这是一道很经典的图形打印题，晴天小猪一直都很喜欢，因此他把它留在了最后一次考试。如果你能独立完成这道题，说明你这学期的
C++学习已经达到了较好的学习效果。
对于给定的N，请打印一个N*N的螺旋矩阵。关于螺旋矩阵请观察样例。
### Input
多组测试数据（数据总数在13以内），每组测试数据有一行，为一个整数N（1 <= N <= 12）。
### Output
对于每组测试数据输出相应的螺旋矩阵，每两个矩阵之间用空行隔开，注意不要在第一行或者最后一行打印多余的空行。每个矩阵为N行N列，两两数字间用空格隔开，注意不要
打印多余的空格。
### Sample Input
    
    
    1
    3
    5
    
### Sample Output
    
    
    1
    
    1 2 3
    8 9 4
    7 6 5
    
    1 2 3 4 5
    16 17 18 19 6
    15 24 25 20 7
    14 23 22 21 8
    13 12 11 10 9
    
]]
content[145]=
[[
# 最后的晴天小猪
### Problem Description
晴天小猪马上就要和大家说再见了，也就是说大家以后再也不会碰到题面出现晴天小猪的题了（碰到了也是盗版的~）。为了打击盗版，晴天小猪想给他的题目都加一个验证码，
有点像软件的序列号。
验证码是一个长度为9的数字串，前三个数字表示一个三位数a ，中间三个数字表示一个三位数b ，后三个数字表示一个三位数c ，如果 c = a + b
，那么就说明这道题是正版的，否则就是盗版的。
由于数据量较大，请使用scanf而不是cin。
### Input
多组测试数据，每组测试数据有一行，为一个长度为9的数字串。
### Output
对于每组测试数据输出一行，正版则输出“YES”，盗版则输出“NO”。
### Sample Input
    
    
    100100200
    123456789
    
### Sample Output
    
    
    YES
    NO
]]
content[146]=
[[
# prime
### Problem Description
质数是指因子只有1和它本身的数，给你一个数n(1<=n<=1000)，请输出第n个质数
### Input
多组测试数据，每组一个整数n
### Output
第n个质数
### Sample Input
    
    
    1
    2
    100
    
### Sample Output
    
    
    2
    3
    541
    
### Hint
10000以内的质数已超过1000个
]]
content[147]=
[[
# A+Bi Problem
### Problem Description
给你2个数A,B按要求输出其运算结果，加减乘除分别为+ - * /
怎么样，这题是不是太水了呢？我也是这么觉得的，于是提高点难度，A,B不是实数，而是复数
### Input
多组数据，每组一行，依次是4个实数a,b,c,d表示A=a+bi,B=c+di
接下来是一个操作符(+ - * /中的一种) 保证除法运算合法！
### Output
按操作符要求输出结果的实部和虚部，结果保留2位小数
### Sample Input
    
    
    1 2 3 4 +
    1 0 0 2 *
    
### Sample Output
    
    
    4.00 6.00
    0.00 2.00
    
### Hint
如果你没有学过复数，那么可以把复数A=a+bi看成多项式A=a+bx 按多项式运算法则运算即可，唯一需要注意的是i2=-1的替换
]]
content[148]=
[[
# 罗马数字
### Problem Description
罗马数字是欧洲在阿拉伯数字（实际上是印度数字）传入之前使用的一种数码，现在应用较少（它甚至不能表示0）。但是在某些特定的时候（如表示书稿章节、机器型号等），
仍然需要使用罗马数字。罗马数字的具体使用方法如下：
记数方法
基本字符：I、V、X、L、C、D、M
相应的阿拉伯数字为：1、5、10、50、100、500、1000
(1)相同的数字连写，所表示的数等于这些数字相加得到的数，如：III = 3；
(2)小的数字在大的数字的右边，所表示的数等于这些数字相加得到的数， 如：VIII = 8；XII = 12。
(3)小的数字，（限于I、X和C）在大的数字的左边，所表示的数等于大数减小数得到的数，如：IV=4；IX=9；但是“减法规则”不能反复嵌套，比如8应该写成V
III而不是IIX，6不能写成IVX（这样会有歧义）而是VI。
(4)正常使用时连写的数字重复不得超过三次。
组数规则
(1)基本数字I、X、C中的任何一个，自身连用构成数目，或者放在大数的右边连用构成数目，都不能超过三个；放在大数的左边只能用一个。
(2)不能把基本数字V 、L 、D 中的任何一个作为小数放在大数的左边采用相减的方法构成数目；若放在大数的右边采用相加的方式构成数目，只能使用一个。
(3)V 和X 左边的小数字只能用I。
(4)L 和C 左边的小数字只能用X。
(5)D 和M 左边的小数字只能用C。
现在有n个数，需要你将他们转化成罗马数字。
### Input
第一行是一个数n（1<=n<=1000），表示有n个数需要转换。接下来n行每行一个数x（0<x<4000），表示需要转换的数。
### Output
n行，每行一个罗马数字，表示所转换后的数。
### Sample Input
    
    
    2
    3
    4
    
### Sample Output
    
    
    III
    IV
    
]]
content[149]=
[[
# BusyJay's ambition
### Problem Description
BusyJay一直想设计出一套属于自己的压缩算法。经过他七七四十九天的冥想，终于想出来该怎么做了。他打算先把要压缩的东西先预处理一下。例如把1111转化成1
4，表示一共有4个1连续在一起；把12转化成1121，代表一个1和一个2连在一起。但是BusyJay实在是太busy了，没空把心中的想法化为实际代码。你可以
帮他一下吗？
### Input
第一行是一个数字t，代表有t组数据。
每组测试数据只有一行，是一段长不超过1000的不含空格的字符串。
### Output
每组数据输出一行，代表预处理后的字符串
### Sample Input
    
    
    5
    142
    011123
    4544
    abbcbccc
    aaaaaaaaaa
    
### Sample Output
    
    
    114121
    01132131
    415142
    a1b2c1b1c3
    a10
    
]]
content[150]=
[[
# SimpleCalculation
### Problem Description
第一道题，很简单。。
根据每一行输入的标志来进行相应的计算，标志分别有+、-、*、/四种，进行相应的计算并输出。
### Input
多组测试数据。第一行输入测试数据的组数n(n<=100)，每组测试数据有一行，分别是计算标志和整数a、b(0<=a,b<=1000)。
### Output
每组测试数据的计算结果c（整数）。
### Sample Input
    
    
    3
    + 4 5
    - 2 4
    / 7 5
    
### Sample Output
    
    
    9
    -2
    1
    
]]
content[151]=
[[
# JosephusⅠ
### Problem Description
罗马人占领Yodfat了！Josephus与他的n-1个战友们被困在了一个洞里。他们讨论是自杀还是投降，最终他们选择了自杀，并以某种的方式决定先后顺序。这种
方式是n个战士围成一个圈，并按顺时针由1开始编号。然后由第一个人由1开始数，数到m的人自杀，然后下一个人又从1开始数起。这样直到全部人都死光。可是Josep
hus不想死，他还年轻，还有很多事情要做。于是他打算做最后一个“自杀”的人，这样他就可以放弃自杀继续活下去。但他不知道哪一个位置才是最后一个自杀的位置，聪明
如你可以帮一下他吗？
### Input
第一行是一个数字t，代表t组数据。
每组数据只有一行，一行有两个数字n和m，意义见Problem Description。
1<n, m<1000
### Output
每组数据输出一行，表示最后一个自杀的人的编号。
### Sample Input
    
    
    2
    2 2
    5 3
    
### Sample Output
    
    
    1
    4
### Warning
请用链表实现，我们会检查代码。
]]
content[152]=
[[
# Sequence
### Problem Description
给定两个无序数列A，B。数列中元素的值为int, 元素个数不超过100。将两个数列合并成一个非降序的数列并删掉一个元素输出。
### Input
多组测试数据。输入第一行为测试的组数n(n<=100)，每组测试数据的第一行包括a，b，c三个数，接下来两行分别有a个数和b个数，分别表示数列A、B，每个数
列中的元素用空格隔开。
### Output
每组数据输出一行，为合并后的非降序数列并删掉第c个数（1 <= c <= a+b)，元素之间用空格隔开。详见Sample
### Sample Input
    
    
    2
    4 5 3
    5 8 4 7 
    9 7 6 2 1 
    2 2 1
    -10 -1
    -2 3
    
### Sample Output
    
    
    1 2 5 6 7 7 8 9
    -2 -1 3
    
### Warning
请用顺序表实现并自行定义基本结构和初始化、销毁、定位、获取、插入、排序、合并等基本操纵，否则没分数，我们会检查代码。
e.g.
typedef struct
{...}...
void InitList(...)
{...}
void DestroyList(..)
{...}
...
int main()
{...在主函数中直接调用以上函数...}
]]
content[153]=
[[
# A+B
### Problem Description
对，你没看错，就是A+B。
### Input
第一行是一个数字t，代表有t组数据。
每组测试数据有两个整数A、B，0<A, B<10100
### Output
每组数据输出一行，即A+B的结果。
### Sample Input
    
    
    1
    2 3
    
### Sample Output
    
    
    5
### Hint
long long 是不够用的
]]
content[154]=
[[
# 大富翁
### Problem Description
BusyJay有一大包优乐美。患有强迫症的他给他的所有优乐美由1开始编了一个号，于是他就遇到了一个问题——今天他该喝哪一包呢？
终于，他发明了一个叫做RichJay的游戏。假设某天他喝到K包了，然后他就用计算器生成一个随机数A∈{-1, 0, 1}，如果是0的话，他就不喝；如果是1的
话，再生成两个随机数B、C，然后从当前出发，向编号增大的方向数B包，然后喝掉之后的C包——不要担心他喝不下，还有Elliot~；如果是-1的话，再生成两个随
机数B、C，然后从当前出发，向编号减小的方向数B包，然后喝掉之后的C包。在上述过程中，若是B+C要比那个方向剩下的包数要多，就把那个方向的最远的C包喝掉。一
开始时K为1。
有点晕？回去拿些优乐美做做实验吧。
### Input
第一行包含一个整数T表示有T组数据。
每组数据第一行包含两个整数N、M，表示有N包优乐美和M次操作。
接着M行，分别是相应的A或者A、B、C。
保证优乐美够喝。
### Output
输出最后还剩下的优乐美的编号，如果没有了就输出一个空行。
### Sample Input
    
    
    3
    10 1
    -1 3 3
    10 1
    1 5 4
    10 3
    1 5 5
    0
    -1 0 3
    
### Sample Output
    
    
    4 5 6 7 8 9 10
    1 2 3 4 5 6
    1 5
    
### Tips
数据很弱。
### Warning
请用链表实现。
]]
content[155]=
[[
# 微软( ⊙ o ⊙ )啊！
### Problem Description
（微软面试题）
话说Eddy在被主考官的题目弄得昏头转向的同时；
Mr.Dong也在微软面试另外一关卡住了……
他遇到的考题是这样的：
对于给定一串数，希望你每次右移动一位，求移动K次后的数组；
比如：123456->612345->561234->456123 这个就是移动了3次后的数组；
保证N的范围小于10000，K小于2^31
（真题）
### Input
第一行包含一个数据t表示有t组数据
每组数据包含两行，第一行包含两个整数N,K,表示有N个数字，移动K位；
第二行包含N个数字；
### Output
输出移动K次后的数组
### Sample Input
    
    
    2
    6 3
    123456
    10 1
    1234567890
    
### Sample Output
    
    
    456123
    0123456789
### From
### Warning
请用链表实现。
]]
content[156]=
[[
# JosephusⅡ
### Problem Description
Josephus上次没有成功逃脱——放心，不是因为你没有给他指出安全的位置，而是他们中途改变了规则！！！×@￥%@！#！￥@%*
规则变成了这样子：有N个人围成一圈，从1号开始，报数，报1，2，1，2，1，2…一直报到第N个人，报到2的出列，剩下的人再从刚才最后一个报数的人开始报数（如
果该人应该出列，则倒推到他前面第一个没有出列的人）1，2，3，1，2，3…报到2，3的人出列。然后继续，报数范围从开始的1，2报数，到后来得1，2，3…K报
数，直到队伍中只有1个人。请问这个人的编号是多少？每轮每个人只报一次数，即如果该轮开始时人数不足K个人，则不必一定报数到K。
### Input
第一行包含一个整数T表示有T组数据。
每组数据包含一个整数N，表示有N个人。（N<=1000）
1<n, m<1000
### Output
对于每组数据按照题目描述要求输出最终剩余人的编号。
### Sample Input
    
    
    1
    5
    
### Sample Output
    
    
    5
### Warning
请用链表实现。
]]
content[157]=
[[
# 简单数列
### Problem Description
给定两个无序数列A、B，要求判断是否存在A中的一个数a，与B中的一个数b的和为给定的S。存在输出Yes，不存在输出No。数列元素个数不超过100。
### Input
输入有4T+1行。第一行为数组的组数T，下面的4T分别为T组测试数据。每组测试数据的第一行为A,B两个数列的元素个数，用空格隔开。下面的两行分别为A,B两个
数列的元素，元素之间用空格隔开。第四行为给定的数S。
### Output
每组数据输出一行，存在输出Yes，不存在输出No。详见Sample
### Sample Input
    
    
    2
    5 5
    1 7 5 3 7
    2 6 10 8 4
    12
    4 5
    1 3 2 4
    5 6 9 7 8
    6
    
### Sample Output
    
    
    No
    Yes
    
### Warning
请用顺序表实现。
]]
content[158]=
[[
# 括号匹配
### Problem Description
判断输入的表达式中括号（包括圆括号()、方括号[]、大括号{}）是否配对。
仅考虑括号是否匹配，不考虑不同括号之间的逻辑关系。注意是半角！
### Input
输入有T+1行。第一行为数组的组数T，下面T行分别有T个表达式。
### Output
是输出Yes
否输出No
### Sample Input
    
    
    3
    5+[4-3]
    5+((3-1)
    ({})
    
### Sample Output
    
    
    Yes
    No
    Yes
    
### Warning
请用栈实现。
]]
content[159]=
[[
# 表达式计算
### Problem Description
把中缀表达式转化为后缀表达式，并计算结果。所输入表达式合法，并且数字元素类型为int，符号有(、)、+、-、*、/六种。
保证输入的表达式合法。
### Input
输入有T+1行。第一行为数组的组数T，下面T行分别有T个中缀表达式，表达式中数字元素类型为int。
### Output
后缀表达式
计算结果(为了简化过程，要求输出结果为int)
### Sample Input
    
    
    2
    (56-20)/(4+2)
    3/5
    
### Sample Output
    
    
    56#20#-4#2#+/
    6
    3#5#/
    0
    
### Warning
请用栈实现。
]]
content[160]=
[[
# Frank的绅士风度
### Problem Description
Frank 作为一个忠实的果粉，当然要亲历新pad发售时的排队抢购了。Frank这次做了非常充足的准备，带好了2顿饭的干粮和饮料，在发售前的那晚悄悄出发了。
深夜就到了西单，唉，太早了，没地方去，去麦当劳等着吧。于是frank 就走进了西单的麦当劳买汉堡。
没办法，麦当劳的生意还是这么火爆，丝毫没受3.15被曝光的影响。这大晚上的，人还真多，排队买汉堡也这么麻烦。但是对于Frank来说，发扬绅士风度的时候来了，
每当女士过来，Frank总会让他插在自己前面，但是如果是男士的话，就只有乖乖排到队后面去了。每当有一个人在买汉堡，总会有新的一个人过来排队。
注：如果Frank在买汉堡的时候一女士过来，Frank也会毅然让女士先买！
### Input
第一行输入t，表示数据组数。（0<t<100)
每组数据第一行是两个数n、m，分别是此时队列中人数和Frank的编号。(0<n<100, 0<m<2^31-1)
第二行输入初始状态队列中各人的编号（左边是队首，右边是队尾）
第三行是一个整数c，表示将要来买汉堡的人数。(0<c<1000)
接下来一行有c个数字，分别是按先后顺序来买汉堡的编号。如果是偶数代表女士，如果是基数则为男士。
### Output
一行，输出这段时间过后队列的情况。（左边是队首，右边是队尾）
### Sample Input
    
    
    2
    4 7
    5 6 7 1
    2
    3 8
    4 7
    5 7 6 1
    2
    3 8
    
### Sample Output
    
    
    8 7 1 3
    7 6 1 3
    
### Warning
请用队列实现。
### Thanks
感谢Frank投稿，版权归Frank所有。
]]
content[161]=
[[
# Winchester Mystery House
### Description
Winchester Mystery House是美国 Northern California 的一个如迷宫般错综复杂的神秘屋子。有一天，BusyJay被邪
恶的外星人绑架到这个屋子里。但是BusyJay很冷静，他趁外星人外出觅食的时候，摆脱了身上的束缚。但是外星人外出的时间比较短，所以他要想办法尽快走出这个如同
迷宫般错综复杂的屋子。为了简化问题，我们不妨假设该屋子是一个M*N的迷宫，请你找出一条从指定入口到出口的最短路径。
### Input
第一行是一个数字t，表示一共有t组数据。(0<t<100)
每组数据第一行是两个数字M、N，表示是一个M*N的迷宫。(0<M, N<100)
接下来一共有N行，每行M个数字，0表示该区域是墙壁，1表示该区域是通道，2表示BusyJay的位置，3表示出口。
### Output
输出一行，表示走出去至少要走多少步。如果走不出去，就输出“Oh, poor BusyJay!"
### Sample Input
    
    
    2
    3 2
    11 3
    2 0 0
    5 4
    1 1 0 1 1
    0 1 3 0 1
    1 0 1 0 1
    2 0 1 1 1
    
### Sample Output
    
    
    3
    Oh, poor BusyJay!
    
### Warning
请用队列实现。
### Winchester Mystery House
![<img:/richtext/res/108/31.png>](/richtext/res/108/31.png)
引用自google地图。
]]
content[162]=
[[
# GC
### Description
当一个电脑上的动态内存不再需要时，就应该予以释放，以让出内存，这种内存资源管理，称为垃圾回收（garbage collection），简称GC。垃圾回收器可
以让程式员减轻许多负担，也减少程式员犯错的机会。垃圾回收最早起源于LISP语言。目前许多语言如Smalltalk、Java、C#都支援垃圾回收器。——引用自
维基百科
好吧，简单地说GC就是一个可以让你不断new变量而又完全不用去delete的管理机制。
真实的GC用的算法也许会很复杂，现在我们来设计一个简单的。假设每个变量有一个属性Hp。我们用一个队列来储存申明的变量。每当有变量申明时，就放在队尾。一旦内存
不足时（例如变量总数达到MAX_CACHE）的时候，就从队头把变量出队，如果出队的变量的Hp大于DEAD_LINE，就把它的Hp减去DEAD_LINE，然后
放在队尾；否则直接销毁。这个过程一直持续到队列中的变量个数不大于MAX_CACHE的一半为止。
### Input
第一行是一个数字t，表示有t组数据。(0<t<100)
每组数据第一行是三个数字n、MAX_CACHE、DEAD_LINE。(2<n, MAX_CACHE<3000)
接下来一行有n个数字，表示每次申明变量的Hp。(0<DEAD_LINE, Hp<1024)
### Output
每组数据输出一行，表示此时队列中各个变量的Hp。
### Sample Input
    
    
    3
    10 10 5
    1 2 3 4 5 6 7 8 9 10
    5 10 76
    1 2 3 4 5
    5 3 5
    7 8 4 10 2
### Sample Output
    
    
    6 7 8 9 10
    1 2 3 4 5
    5
    
### Warning
请用队列实现。
]]
content[163]=
[[
# 链表的中间节点
### Problem Description
题目很简单。给定一个单向链表，要求输出中间节点。
### Input
第一行输入T，表示有T组数据。每一组输入一行数据，数据类型为int，数据量不超过100。为简化工作量，保证数据数量都奇数。
### Output
输出中间节点的值。
### Sample Input
    
    
    3
    1 2 3
    1 9 7
    1
    
### Sample Output
    
    
    2
    9
    1
    
### Hint
使用两个指针p1,p2进行遍历,p1每次行进1步，p2每次行进2步。当p2到达链表结尾的时候，p1指向的就是链表的中点。（仅仅是提示，具体实现的细节还请大家
自己掌握。）
老规矩，请用链表实现。
]]
content[164]=
[[
# 表达式依旧
### Problem Description
把中缀表达式转化为后缀表达式，并计算结果。所输入表达式合法，并且数字元素类型为int，符号有(、)、+、-、*、/六种。
保证输入的表达式合法。
### Input
输入有T+1行。第一行为数组的组数T，下面T行分别有T个中缀表达式，表达式中数字元素类型为int。
### Output
后缀表达式
计算结果(为了简化过程，要求输出结果为int)
### Sample Input
    
    
    2
    (56-20)/(4+2)
    3/5
    
### Sample Output
    
    
    56#20#-4#2#+/
    6
    3#5#/
    0
    
### Warning
请用栈实现。
PS：出原题的目的就是为了督促大家，上机不会的题下课后多练习一下，不要上完机就扔了。
]]
content[165]=
[[
# 串的处理
### Problem Description
基本的串操作。根据输入的指令对串进行相应的处理。
指令有Ins和Rep两个。
如果指令为Ins，执行插入操作，将串t插入到串s的第i（1<=i<=n+1，n为s的长度)个字符中，即将t的第一个字符作为s的第i个字符，并返回产生的新串。
如果指令为Rep，执行替换操作，在串s中，将第i（1<=i<=n+1)个字符开始的j（j为t的长度）个字符构成的子串用t替换，并返回产生的新串。
保证输入合法。
### Input
数据的组数T。每组数据有三行。第一行为指令Ins或者指令Rep，然后是数字i。接下来的两行分别为两个字符串s、t。
### Output
输出产生的新串
### Sample Input
    
    
    2
    Ins 3
    abcdefg
    abc
    Rep 4
    abcdefg
    ab
    
### Sample Output
    
    
    ababccdefg
    abcabfg
    
### Warning
请用串实现。
]]
content[166]=
[[
# 代码抄袭
### Description
判断2个代码是抄袭是很必要的，但是，除了人来看，似乎没有什么好得方法……
一个比较好的方法是比较编译后得二进制文件。
现在就来让你写个程序来比较两个二进制文件得差异度。
### Input
第一行包含1个整数T，表示有T组数据。
每组数据包含两行。
第一行包含一个数字N1（<=1000）表示长度，一个空格符，一个长度为N1的由’0’和’1’字符构成得数组，表示第一个文件得信息。
第二行结构和第一行类似，长度为N2（<=1000）。
### Output
判断两个1-0串的相似程度，如果长度都不同那么肯定不同，如果长度相同，统计相同位置的字符相同的个数，如果占到了整个长度得70%以上就说明有抄袭嫌疑，即（相同
字符个数）/（字符数组长度）>=0.700（精确到小数点后3位）。
如果有抄袭嫌疑，输出Yes，否则输出No。
### Sample Input
    
    3
    3 111
    3 000
    3 011
    2 01
    5 10010
    5 10110
### Sample Output
    
    No
    No
    Yes
### Note
出自:编程啦数据结构课程练习板块
本题数据较弱。
]]
content[167]=
[[
# 共建和谐OJ之和谐输入
### Description
出题难，出和谐的题更难。
给出一段数据，请把数据中不和谐的词换成和谐的词。
### Input
第一行是一个正整数t(0<t<10)。
接下来是t组数据，每组数据有两行。
第一行是两个单词（不是短语，是单词），分别是不和谐的单词和对应的和谐的单词。
第二行是一段待处理话，长度不大于1000。输入只含有ascii字符表中的字符。
### Output
每组数据输出一行，打印话处理后的结果。
### Sample Input
    
    3
    abc apple
    abcd is complicated than abc.
    sob iq
    sob, what a bag luck!
    gsqa banana
    do you know what is gsqa?
    
### Sample Output
    
    appled is complicated than apple.
    iq, what a bag luck!
    do you know what is banana?
    
]]
content[168]=
[[
# 共建和谐OJ之和谐替换
### Description
刚才的那题的替换方法实在是太不和谐了，第一组输入的abcd躺着也中枪啊有木有。现在请用和谐的替换手法来替换，不要“断章取义”了。
### Input
第一行是一个正整数t(0<t<10)。
接下来是t组数据，每组数据有两行。
第一行是两个单词（不是短语，是单词），分别是不和谐的单词和对应的和谐的单词。
第二行是一段待处理话，长度不大于1000。输入只含有ascii字符表中的字符。
### Output
每组数据输出一行，打印话处理后的结果。
### Sample Input
    
    
    3
    abc apple
    abcd is complicated than abc.
    sob iq
    sob, what a bag luck!
    gsqa banana
    do you know what is gsqa?
### Sample Output
    
    abcd is complicated than apple.
    iq, what a bag luck!
    do you know what is banana?
### Tips
和谐提示：当输入中严格含有该单词时才处理。
]]
content[169]=
[[
# 共建和谐OJ之和谐封杀
### Description
我们发现对于某些顽固分子而言，其中的不和谐词语实在是太多了，于是我们决定，如果输入中不和谐的词语出现次数少于n次的话，就替换，否则直接封杀。
### Input
第一行是一个正整数t(0<t<10)。
接下来是t组数据，每组数据有两行。
第一行是两个单词（不是短语，是单词）和一个正整数n（0<n<100，意义如上)，分别是不和谐的单词和对应的和谐的单词。
第二行是一段待处理话，长度不大于1000。输入只含有ascii字符表中的字符。
### Output
每组数据输出一行，打印话处理后的结果。如果被封杀了就输出"404 not found."。
### Sample Input
    
    3
    abc apple 2
    abcd is complicated than abc.
    sob iq 1
    sob, what a bag luck!
    gsqa banana 4
    do you know what is gsqa?
    
### Sample Output
    
    abcd is complicated than apple.
    404 not found.
    do you know what is banana?
    
]]
content[170]=
[[
# 共建和谐OJ之和谐查找
### Description
顽固分子们实在是太狡猾了，他们把单词拆成两部分，使得我们无从和谐。经过H委员会的研究，一致决定引入通配符机制。
不知道什么是通配符？
在计算机（软件）技术中，通配符可用于代替字符。
通常地，星号“*”匹配0个或以上的字符，问号“?”匹配1个字符。在SQL中，通配符可用于“LIKE”表达式中，其百分号“%”匹配0个或以上的字符。
——引用自维基百科
### Input
第一行是一个正整数t(0<t<10)。
接下来是t组数据，每组数据有两行。
第一行是一个不含有空格的字符串s，并且可能不含有通配符，如果含有只会出现一种（*或者？）
第二行是一段待处理话，长度不大于1000。输入只含有ascii字符表中的字符。
### Output
每组数据输出一行，如果在待处理话里发现了能满足s的字符串，输出"Yes", 否则输出"No"。
### Sample Input
    
    3
    ab*d
    abcd is complicated than abc.
    ,?w
    sob, what a bag luck!
    d?y?k
    do you know what is gsqa?
    
### Sample Output
    
    Yes
    Yes
    No
    
]]
content[171]=
[[
# 用KMP，得永生
### Description
BusyJay本来想把上次练习的最后一道题加大数据强度后放进来的，但考虑到难度和社会主义共同富裕的最终目标——我为什么说这个呢？Anyway，他决定出一道水
题。这是一道关于KMP的水题。
如果你看不明白题目，可能你需要这个[点我](http://acm.buaa.edu.cn/contest/33/problem/E/)
### Input
第一行是一个正整数t(0<t<100)。
接下来是t组数据，每组数据有两行。
第一行是一个不含有空格的字符串s，并且可能不含有通配符，如果含有只会出现*。长度不大于1000。
第二行是一段话，长度不大于10000。输入只含有ascii字符表中的字符。
### Output
每组数据输出一行，如果在该组输入的第二行字符串里发现了能满足s的字符串，输出"Yes", 否则输出"No"。
### Sample Input
    
    3
    ab*d
    abcd is complicated than abc.
    wh*!
    sob, what a bag luck!
    day
    do you know what is gsqa?
    
### Sample Output
    
    Yes
    Yes
    No
    
### Tips
数据量很大，慎之。
]]
content[172]=
[[
# 眼花缭乱的篮球赛
### Description
昨天LE去看了系里办的篮球赛，发现双方都打得很努力啊！鼓个掌先~
篮球场上，双方攻防交替很迅速，双方的队员相对位置一直在变化。LE站在场地的一侧，所以看起来就好像双方队员排成了一排。
LE于是很无聊地开始计算双方队员有多少种排列方式。答案当然毫无疑问是10！种啦。
但是LE还想知道这些排列具体是怎样的。大家都知道LE很懒的，所以这个光荣而艰巨的任务就交给你们了！
### Input
第一行包含一个整数t，表示共有t组数据。(0<t<=8)
每组数据包含两行，第一行是一个数字n(0<n<=9)，表示要对n个人进行排列。
第二行是一个包含n个字母的字符串，第i个字母表示第i个人的名字缩写，保证字符串是升序的。
### Output
每组数据包含n!行，每行有一个字符串，表示一种排列情况。
字符串按字典序升序输出。
### Sample Input
    
    1
    2
    ab
### Sample Output
    
    ab
    ba
### Tips
递归
### Note
本题由Elliot友情提供。
]]
content[173]=
[[
# 求n阶矩阵
### Problem Description
根据数字输出相应的矩阵，使得沿着矩阵的右上至左下或者左下至右上的方向得到的数字串是从0到n*n-1的顺序。详情见样例。
![<img:/richtext/res/110/sample.jpg>](/richtext/res/110/sample.jpg)
### Input
输入有T+1行。第一行为数组的组数T（T<100)，下面T行分别有T个数字n（n>0），数字类型为int（n^2也在int的范围之内）。
### Output
输出一个n*n的矩阵。
### Sample Input
    
    
    3
    1
    2
    4
    
### Sample Output
    
    
    0
    0 1
    2 3
    0 1 5 6
    2 4 7 12
    3 8 11 13
    9 10 14 15
    
]]
content[174]=
[[
# You-Know-What2
### Description
递归求解方程：
F(N)= F(N/2) + F(N/3) (N>3);
F[0] = 1;
F[1] = 1;
F[2] = 0;
其中符号“/”表示整除。
（PS.最好使用递归写代码，可能抽查代码）
### Input
第一行包含一个数据T，表示有T组数据，T小于100,000。
以下每行包含一个正整数N，为F(N)中的N，N不超过100.
### Output
输出对应函数值。
### Sampel Input
    
    
    2
    3
    10
### Sample Output
    
    
    2
    3
]]
content[175]=
[[
# 稀疏矩阵的基本运算
### Problem Description
已知稀疏矩阵a、b，分别输出a、b、a*b的三元组形式，三元组的定义详见教材。
### Input
第一行为数组的组数T(T<100)，每组数据第一行为a、b的维数n(n<100)。接下来的2n行分别为矩阵a、b，矩阵元素的数据类型为int。
### Output
输出a、b、a*b的三元组形式，每个三元组的第一行输出矩阵的行数、列数和非零元素数。
### Sample Input
    
    
    1
    4
    1 0 3 0
    0 1 0 0 
    0 0 1 0
    0 0 1 1
    3 0 0 0
    0 4 0 0
    0 0 1 0
    0 0 0 2
    
### Sample Output
    
    
    4 4 6
    0 0 1
    0 2 3
    1 1 1
    2 2 1
    3 2 1
    3 3 1
    4 4 4
    0 0 3
    1 1 4
    2 2 1
    3 3 2
    4 4 6
    0 0 3
    0 2 3
    1 1 4
    2 2 1
    3 2 1
    3 3 2
    
]]
content[176]=
[[
# 字符串转换为矩阵
### Problem Description
你已经知道了一个长度为R（R<=100）的字符串，现在要求你按照如下方式填入一个N*N的方阵中，如果填不满，剩下的位置补充为‘#’。
### Input
多组测试数据。每组数据第一行N，表示N*N方阵，第二行为字符串，字符串长度R不超过100。
### Output
方阵
### Sample Input
    
    
    3
    1
    Hello
    3
    hello_c++
    3
    where_me
    
    
### Sample Output
    
    
    H
    hel
    ++l
    c_o
    whe
    e#r
    m_e
    
    
]]
content[177]=
[[
# 查找子串
### Problem Description
给定字符串A，寻找A的最长连续子串B，要求B的所有字符都相同。
### Input
T组测试数据。每组测试数据为字符串A，A的长度不超过100。
### Output
每组数据输出一行，为B的长度。
### Sample Input
    
    
    3
    a
    asdjjjdfd
    abbcccbb
    
### Sample Output
    
    
    1
    3
    3
    
]]
content[178]=
[[
# 叶子节点
### Problem Description
给出一个二叉树的广义表表示方法，请用二叉链表的方式建立一棵二叉树。并输出树中叶子节点的数目。
### Input
输入有n+1行。第一行为测试数据的组数n, 一下的n行为n棵二叉树的广义表表示法所表示的二叉树。树中的元素为char，树的高度不超过10。
### Output
输出一共有n行，分别对应输入的n棵二叉树的叶子节点的数目。
### Sample Input
    
    
    2
    A(B(D,),C(E,F(,H)))
    A(B,D)
    
### Sample Output
    
    
    3
    2
    
]]
content[179]=
[[
# 二叉树遍历
### Description
对于一个给定的二叉树，输出他的前序，后序，层次遍历序列。（非递归方式完成）
不考虑空树情况
### Input
输入有n+1行。第一行为测试数据的组数n, 一下的n行为n棵二叉树的广义表表示法所表示的二叉树。树中的元素为char，树的高度不超过10。
### Output
输出一共有3n行，分别对应输入的n棵二叉树。每行对应树的前序，后序，层次遍历序列。
### Sample Input
    
    
    2
    A(B(D,),C(E,F(,H)))
    A(B,D)
    
### Sample Output
    
    
    ABDCEFH
    DBEHFCA
    ABCDEFH
    ABD
    BDA
    ABD
    
]]
content[180]=
[[
# 递归求和
### Problem Description
输入一个数，求这个数的各位数字之和。用递归解决。
### Input
第一行为T，表示有T组数据，以下每行包含一个整数N（N<=10^100）
### Output
输出各位数字之和。
### Sample Input
    
    
    2
    1234
    1000000
    
### Sample Output
    
    
    10
    1
    
]]
content[181]=
[[
# BusyJay的爬网机器人
### Description
BusyJay最近在写一个爬网机器人。但是他遇到了一个难题，就是如何解析html文件。突然，他灵光一现，决定以一个树来解析html文件。但是他太久没用过数据
结构了，忘了该怎么做了::>_<:: （教训啊！）亲爱的同学们，用你们的知识拯救他吧！什么？你不会html！！没关系，BusyJay负责把html脚本转成广
义表的形式。而你们就负责把广义表转化成树，并且按照以下格式输出：
    
    
    A(B,C)
    
变成
    
    
    A
      B
      C
    
也就是：
1.每个节点输出一行；
2.如果某个节点是根节点，输出时不用缩进；
3.如果某个节点不是根节点，输出时需要缩进，并且缩进的空格数是父节点的加2。
4.树的遍历输出顺序是先序遍历。
### Input
第一行是一个正整数t(0<t<100)。
接下来是t组数据，每组数据有一行包括一行不含空格的字符串。只含有ascii字符集字符。节点长度不长于10，字符串长度不长于1000。保证生成的树是二叉树。
### Output
每组数据按照上述格式整理输出。
### Sample Input
    
    2
    A(B,C)
    A(B(D(,G)),C(E,F))
    
### Sample Output
    
    A
      B
      C
    A
      B
        D
          G
      C
        E
        F
    
]]
content[182]=
[[
# 不高兴的聪聪
### 题目叙述
聪聪上大学了。很多妹子都需要聪聪陪伴。所以聪聪除了陪他妹子以外，还要为各路妹子解决各路问题。但是聪聪如果一天陪妹子们的时间大于8个小时就会不高兴，而且陪得越
久就会越不高兴。假设聪聪不会因为其它事不高兴，并且他的不高兴不会持续到第二天。请你帮忙检查一下聪聪下周的日程安排，看看下周他会不会不高兴；如果会的话，哪天最
不高兴。
### 输入
输入包括七行数据，分别表示周一到周日的日程安排。每行包括两个小于10的非负整数，用空格隔开，分别表示聪聪陪老婆和陪其他妹子的时间。
  
### 输出
输出包括一行，这一行只包含一个数字。如果不会不高兴则输出0，如果会则输出最不高兴的是周几（用1, 2, 3, 4, 5, 6,
7分别表示周一，周二，周三，周四，周五，周六，周日）。如果有两天或两天以上不高兴的程度相当，则输出时间最靠前的一天。
### 样例输入
    
    
    5 3
    6 2
    7 2
    5 3
    5 4
    0 4
    0 6
    
### 样例输出
    
    
    3
    
### 来源
    
    
    董适改编自NOIP
    
]]
content[183]=
[[
# 聪妹的随机数
### 题目叙述
闫导给聪妹发了短信，说要举办系里的ACM比赛，让每个班派出一个队（也就是三个人）参加。聪妹群发通知短信后发现报名极其踊跃，严重超过了3个人。肿么办呢，聪妹希
望每个人都有机会为班争光，于是决定动用聪妹的随机数大法。基本的方法就是测试当前每个人的RP值，让RP比较高的三个人去。
### 输入
    
    
    第一行，整型n表示报名的人数 (3<=n<=30)
    接下来n行分别描述一个人的姓名和一个整型RP值，中间用空格隔开，数据保证人名为连续字符串，不会跟c2一样出现蛋疼的空格。
    0<=RP<=100.如果RP相同，那么按照原来的输入顺序输出。
    
  
### 输出
输出三行，依次为RP最高、次高和第三高的人的人名，这就是为班争光的三个人啦~
### 样例输入
    
    
    5
    xi.chen 90
    xiaoyang.ma 89
    wencong.xiao 59
    hao.shen 69
    xiaoyun.mo 77
    
### 样例输出
    
    
    xi.chen
    xiaoyang.ma
    xiaoyun.mo
    
### 来源
    
    
    肖文聪原创
    
]]
content[184]=
[[
# 又到表白季
### 题目叙述
春天来了，又到了人们表白的季节。在北航这个温暖的大家庭里面，小D默默地爱上了小G。但是小G是很古灵精怪的一直妹纸，她给小D发来一段码，说解开我就答应你。
小G给小D的唯一一个提醒是——我给你的发的第一层是摩斯码。小D看着那么多点划线，很无语，于是来请求你的帮助：
你的任务是——接受小G发来的老多老多摩斯码（用空格分开），输出小G的原文。
摩斯码对照表：
![<img:/richtext/res/112/%E6%91%A9%E6%96%AF%E7%A0%81.jpg>](/richtext/res/112/%
E6%91%A9%E6%96%AF%E7%A0%81.jpg)
### 输入
第一行是一个整数T(T<=100)，代表数据的组数。
对于每组数据，第一行是一个整数N(1<=N<=100)，以下N行每行一个摩斯码。
### 输出
按照样例输出的方式，每组数据输出到一行。
### 样例输入
    
    
    1
    7
    ..-
    ---
    -.--
    ...
    ...
    ..
    --
    
### 样例输出
    
    
    Case #1: UOYSSIM
    
### 来源
    
    
    董适原创
    
]]
content[185]=
[[
# 学妹的神题
### 题目叙述
观察下面一组数据，观察数据规律。
    
    
    36  7  5  1
     4  5  0  4
    12  5  2  2
    
### 输入
第一行一个正整数T （T<=100）， 表示有T组测试数据。第二行～第T+1行，每行有2个正整数N，M （1<=N,
M<=10^6），代表数组的前两个数据。
### 输出
对于每组输入N，M，输出一行，该行有2个数，为对应数组的3,4个数据值。
### 样例输入
    
    
    2
    49 7
    9 8
    
### 样例输出
    
    
    7 0
    1 1
    
### 来源
    
    
    袁雅辉原创
    
]]
content[186]=
[[
# 签到
### 题目叙述
BUAA-SCSE 新家族又要迎来新的同学了。这次的妹子颇多，足足有n人之多（1<=n<=10^6），她们每个人的学号都是1~2*10^9 内的一个整数。
董适早早地就掌握了她们每个人的学号，并且知道她们之中有一个人去幽会男朋友了！！！！
董适统计了在场所有妹子的学号，他想知道，哪个人没来？
### 输入
第一行是一个整数n，代表这个大班一共有n只妹纸
以下n行每行一个整数，代表每只妹纸的学号
以下n-1行每行一个整数，代表每只来了的妹纸的学号
### 输出
输出没来的妹纸的学号。
### 样例输入
    
    
    3
    10061061
    10061023
    10061201
    
    10061061
    10061023
    
### 样例输出
    
    
    10061201
    
### 来源
    
    
    董适改编自哈尔滨工程大学训练赛
    
]]
content[187]=
[[
# 睡草席的妹子-幼稚版
### 题目叙述
妹子要去西藏旅游了，进了宾馆，发现满地都是坑爹的草席！这怎么睡啊！不过读工科的妹子突然很好奇——在这有限的地方，到底有多少种方法摆放这些草席？
草席分为两种——瘦子睡得草席，占地1*2；胖子睡的草席，占地2*2 。旅店的每间屋子宽度都是2，长度n。草席无限多。
以下是n=17的时候一种可行的摆放方案
![<img:/richtext/res/113/1.jpg>](/richtext/res/113/1.jpg)
### 输入
第一行是数据的组数T，T<=10000。
下面T行，每行一个整数n， 1<= n <= 250.
### 输出
T行，每行一个整数，代表草席摆放的方案数
### 样例输入
    
    
    5
    2
    8
    12
    100
    200
    
### 样例输出
    
    
    3
    171
    2731
    845100400152152934331135470251
    1071292029505993517027974728227441735014801995855195223534251
    
### 来源
    
    
    董适改编自poj
    
]]
content[188]=
[[
# 在河之洲
### Description
在太阳还没完全醒的时候，乔划着他的小船停靠在村尾的河洲边。从这里出发，就可以进入那一望无尽的河域了。抬头望去，只见河道交错复杂，不断被河洲从中分开，以一种二
叉树的姿势延展至远方。自从安在河里失踪后，乔便盼着今天。他要深入河，到达远方那没有人去过的流域，寻找安的踪迹。他不知道自己能否找到她，也不知道她是死是活，他
只知道他一定要去找她，即使他有可能因此丢掉自己的生命。他一共带了n个单位的干粮，每个单位干粮只能支持他从一个河洲到达另一个河洲。如果n个单位的干粮消耗完了他
还不能找到安并且把安带回去，他将从此再也回不去他来的地方。
### Input
第一行是一个正整数t(0<t<100)。
接下来是t组数据，每组数据有两行。
第一行有一个整数n和一个字符串k，表示安在标号为k的节点。0<n<100;
第二行是一个不含空格的字符串，表示河流的地图，长度不大于1000。节点长度不长于10。输入只含有ascii字符表中的字符。
### Output
每组数据输出一行，如果乔有可能活着回来，输出"Yes", 否则输出"No"。
### Sample Input
    
    1
    2 B
    A(B,C)
    
### Sample Output
    
    Yes
    
]]
content[189]=
[[
# 姐姐大人的命令
### Description
Frank的姐姐是一个娇生惯养、不事编程的女生，于是每当遇到编程都会让Frank解决。然而Frank由于久未事编程，基本都忘掉了（又一个深刻的教训啊）。但是
姐命不可违啊。这不，今天他姐姐又来问他了。
### Input
第一行是一个正整数t(0<t<100)。
接下来是t组数据，每组数据有两行。
每行都是一个不含空格的字符串，分别表示某个树的先序遍历和中序遍历的结果，长度不大于62。输入只含有ascii字符表中的字符。每一个字符代表一个节点。
### Output
每组数据输出一行，表示该树的后序遍历的结果。
### Sample Input
    
    1
    abcd
    bacd
### Sample Output
    
    bdca
    
]]
content[190]=
[[
# 数组编码
### Problem Description
设数组A[N]，数据类型为int,存放的元素为0～N-1(1<N<=10)之间的整数，且A[i]≠A[j]（i≠j）。
例如当N=5时，有：A=（3，4，0，1，2）。此时，数组A的编码定义如下：
A[0]编码为0；
A[i]编码为：在A[0]，A[1]，…，A[i-1]中比A[i]的值小的个数
（i=1，2，…，N-1）
因此上面数组A的编码为：B=（0，1，0，1，2）
要求通过数组A的编码B，求出A中的原数据
### Input
第一行输入T，表示T组测试数据, 0<T<100。每组数据第一行输入N（1<N<=10），第二行输入N个数字，表示编码B。
### Output
根据输入的编码B输出原数组A，元素之间用空格隔开。
### Sample Input
    
    
    1
    5
    0 1 0 1 2
    
### Sample Output
    
    
    3 4 0 1 2
    
]]
content[191]=
[[
# 线段相交
### 题目叙述
There are N segments in the 2D plane. Assuming you can find a line to
intersect with X segments. Can you tell me the maximum of X?
The definition of a line and a segment’s intersection: at least existing one
point lies the line and the segment simultaneously.
### 输入
The first line, an integer T (1<=T<=20), indicating test case numbers. For
each case:
The first part: an integer N, indicating the numbers of segments.
The second part: N lines with each line four integer numbers x1, y1, x2, y2.
1<=N<=50
-10000<= x1, y1, x2, y2<= 10000  
No the condition: x1==x2&&y1==y2.
Notice: Any two lines would not totally coincide.
### 输出
Output the maximum of X
### 样例输入
    
    
    2
    2
    1 1 2 2
    3 3 4 4
    4
    0 3 3 3
    2 2 3 2
    1 1 2 1
    0 0 1 0
    
### 样例输出
    
    
    2
    4
    
### Hint
第二组数据的图形：
![<img:/richtext/res/114/1.jpg>](/richtext/res/114/1.jpg)
### 来源
    
    
    董适给中国科学技术大学月赛出的题目
    
]]
content[192]=
[[
# 简单递归
### Description
如下的一列数
1 1 1 1 2 0 3 1 5 -1 8 2 。。。
规律是：
前4个数为1；
i（i>4）为偶数时，第i个数是第i-4个数减去第i-2个数；
i（i>4）为奇数时，第i个数是第i-4个数加上第i-2个数；
### Input
第一行输入T，表示T组测试数据，0<T<100。每组数据第一行输入i（0<i<=50）。
### Output
每组数据输出一行，表示第i个数的值。
### Sample Input
    
    
    2
    1
    6
    
### Sample Output
    
    
    1
    0
    
]]
content[193]=
[[
# 睡草席的妹子-弱智版
### 题目叙述
妹子要去西藏旅游了，进了宾馆，发现满地都是坑爹的草席！这怎么睡啊！不过读工科的妹子突然很好奇——在这有限的地方，到底有多少种方法摆放这些草席？
草席分为两种——瘦子睡得草席，占地1*2；胖子睡的草席，占地2*2 。旅店的每间屋子宽度都是2，长度n。草席无限多。
以下是n=17的时候一种可行的摆放方案
![<img:/richtext/res/115/1.jpg>](/richtext/res/115/1.jpg)
妹子看了这个题目表示很愤怒，有这么小的旅馆么！于是她就把n的范围改成了10^18 （long long
64位整数以内）。不过，她不要最终答案，她的大脑只能数到100000007，于是他想问你这个答案对于100000007的余数是多少。
### 输入
第一行是数据的组数T，T<=10000。
下面T行，每行一个整数n， 1<= n <= 10^18.
### 输出
T行，每行一个整数，代表草席摆放的方案数对100000007的余数
### 样例输入
    
    
    5
    2
    8
    12
    100
    200
    
### 样例输出
    
    
    3
    171
    2731
    943204
    99641816
    
### 来源
    
    
    董适改编自poj
    
]]
content[194]=
[[
# 聪妹的晚会
### 题目
为了庆祝聪妹的生日，聪妹决定举办一个晚会，大家一起玩狼人杀什么的。聪妹有很多熟人，他们其中一些人是好朋友好机油好丽友，但是也有些人互相讨厌对方。为了让整个晚
会成功，聪妹只会邀请那些是好朋友的人来参加，不会邀请那些彼此讨厌的。所有的好友和讨厌的关系都是双向的。
为了简单的叙述这个问题，对于每一个被邀请的人必须满足下列的条件：
1、所有他的朋友都被邀请来参加聪妹的晚会
2、晚会上不能遇到任何他讨厌的人
3、所有被邀请来参加晚会的人都直接或者间接的是好友关系，也就是说或者直接是他的好友，或者是间接的通过一个好友链相识的
现在聪妹要去给大家准备吃的什么的，帮他找到最多的人来参加他的晚会这个重担就落在你身上了。
### 输入
多组数据
输入第一行包括一个整型数n(n<=10)——聪妹的朋友人数
第二行包括一个整型数k（0<=k<=n*(n-1)/2）——好友关系数
下面k行给出k对数xi，yi，描述xi和yi是好友关系
紧着着一行是一个整型数m（0<=m<=n*(n-1)/2）——互相反感的关系数
下面m行给出m对数xi，yi，描述xi和yi心存芥蒂
数据保证没有两个人既是好友又互相反感
  
### 输出
只需要输出一个数——最大可以邀请的人数，如果没有人可以邀请，悲催的输出0吧。
### 样例输入
    
    
    9
    8
    1 2
    1 3
    2 3
    4 5
    6 7
    7 8
    8 9
    9 6
    2
    1 6
    7 9
    
### 样例输出
    
    
    3
    
### 来源
    
    
    肖文聪改编自codeforces
    
### Note
对数据的解释
![<img:/richtext/res/125/QQ%E6%88%AA%E5%9B%BE20120426125119.jpg>](/richtext/re
s/125/QQ%E6%88%AA%E5%9B%BE20120426125119.jpg)
]]
content[195]=
[[
# 层次遍历
### Problem Description
给出一个二叉树的广义表表示方法，输出层次遍历的结果和广义表的深度。
### Input
第一行输入T，表示T组测试数据。0<T<100。每组数据有一行不含空格长度不大于1000的字符串，表示用广义表表示的二叉树，树中的元素为char，树的高度不
超过10。
### Output
每组输出两行，第一行是广义表的深度，第二行是层次遍历的结果。
### Sample Input
    
    
    2
    A(B,C)
    A(B,C(D,))
    
### Sample Output
    
    
    2
    A B C
    3
    A B C D
    
]]
content[196]=
[[
# 北师大的羽毛球
### 特别介绍
本题为2012年4月28日北师大校赛中的E题，算法很经典，很有意思。题目不是很难.
经过OrzYiDaShenNiuWuSuoBuNeng授权，特别引用到此。。
### 题目叙述
运动会就要到了，lujcmss大牛报名参加了羽毛球双打。
大牛发现一个有趣的现象，每个人的实力都可以用一个整数来表示，而在双打的比赛中，团队的实力可以表示为两个选手的实力加和，并且总是团队实力大队伍的获胜（若实力相
同则获胜概率均为0.5）。大牛知道了每个选手的实力值，同时知道了第一轮为随机组队比赛（即任意两人组队的概率相同，任意两队比赛的概率相同），获胜的队伍出线，现
在大牛希望你帮他计算他出现的概率。
注：
1、保证大牛第一轮不会被轮空
2、N为偶数
3、其他人组队是等概率的，我们只用考虑大牛就好了。
### 输入
第一行为一个整数N（4<=N<=2000），表示选手的总数。接下来是N行，每行一个整数R（1 <=R<=10^8），表示选手的实力值。大牛总是排在第一个。
### 输出
对于每组数据输出一个实数，即大牛出线的概率，误差在10-6以内均算正确。
### 样例输入
    
    
    4
    1
    2
    4
    8
    
### 样例输出
    
    
    0.333333
    
### 来源
    
    
    北京师范大学 STO赵力Orz 原创 
]]
content[197]=
[[
# 结点距离下集
### Description
好像前两个题都很简单啊……于是呢，这一次我们来讲一个故事好了。
传说在某一个神奇的城市，有一个很神奇的交通系统。它的神奇之处在于，你可以从一个站点传送到另一个站点，不过就像游戏中的传送魔法一样，它需要1分钟的准备时间。
不过这样神奇的交通系统当然是很贵的，所以任意一条交通路线（交通路线上包含多个站点，你必须顺序地进行传送）都从一个被称为“集换中心”的中转站出发，而且不在其他
站点交汇。
于是，你能告诉我，从一个站点到另一站点最少需要多少时间(忽略在一个站点中进行中转的时间)么？
### Input
第一行是一个正整数t；
接下来有t组数据，每组数据第一行有两个正整数m，n；
接下来m行每行有两个整数a, b，表示站点a与站点b之间可以相互传送。
最后是n行，每行一个整数q, p，表示待求站点的编号。
(0<t<20, 0<m, n<100000， 0<=a, b, q, p<=m)
### Output
每组数据输出n行，每行有一个整数，代表从p站点到q站点所需的最短时间。
### Sample Input
    
    
    1
    5 3
    1 3
    2 5
    0 4
    3 0
    2 3
    0 0
    2 5
    5 4
    
### Sample Output
    
    
    0
    1
    4
    
]]
content[198]=
[[
# 二叉树的三围
### Description
每一棵长大了的二叉树都是有三围的。但是二叉树的三围和人的三围不一样。首先，二叉树是没有性别之分的；其次，二叉树的三围是指树结点数最多的一层中结点的数目和该层
上层以及下层的结点数目。例如A(B,C(D(E,),))的三围分别是1, 2, 1。现在给出你一个二叉树的描述，请你打印出该二叉树的三围来。
### Input
第一行是一个正整数t；
接下来有t组数据，每组数据只有一行，为二叉树的广义表形式，长度不长于1000。
(0<t<100)
### Output
每组数据输出一行，数字间用空格隔开，表示对应树的三围。
如果出现最大值不止一个，选择最开始出现的那个；如果给出的数据不合法，请输出“Invalid tree!"。
### Sample Input
    
    
    2
    0(1(3,),2(,4))
    0(1,)
    
### Sample Output
    
    
    1 2 2
    Invalid tree!
    
### Tips
把最长的放在中间
]]
content[199]=
[[
# 二叉树的顺序储存结构
### Description
给出一棵二叉树的顺序储存结构，请你输出其先序遍历、中序遍历和后序遍历的结果。
### Input
第一行是一个正整数t(0<t<100)；
接下来有t组数据，每组数据只有一行，表示该树的顺序储存结构，长度小于1000。
### Output
每组数据输出三行，分别是该树的先序遍历、中序遍历和后序遍历的结果。
### Sample Input
    
    
    1
    #ABCD#EF#G##H##I
    
### Sample Output
    
    
    ABDGCEHFI
    DGBAHECFI
    GDBHEIFCA
    
### Tips
如果有人不知道题目什么意思，请翻看课本。
]]
content[200]=
[[
# n皇后
### Description
十九世纪著名的数学家高斯1850年提出：在8*8格的国际象棋上摆放八个皇后，使其不能互相攻击，即任意两个皇后都不能处于同一行、同一列或同一斜线上，问有多少种
摆法。
在此基础上，要求在n*n格的国际象棋上摆放n个皇后，使其不能互相攻击，即任意两个皇后都不能处于同一行、同一列或同一斜线上，问有多少种摆法。
### Input
输入数字n(1<=n<=10)。
### Output
输出摆法的数量。
### Sample Input
    
    
    8
    
### Sample Output
    
    
    92
    
### Warning
请思考用算法解决，不允许存储所有可能的数据然后输出。
]]
content[201]=
[[
# 非递归二叉树遍历
### Description
对于一个给定的二叉树，输出它的前序，中序遍历序列。（非递归方式完成）
不考虑空树情况
### Input
输入有n+1行。第一行为测试数据的组数n, 一下的n行为n棵二叉树的广义表表示法所表示的二叉树。树中的元素为char，结点数量不超过10000。
### Output
输出一共有2n行，分别对应输入的n棵二叉树。每行对应树的前序，中序遍历序列。
### Sample Input
    
    
    2
    A(B(D,),C(E,F(,H)))
    A(B,D)
    
### Sample Output
    
    
    ABDCEFH
    DBAECFH
    ABD
    BAD
    
### Tips
请用非递归方式解决，会检查代码。
]]
content[202]=
[[
# 电报编码
### Description
假定用于通讯的电文仅由小写字母组成。下面给出一段电文，试输出进行哈夫曼编码后电文的长度。
### Input
第一行是一个正整数t；
接下来有t组数据，每组数据只有一行，为一段不含空格的、长度不超过2000的字符串。
(0<t<=100)
### Output
每组数据输出一行，为编码后电文的长度。
### Sample Input
    
    
    2
    abababac
    abcdefg
    
### Sample Output
    
    
    12
    20
    
]]
content[203]=
[[
# 星际传送阵
### Description
秦羽的宇宙终于诞生了。现在他要为各个行星之间建立星际传送阵。由于星球太多了，考虑到安全、精力和时间，秦羽需要判断在那些星球之间建星际传送阵才是最省力省时的。
而星际传送阵必须要达到的效果是：任意两个星球之间是有路可循的。有路的定义为：1.两个星球之间存在星球传送阵，则两个星球间有路；2.若A星球和B星球有路，B星
球和C星球有路，则A和C星球有路。已知建立一个星际传送阵所花费的精力是恰好等于该星际传送阵连接的两个星球之间的距离，所花费的时间为1.
### Input
第一行是一个正整数t；
接下来有t组数据，每组数据第一行有两个正整数m, n，表示有m个星球；
接下来n行每行有三个整数o, d, l，表示编号为d的星球和编号为o的星球之间适合建立星际传送阵，其距离为l。
(0<t<=100, 0<m<=1000, 0<=n<=5000, 0<=o, d<m, 0<l<=1000)
### Output
每组数据输出两个数字，分别表示为该种宇宙建立满足要求的星际传送阵群所花费的最少精力和最少时间。
### Sample Input
    
    
    1
    3 2
    0 1 1
    0 2 1
    
### Sample Output
    
    
    2 2
    
]]
content[204]=
[[
# Makefile Ⅱ
### Description
在linux环境下有过较多项目经验的人都应该知道Makefile文件。
一个工程中的源文件不计数，其按类型、功能、模块分别放在若干个目录中，makefile定义了一系列的规则来指定，哪些文件需要先编译，哪些文件需要后编译，哪些文
件需要重新编译，甚至于进行更复杂的功能操作，因为 makefile就像一个Shell脚本一样，其中也可以执行操作系统的命令。 --百度百科
为了简化问题，我们把makefile的结构简化如下：
令0、1、2、3、4都是文件编号，
0 3 1 2 3
表示要编译0，则必须保证三个文件已经编译，且这三个文件编号分别是1、2、3；
1 0
表示1可以直接编译。
编号小的文件优先被编译。
下面给出一个makefile内容，请你输出所有文件编译的顺序。
### Input
第一行是一个正整数t；
接下来有t组数据，每组数据第一行有一个正整数m，表示有m个文件；
接下来m行，每行的数据格式如上所述。保证每一个文件的编译依赖都给出。
0<t<100, 0<m<100，文件编号从0到m-1.
### Output
每组数据输出一行，从左到右分别是编译的先后顺序，每两个编号之间用空格隔开。
若不能完成编译，输出“Logic error!”。
### Sample Input
    
    
    1
    3
    1 2 0 2
    0 0
    2 0
    
### Sample Output
    
    
    0 2 1
    
]]
content[205]=
[[
# 水水的最短路径
### Description
水水得了一种奇怪的病。当她动的时候一定要到达目的地才会停止。她每走单位距离所消耗的体力为a单位。出发时，a为1；每经过一个村庄，a的值就会增加1.这种病严重
地限制了水水的行动自由，她希望治好这种病。一个偶然的机会，她得知k村落有一个神医可以帮她治好这种怪病。可是神医脾气奇特，不肯屈架来救，于是她只好亲自前去求医
。可是一旦水水的体力低于0的时候，她就会香消玉殒。而如果她的体力太低的话，神医就会很不高兴，然后就不帮她治病了。（神医就这样。。。）所以，请你帮帮她，找到一
条近道，使得水水到达该村时身体能保留有最多的体力。
### Input
第一行是一个正整数t；
接下来有t组数据，每组数据第一行有三个正整数m, n, k，表示有m个村落，n条道路以及水水的初始体力为k。
接下来n行，每行有三个整数a、b、c，分别表示编号为a和编号为b的村落之间存在着一条道路，道路长度为c。
接下来1行，为两个非负整数，分别表示水水所在的村落编号和神医所在的村落编号。
0<t<100, 0<m<100, 0<n<1000, 0<c<100, 0<k<1000， 文件编号从0到m-1.
### Output
每组数据输出一行，若水水可以顺利到达，则输出她能保留的最大体力；否则输出“What a poor girl!"。
### Sample Input
    
    
    1
    3 3 5
    1 2 2
    0 1 1
    0 2 6
    0 2
    
### Sample Output
    
    
    0
    
]]
content[206]=
[[
# 魔术师
### Description
黑羽盗一是一位世界著名的魔术师。（什么？你不认识？他就是黑羽快斗的老爸。你也不认识黑羽快斗？？？哦，对了，他的身份（怪盗基德）可是个秘密。别声张啊~~~）有
一次他给小快斗变魔术。他准备了10000张卡片，每张卡片上都有一个唯一的数字。他让快斗抽出n张卡片，按照卡片上数字的大小顺序排成一行。盗一背对着这些卡片，让
快斗随便说一个数字，伟大的魔术师黑羽盗一总是能说出这个数字在这行卡片中的位置。快斗问了m遍，盗一没有失误过一次。而他的秘诀就是——他除了是一个伟大的魔术师之
外，还是一个伟大的程序员。
现在，轮到你来重现这个伟大的魔术！！！！！！
### Input
第一行一个整数表示数据的组数（多组数据），对于每组数据第一行有两个整数 n (1 ≤ n ≤ 10000) ，m ( 1 ≤ m ≤ n)
。第二行是一个长度为n 的严格单调递增的整数序列。第三行有 m 个询问，每个询问包括一个整数。
### Output
对于每个询问输出一行，如果该整数在序列中则返回它是序列中的第几个数，否则返回-1。
### Sample Input
    
    
    1
    5 3
    1 2 3 4 5
    2 4 6
    
### Sample Output
    
    
    2
    4
    -1
    
]]
content[207]=
[[
# 排序二叉树
### Description
根据输入的int 数组建立一棵二叉排序树，然后根据指令进行相应的操作。指令只有两种Insert x, Delete x.不考虑空树的情况。
Insert x 指令需要你将x插入到建好的二叉排序树中（允许存在相同元素）
Delete x 指令需要你将值为x的结点删除（只删除一个，而且不保证x一定在二叉排序树中）
### Input
第一行为测试数据的组数n,
下面有n组测试数据。对于每组测试数据，第一行为用空格隔开的int数列，数量不超过1000，你需要用这个数据初始化一棵排序二叉树，下面一行为指令数m,
接下来的m行为m个指令。格式按照题目描述。数据均为int型。
### Output
输出一共有n行，对应每组测试数据，在所有的指令都执行完后，把当前的排序二叉树中序输出，元素之间用空格隔开。
### Sample Input
    
    
    1
    1 3 5 2
    2
    Insert 4
    Delete 5
    
### Sample Output
    
    
    1 2 3 4
    
### warning
本题必须用建立二叉排序树的方式做，会检查代码。
]]
content[208]=
[[
# 哈希查找
### Description
根据输入的int 数组建立哈希表，然后查找是否存在相应元素。
### Input
第一行为测试数据的组数n, 下面有n组测试数据。对于每组测试数据，第一行为用空格隔开的int数列，数量不超过1,000,000，下面一行为查找数目m,
接下来的m行为m个需要查找的数（int型）。
### Output
每组测试数据输出m行，如果存在相应的元素，输出“Yes.”，否则输出“No.”。
### Sample Input
    
    
    1
    1 2 4 5 3 6
    2
    1
    7
    
### Sample Output
    
    
    Yes.
    No.
    
### Tips
哈希吧， 少年们。
]]
content[209]=
[[
# 内排序（一）
### Description
给你一堆数，请你用最快的速度把它们按非递减的顺序重新输出。
### Input
第一行一个整数表示数据的组数（不超过100），每组数据包括一行，为待排序的数（个数不超过10000）。所给出的都是整数。
### Output
每组数据输出一行，为排好序的数，每个数之间用空格隔开。
### Sample Input
    
    
    1
    2 1 3
    
### Sample Output
    
    
    1 2 3
    
]]
content[210]=
[[
# 内排序（二）
### Description
给你一堆数，请你用最快的速度把它们按非递减的顺序重新输出。
### Input
第一行一个整数表示数据的组数（不超过100），每组数据包括一行，为待排序的数（个数不超过10000）。所给出的都是整数。
### Output
每组数据输出一行，为排好序的数，每个数之间用空格隔开。
### Sample Input
    
    
    1
    2 1 3
    
### Sample Output
    
    
    1 2 3
    
### Hint
估计快排过不了。
]]
content[211]=
[[
# 内排序（三）
### Description
给你一堆学生的id和成绩，请你用最快的速度把学生按照成绩从低到高排好序，并重新输出此时学生的id。
注意，如果某个学生的id在原序列中位于另外某个学生的id之前，则排好序后，该顺序应当得到保持，除非前者的成绩高于后者。
### Input
第一行一个整数表示数据的组数（不超过100），每组数据包括一行，为2n个数（n不超过10000），按照成绩、id、成绩、id的顺序排列。所给出的都是非负整数
。
### Output
每组数据输出一行，为排好序的id，每个id之间用空格隔开。
### Sample Input
    
    
    1
    2 2 1 0 3 1
    
### Sample Output
    
    
    0 2 1
    
]]
content[212]=
[[
# 某航擂台赛
### Problem Description
某航某日举办了某擂台赛，具体比赛内容保密。
共有n支队伍参加比赛，分别编号为0，1，2。。。。n-1，已知它们之间的实力对比关系，存储在一个二维数组h[n][n]中，h[i][j]
的值代表编号为i，j 的队伍中更强的一支。所以h[i][j]=i 或者j，现在给出它们的出场顺序，并存储在数组o[n]中，
比如o[n] = {1,3,5,6,2......}，那么第一轮比赛就是1对3， 5对6。.......
胜者晋级，败者淘汰，下一轮由上一轮的胜者按照出场顺序，再依次两两比，比如可能是1对5,直至出现第一名。
当比赛队伍数量为奇数时，最后一个队伍轮空，直接晋级。
### Input
输入数据第一行为数组的组数T。每组数据第一行为参加比赛的队伍数量n(1<n<=100)，接下来的n行为n*n的二维数组，表示实力对比关系，最后一行是出场顺序
。
### Output
每组数据输出第一名编号。
### Sample Input
    
    
    1
    6
    0 1 2 3 0 0
    1 1 2 1 1 1
    2 2 2 2 2 2
    3 1 2 3 3 3
    0 1 2 3 4 5
    0 1 2 3 5 5
    1 3 4 2 0 5
    
### Sample Output
    
    
    2
    
]]
content[213]=
[[
# 连续数列之和
### Problem Description
给定正整数n，要求输出所有和为n的连续正整数序列。（序列中任何元素不能超过n）。
例如8+9+10+11+12=11+12+13+14=50，所以8 9 10 11 12和11 12 13 14为50的连续正整数序列。
### Input
输入多组数据。每组数据为1行，为正整数n(3<n<=1000000)。
### Output
每组数据输出所有和为n的连续正整数序列，元素之间用空格隔开。当n不存在连续正整数序列时，输出“No
Exist.”。当n存在多组连续正整数序列时，按照第一个元素从小到大的顺序输出。
### Sample Input
    
    
    5
    8
    99
    
### Sample Output
    
    
    2 3
    No Exist.
    4 5 6 7 8 9 10 11 12 13 14
    7 8 9 10 11 12 13 14 15
    14 15 16 17 18 19
    32 33 34
    49 50
    
]]
content[214]=
[[
# 图的DFS遍历
### Description
请定一个无向图，顶点编号从0到n-1，用深度优先搜索(DFS)，遍历并输出。遍历时，先遍历节点编号小的。
### Input
输入第一行为整数n（0< n <100），表示数据的组数。
对于每组数据，第一行是两个整数k,m（0< k <1000，0<m<k*k），表示有m条边，k个顶点。
下面的m行，每行是空格隔开的两个整数u，v，表示一条连接u，v顶点的无向边。
### Output
输出有n行，对应n组输出，每行为用空格隔开的k个整数，对应一组数据，表示DFS的遍历结果。
### Sample Input
    
    
    1
    5 4
    0 1
    0 2
    3 0
    4 0
    
### Sample Output
    
    
    0 1 2 3 4
    
### Hint
这是非联通图。
]]
content[215]=
[[
# 表情输出
## Problem Description
请输出以下表情。
(^V^)
O>_<O
\^O^/
o>_<o
~>_<~
## Input
无
## Output
输出题目描述中的表情，每行一个。
## Sample Input
    
    
    无
    
## Sample Output
    
    
    (^V^)
    O>_<O
    \^O^/
    o>_<o
    ~>_<~
    
    
]]
content[216]=
[[
# 偶数求和
## Problem Description
输入n个正整数，请计算出n个数中所有偶数之和。
## Input
第一行一个整数t，代表数据组数。
接下来t行，每行第一个数为个数n(1<=n<=10)，接下来n个正整数ai(1<=i<=n, 1<=ai<=100)
## Output
对于每组数据，输出一行，n个数中偶数之和。
若n个数中没有偶数，输出-1。
## Sample Input
    
    
    2
    3 1 2 3
    4 2 3 4 5
    
## Sample Output
    
    
    2
    6
    
    
## Hint
c++中%为取余运算符。
例如：5%3的结果为2，因为5除以3的余数是2。
]]
content[217]=
[[
# GCD&LCM
## Problem Description
输入两个正整数a,b，请输出a,b的最大公约数与最小公倍数。
## Input
第一行一个整数t，代表数据组数。
接下来t行，每行两个正整数a,b(1<=a,b<=1000)。
## Output
对于每组数据，输出一行，最大公约数和最小公倍数，用一个空格隔开。
## Sample Input
    
    
    2
    2 3
    5 10
    
## Sample Output
    
    
    1 6
    5 10
    
    
]]
content[218]=
[[
# Ryan's Travel
## Problem Description
Ryan是个社交狂，他最喜欢做的事情就是去朋友家拜访，然后用[街旁](http://www.jiepang.com/)签到，来证明他去过的地方有多么的多。
就像是下面那个样子：
![<img:http://ww3.sinaimg.cn/bmiddle/5c707194jw1dxyh7fejx9j.jpg>](http://ww3.s
inaimg.cn/bmiddle/5c707194jw1dxyh7fejx9j.jpg)
为了最大可能的扩展自己的签到地图的范围，他决定去距离他家最远的朋友家拜访。
但是他的朋友太多了，你能帮他计算出去哪个朋友家可以完成他的计划吗？
## Input
第一行一个整数t，代表数据组数。
接下来会有t组数据，每组数据有n+2行。
第1行为两个整数a,b(-1000<=a,b<=1000)表示Ryan家的坐标(a,b)。
第2行为一个整数n，代表Ryan共有n个朋友(1<=n<=10000)。
第3~n+2行每行两个整数p,q，组成一个坐标(p,q)，代表Ryan的n个朋友的家的坐标(p,q)。
## Output
输出共t行。
每行为一个数字i，代表Ryan会去拜访他n个朋友中的第i个。
若存在两个或多个朋友距离Ryan家同样远且都是最远，请输出i最小的一个。
## Sample Input
    
    
    1
    0 0
    3
    1 1
    -3 4
    2 0
    
## Sample Output
    
    
    2
    
    
## Hint
    
    
    测试样例中Ryan家坐标为(0,0)
    
    3个朋友家分别为(1,1), (-3,4), (2,0)
    
    显然他家距离第2个朋友家距离为5，是3个朋友中距离他家最远的。
    
    所以答案为2
    
]]
content[219]=
[[
# Darkness's Lunch
## Problem Description
话说Darkness
Wong是个很懒的人。某日，他提出要和自己的室友玩一个游戏，输的人就要去食堂买午饭。既然是自己提出的游戏，自然不能输给别人，所以他想让你帮他赢得游戏。
游戏的规则是这样的：两个人依次从1开始数数并将其读出。当某人数到的那个数为质数时，则不该读出那个数字，而是读出“prime”。最先读错的人输掉比赛。
现在，Darkness Wong会告诉你他数到的数字，而你告诉他应该读出什么。
## Input
第一行一个整数t，代表数据组数。
接下来t行，每行一个正整数n(1<=n<=10000)。
## Output
对于每组数据，输出一行，为应该读出的内容。
## Sample Input
    
    
    2
    7
    10
    
## Sample Output
    
    
    prime
    10
    
    
]]
content[220]=
[[
# Darkness's Card
## Problem Description
Darkness Wong还是一个很健忘的人。国庆假期回来以后，他便忘记了自己的校园卡密码。为了不耽误每日的吃饭大计，他只好求助于你。
为了防止忘记密码，Darkness Wong记得在自己的校园卡上写下了两个正整数a和b，他还记得自己的密码是[a,b]中Darkness数的个数。
所谓Darkness数，就是从左到右读与从右到左读都一样的数，例如121，12321。
现在告诉你写在卡上的两个正整数a,b，请计算出该校园卡的密码。
## Input
第一行一个整数t，代表数据组数。
接下来t行，每行两个正整数a,b(1<=a,b<=100000)。
## Output
对于每组数据，输出一行，为校园卡的密码。
## Sample Input
    
    
    2
    10 100
    1 100
    
## Sample Output
    
    
    9
    18
    
    
]]
content[221]=
[[
# Calendar Calc
## Problem Description
给出年、月，请计算该月有多少天。
## Input
第一行一个整数t，代表数据组数。
接下来t行，每行两个整数Y和M，用一个空格隔开，分别代表年和月。
保证读入数据合法。
## Output
对于每组数据，输出一行，该月有多少天。
## Sample Input
    
    
    2
    2012 10
    2000 2
    
## Sample Output
    
    
    31
    29
    
    
]]
content[222]=
[[
# Print Diamond
## Problem Description
Ryan最近去参加了AIESEC RIC，大会上认识了好多妹纸。
为了搞定妹纸，他决定送妹纸一颗钻石。
![<img:http://ww2.sinaimg.cn/bmiddle/5c707194jw1dxyhyyrp67j.jpg>](http://ww2.s
inaimg.cn/bmiddle/5c707194jw1dxyhyyrp67j.jpg)
但是钻石实在是太贵了，他只好请你帮他画一个送给妹纸。
由于有好多妹纸，并且每个人的手不一样大，所以请你按照他说的各个尺寸去画。
## Input
第一行一个整数t，代表要画的钻石的数量。
接下来t行，每行一个正整数n(1<=n<=2000)，表示钻石的对角线的长度，输入保证n为奇数。
为了方便去画，我们用菱形代替一颗钻石。
## Output
对于每组数据，输出这颗钻石。钻石用*（星号）来填充。
## Sample Input
    
    
    2
    3
    5
    
## Sample Output
    
    
     *
    ***
     *
      *
     ***
    *****
     ***
      *
    
    
]]
content[223]=
[[
# Super Calendar Calc
## Problem Description
给出年、月、日，请该天为星期几。
## Input
第一行一个整数t，代表数据组数。
接下来t行，每行三个整数Y、M和D，用一个空格隔开，分别代表年、月、日。
保证读入数据合法。
## Output
对于每组数据，输出一行，该天为星期几。
请用Sun, Mon, Tue, Wed, Thu, Fri, Sat输出你的答案。
## Sample Input
    
    
    2
    2012 10 18
    1949 10 1
    
## Sample Output
    
    
    Thu
    Sat
    
    
]]
content[224]=
[[
# 送分啦
### Description
Jason同学的好友Lily看见大家上次上机被虐于心不忍，于是决定这次给大家送点分数。当然，分数不是白送的，大家还是要帮他解决点小问题的^_^
给你n个数字(0 <= n <= 100000)，请你自己实现一个排序函数对其进行排序。
为了避免误会，请不要在你的程序中出现sort这个单词! ( 具体说就是你的程序不要出现连续四个字母为sort )
### Input
多组数据
首先是一个数n，表示要排序的数有n个 (0 <= n <= 100000)
接着是n个数，分别为n个待排序的数。
### Output
从小到大输出排序后的n个数，之间用空格分隔(最后一个数后有没有空格均可)。
### Sample Input
    
    
    3
    1 2 3
    3
    3 2 1
    
### Sample Output
    
    
    1 2 3
    1 2 3
    
]]
content[225]=
[[
# Choice
### Description
十一国庆期间，Courage要和基友们去登山露营。简单计划了一下然后就去买了个登山包开始装东西。露营的话要带的东西那是非常多，比如帐篷睡袋水壶蚊香食物药品手
机等等等等……当然Courage是很喜欢打麻将的，所以还要带上电灯和麻将……但是要把所有东西都拿上估计再有一个Courage也是不行的，必须要舍弃一些物品。
这当然事件痛苦的事，为了做出理性的选择，Courage先给了每个物品一个重要程度（比如手机当然是非常重要的），然后称了物品的重量，他希望在自己能够承受的范围
内尽可能拿重要的东西。即使这样一时间也不好决定，于是他要求助于你。
### Input
第一行为整数t，表示数据组数
每组数据第一行两个整数n、p，表示物品总数和Courage最多能够拿走的物品总重量
接下来每行两个整数w、v，表示该物品的重量和重要程度
n，p，w，v均不超过1000
### Output
对于每组数据，输出一个整数s，表示Courage最多能够拿走重要程度总和为s的物品
### Sample Input
    
    
    1
    3 10
    5 5
    6 7
    4 4
    
### Sample Output
    
    
    11
    
]]
content[226]=
[[
# 分送得还不够
### Description
为了让大家的上机更好看点，在Jason好友Lily的强烈要求下，再给大家送点分。
根据以往的临床记录，某种诊断癌症的试验具有如下的效果：癌症病人试验反应为阳性的概率为P1, 非癌症病人被诊断为阴性的概率为P2，
现已知癌症的患病率为P3，求实验反映为阳性的患者患有癌症的概率。
### Input
多组数据
三个实数P1, P2, P3, 之间用空格隔开
### Output
一行，一个实数，保留3位小数。
### Sample Input
    
    
    1.00 1.00 0.87
    
### Sample Output
    
    
    1.000
    
### Hint
概率书上原题
]]
content[227]=
[[
# Tidy
### Description
要带的东西挑好了，但要把它们都放进登山包也是不容易的事。Courage非常不善于这种事，他把东西放了一些以后发现包竟然已经装满了……这不科学！按道理说登山包
的容量是肯定够的，那么应该是某些物品放的不好导致的。众所周知，大件物品还是放在下面比较好，而且大小物品不要交替放置，Courage现在按从下到上的顺序记录了
包中物品的体积，他想知道哪些东西放的不好（某件物品放的不好就是指有体积更大的物品放在该物品的上面）。这事当然也要你来帮忙。
### Input
第一行为整数t，表示数据组数
每组数据第一行一个整数n，表示物品总数，n<=100000
接下来每行一个整数v，第i行表示物品i的体积，v<=10^9
### Output
对于每组数据，先输出一个整数m，占一行，表示有m件物品放的不好
接下来m行，每行为两个整数k、w，表示第k件物品放的不好，且有w个比它大的物品放在它上面，请将k按从小到大的顺序输出
### Sample Input
    
    
    1
    3
    2
    3
    2
    
### Sample Output:
    
    
    1
    1 1
]]
content[228]=
[[
# Mahjong
### Description
历尽千辛万苦，Courage和基友们总算爬到了半山腰，第一天晚上大家都很兴奋，决定打通宵麻将。
Courage和基友们打的麻将比较简单，以下三种牌各有4张：
筒子牌![<img:/richtext/res/131/tong.png>](/richtext/res/131/tong.png)分别用1s~9s表示
条子牌![<img:/richtext/res/132/tiao.png>](/richtext/res/132/tiao.png)分别用1m-9m表示
万子牌![<img:/richtext/res/133/wan.png>](/richtext/res/133/wan.png)分别用1p~9p表示
和牌的方法也比较简单：每人手里有13张牌，如果此时其它牌中有另一张牌加上他手里的牌，能够组成一对牌（将牌）和四副牌（三张连续的同花色牌或者三张相同的同花色牌
），那么他就可以和那张牌。
例如，如果一个人手里有
1s 2s 3s 1p 2p 3p 1m 2m 3m 4m 5m 6m 9m或者
1s 1s 1s 2s 2s 2s 3m 3m 3m 5m 5m 5m 9m
他都可以和9m这张牌
另外，还有一种特殊的和牌方法，当一个人手里的牌加上另一张牌能够组成不同的七对牌，这种方法叫7连对。
无奈经过一天的劳累，Courage有点意识模糊，打牌老是要输，他想要你帮他写个程序，在他可以和牌的时候能够及时提醒他。也就是告诉他手里的牌能够和哪些牌。
### Input
第一行为整数t，表示数据组数
每组数据占第一行，为Courage手里的13张牌
### Output:
对于每组数据，如果Courage能够和牌，先输出一个整数表示他能和多少张牌，然后依次输出这些牌，请按题目所给顺序输出这些牌。
如果Courage还不能和牌，请输出"Nooten"。
### Sample Input:
    
    
    2
    1s 2s 3s 1p 2p 3p 1m 2m 3m 4m 5m 6m 9m
    1s 2s 3s 1p 2p 3p 1m 2m 4m 5m 7m 7m 7m
    
## Sample Output:
    
    
    1 9m
    Nooten
    
]]
content[229]=
[[
# Yu-Gi-Oh
### Description
Jason和程序雄都很喜欢玩游戏王(Yu-Gi-Oh)，同时他们都很喜欢编程。他们商量着自己开发一款游戏王的游戏。本来想把这个任务直接交给你完成的。但是因为
他们不太确定大家的编程水平，于是决定先出一道简单的题来筛选下人选。题目是这样的:
Jason手上有n个不同系列的牌组，每个牌组i有num[i]张卡牌.Jason想知道从第i个牌组到第j个牌组总共有多少张卡牌。
### Input
首先是一个数T，有T组数据
接下来是2个数n k表示有n个牌组，查询k次 (0 <= n <= 100000)
接着是n个数，第i个数表示牌组i有多少张卡牌。
接下来k行，每行2个数q r，查询从第q个牌组到第r个牌组总共有多少张卡牌(保证q<=r，结果模上20121024)
### Output
对每次查询输出相应的结果
### Sample Input
    
    
    1
    5 3
    1 2 3 4 5
    1 5
    2 4
    1 1
    
### Sample Output
    
    
    15
    9
    1
    
]]
content[230]=
[[
# Draw Something
## Problem Description
Darkness Wong很擅长绘画。某日他希望通过一个叫draw something的游戏给她的女朋友发一些类似“521”的数字。
Darkness Wong不能在游戏中直接写下这些数字，于是他想出了一种方法表达。在图中画出若干个正方形，这些正方形的面积之和就是他想要表达的数字。
给出Darkness Wong画出的所有正方形，请计算出这张图里的数字。
## Input
多组测试数据。
每组数据包含两行。第一行一个正整数N(1<=N<=100)，表示正方形的个数。
第二行包含N个正整数ai(1<=ai<=100),表示每个正方形的边长。没有正方形会重叠。
读入数据以N=0结束。
## Output
对每组数据，输出一行，总面积。
## Sample Input
    
    
    4
    1 2 3 4
    3
    3 3 3
    0
    
## Sample Output
    
    
    30
    27
    
    
]]
content[231]=
[[
# Stairs
## Problem Description
Darkness Wong每天都在思考一个很数学的问题。宿舍楼一楼到三楼一共有n级台阶，如果每步可以走一步也可以走两步，从一楼到三楼一共有多少种走法。
为了验证这个问题，Darkness Wong准备每天尝试一种不同的走法，请问他要走多少天才能把所有方法都走完呢？
## Input
多组测试数据。
每组测试数据包含一行。一个正整数N(0<=N<=40)，表示台阶数。
## Output
对于每组数据，输出一行，Darkness Wong需要的天数。
## Sample Input
    
    
    3
    5
    
## Sample Output
    
    
    3
    8
    
    
]]
content[232]=
[[
# Lazy Ryan
## Problem Description
Ryan是一个生活在海边的矮穷挫= =
![<img:http://ww3.sinaimg.cn/bmiddle/5c707194jw1dyergpgu8ej.jpg>](http://ww3.s
inaimg.cn/bmiddle/5c707194jw1dyergpgu8ej.jpg)
他唯一的收入就是靠打渔赚的钱
但是Ryan是个特别懒的家伙，他总是“三天打渔，两天晒网”
Ryan又是个很没有时间观念的人，他很想知道自己哪天打渔，哪天晒网。聪明的你能帮帮他么？
## Input
多组测试数据。
每组测试数据包含一行。三个正整数Y, M, D，表示一个日期。
## Output
对于每组数据，输出一行，为这天Ryan是“打渔”（用"Fishing"表示）还是“晒网”（用"Drying"）。
## Sample Input
    
    
    2012 11 1
    2012 11 9
    
## Sample Output
    
    
    Fishing
    Drying
    
    
## Hint
    
    
    Ryan的工作从今天开始，即他会在2012年11月1日开始他“三天打渔，两天晒网”的第一天打渔。
    
]]
content[233]=
[[
# Ryan's Hanoi
## Problem Description
Ryan是个酷爱旅游的人。
有一天他来到了印度，见到了一种奇妙的玩具。
![<img:http://ww1.sinaimg.cn/bmiddle/5c707194jw1dyerv1edfyj.jpg>](http://ww1.s
inaimg.cn/bmiddle/5c707194jw1dyerv1edfyj.jpg)
玩具的名字叫做汉诺塔，规则是把圆盘按大小顺序重新摆放在另一根柱子上。
并且规定，在小圆盘上不能放大圆盘，在三根柱子之间一次只能移动一个圆盘。
为了不给祖国的形象抹黑，他只好请你来帮忙。你能帮助他计算出每一步怎样走么？
## Input
多组测试数据。
每组测试数据包含一行。一个整数N(1<=N<=20)，表示汉诺塔的第一根杆上共有N个盘子。
盘子自上至下编号1~N。
## Output
对于每组数据，输出将所有盘子移动到第三根柱子上的每一步过程。每两步中间用回车换行。
我们用A表示第一根柱子，B表示第二根柱子，C表示第三根柱子
1: A -> C 表示将第一根柱子上编号为1的盘子移动到第三根柱子上
## Sample Input
    
    
    3
    
## Sample Output
    
    
    1: A -> C
    2: A -> B
    1: C -> B
    3: A -> C
    1: B -> A
    2: B -> C
    1: A -> C
    
    
## Hint
    
    
    本题使用cout输出会超时，请使用printf函数。
    
]]
content[234]=
[[
# Ryan's Double Factorial
## Problem Description
Ryan乘时光机来到了远古时代。
他在地上看到了这样一幅神秘的图样，好像是要解决一个问题。
![<img:http://acm.hust.edu.cn/image/p1344.jpg>](http://acm.hust.edu.cn/image/p
1344.jpg)
“这一定是甲骨文吧！”Ryan心里想。
这时，坐在电脑前你的一定呵呵了，请你帮愚蠢的Ryan解决这问题吧。
## Input
多组测试数据。
每组测试数据包含一行。一个整数N（0<=N<=18）。
## Output
对于每组数据，输出一行，为Ryan需要的答案。
## Sample Input
    
    
    3
    4
    
## Sample Output
    
    
    3
    8
    
    
## Hint
    
    
    关于“甲骨文”的几点解释：
    
    even偶数
    
    odd奇数
    
]]
content[235]=
[[
# 2-way Assemble Line
### Description:
某汽车厂有2个装配线，每个装配线有n个装配站，装配线对应的装配站执行相同的功能，但所用的时间可能不同。经过第i条(i = 1, 2)装配线的第j个(1 <=
j <= n)装配站所花的时间为Aij。从第i个条流水线的第j个装配站，移到第j+1个装配站的时间为1, 而移到另外一个装配线的下一个装配站则需要时间Tij
(j >= 1)。
如果汽车的装配需要顺次经过所有装配站，现在已知装配之间Aij和转移时间Tij，问装配一辆汽车所需要的最短时间？
### Input:
多组测试数据
对于每组测试数据，首先是一个正整数n，表示装配站的个数。
然后是两个矩阵A(2行n列), T(2行n列)。
以上所有数都是 1 - 100之间的整数。
### Output:
每组测试数据，先输出一行为一个整数，表示所需的最短时间，然后第二行依次输出每步是在哪条装配线上完成的。
数据保证只有一个最优方案，输出详见样例。
### Sample Input:
    
    
    2
    
    1 2 
    3 4
    
    5 6
    7 8
    
    
### Sample Output:
    
    
    4
    11
    
]]
content[236]=
[[
# MatrixChainMultiplication
### Description:
矩阵乘法大家都应该很熟悉了，矩阵乘法中结合律是成立的，即
(AB)C = A(BC)
但是选择不同的运算顺序，计算矩阵链乘法的复杂度是不一样的。
假设A是10*30的矩阵，B是30*5的矩阵，C是5*60的矩阵，那么
(AB)C = (10*30*5)+(10*5*60) = 1500+3000 = 4500次运算，
A(BC) = (30*5*60)+(10*30*60) = 9000+18000 = 27000次运算，
显然第一种方案计算次数少的多。
现在给你一个矩阵链，问将矩阵链中所有矩阵相乘，最少要多少次运算？
### Input:
多组数据
每组数据，首先是一个整数n，表示共有n个矩阵
接下来n行，每行两个整数ri，ci，表示矩阵Ai的行和列数
其中1 < n <= 100, 1 <= ri, ci <= 100, ci = ri+1
### Output:
对每组数据，先输出一行为一个整数，表示最少需要的运算次数
接下来一行输出最少运算次数的方案，每两个矩阵相乘都用“()”括起来，详见样例
数据保证只有一种最优方案
### Sample Input:
    
    
    3
    10 30
    30 5
    5 60
    
    
### Sample Output:
    
    
    4500
    ((A1A2)A3)
    
]]
content[237]=
[[
# SubmatrixSum
### Description:
本题由PL大神友情提供~
给定一个矩阵，求两个k*k子矩阵的最大和
注意这两个子矩阵不能有公共部分
### Input:
最开始一个整数t表示数据组数
每组数据先为两个整数n，m，表示矩阵的行数和列数
接下来n行，每行m个数，第i行第j个数表示矩阵中的元素Aij
最后一个整数k，表示子矩阵为k*k大小
数据保证原矩阵中存在至少两个k*k的不重合的子矩阵
以上所有整数均不超过1000
### Output:
每组数据输出一个整数，表示两个k*k子矩阵的最大和
### Sample Input:
    
    
    1
    3 3
    1 2 3
    3 2 1
    2 3 4
    1
    
    
### Sample Output:
    
    
    7
    
]]
content[238]=
[[
# 3-way Assemble Line
### Description:
某汽车厂有3个装配线，每个装配线有n个装配站，装配线对应的装配站执行相同的功能，但所用的时间可能不同。经过第i条(i = 1, 2，3)装配线的第j个(1
<= j <= n)装配站所花的时间为Aij。
从第i个条流水线的第j个装配站，移到第j+1个装配站的时间为1,跨线移动规则如下
从1号线移动到2号线T[1][j],移动到3号线时间T[2][j]
从2号线移动到1号线T[3][j],移动到3号线时间T[4][j]
从3号线移动到1号线T[5][j],移动到2号线时间T[6][j]
如果汽车的装配需要顺次经过所有装配站，现在已知装配之间Aij和转移时间Tij，问装配一辆汽车所需要的最短时间？
### Input:
多组测试数据
对于每组测试数据，首先是一个正整数n，表示装配站的个数。
然后是两个矩阵A(3行n列), T(6行n列)。
以上所有数都是 1 - 100之间的整数。
### Output:
每组测试数据，先输出一行为一个整数，表示所需的最短时间，然后第二行依次输出每步是在哪条装配线上完成的。
数据保证只有一个最优方案，输出详见样例。
### Sample Input:
    
    
    2
    
    1 2 
    3 4
    5 6
    
    7 8
    9 10
    11 12
    13 14
    15 16
    17 18
    
    
### Sample Output:
    
    
    4
    11
    
]]
content[239]=
[[
# Darkness's Chocolates
## Problem Description
Darkness Wong很喜欢吃巧克力。
某日他买了一些巧克力，吃了其中的一半，感觉不够于是又多吃了一块。第二天又吃了剩下的一半零一块，以后每天如此。
到了第N天，Darkness Wong正准备吃巧克力，突然发现只剩下一块了！在诧异之余他很想知道最初自己买了多少块巧克力。
## Input
多组测试数据。
每组数据只有一行，天数N(2<=N<=20)。
## Output
对每组数据，输出一行，最初有多少块巧克力。
## Sample Input
    
    
    3
    4
    
## Sample Output
    
    
    10
    22
    
    
## Hint
可使用递归完成
]]
content[240]=
[[
# Ryan's Hanoi Again
## Problem Description
还记得上次Ryan去印度旅游时遇到的汉诺塔么？
![<img:http://ww1.sinaimg.cn/bmiddle/5c707194jw1dyerv1edfyj.jpg>](http://ww1.s
inaimg.cn/bmiddle/5c707194jw1dyerv1edfyj.jpg)
在苦思冥想研究了一周后，Ryan终于掌握了汉诺塔的奥妙！
不过，这时一个印度小盆友蹦出来问他：“你会把所有盘子移到第二根柱子上么？”
Ryan瞬间就给跪了。就在这时！你出现了，拯救了Ryan也受到了Ryan的膜拜！
## Input
多组测试数据。
每组测试数据包含一行。一个整数N(1<=N<=20)，表示汉诺塔的第一根杆上共有N个盘子。
盘子自上至下编号1~N。
## Output
对于每组数据，输出将所有盘子移动到第二根柱子上的每一步过程。每两步中间用回车换行。
我们用A表示第一根柱子，B表示第二根柱子，C表示第三根柱子
1: A -> B 表示将第一根柱子上编号为1的盘子移动到第二根柱子上
## Sample Input
    
    
    3
    
## Sample Output
    
    
    1: A -> B
    2: A -> C
    1: B -> C
    3: A -> B
    1: C -> A
    2: C -> B
    1: A -> B
    
    
## Hint
    
    
    本题使用cout输出会超时，请使用printf函数。
    
]]
content[241]=
[[
# Another Stairs
## Problem Description
由于Darkness Wong在上一题里吃了太多的巧克力，他需要更多锻炼。
前一次上机中Darkness Wong习惯在上楼梯时一次走一步或两步。为了增加锻炼，他改变了上楼梯的方式。
在新的方式中，他依然可以一次走一步或者两步，也可以一次向上跳三步。
现在，Darkness Wong想知道在使用了新的方式后，从一楼到三楼有多少种不同的走法。
对题目有任何疑问，请参阅上周上机题“Stairs”。
## Input
多组测试数据。
每组测试数据包含一行。一个正整数N(1<=N<=50)，表示台阶数。
## Output
对于每组数据，输出一行，不同的走法数。
## Sample Input
    
    
    3
    5
    
## Sample Output
    
    
    4
    13
    
    
## Hint
数据量较大，推荐使用long long类型。
]]
content[242]=
[[
# Ryan's Confusing Words
## Problem Description
Ryan上次来到了远古时代见到了神秘的图样＝ ＝
后来仔细一看，发现原来图样上的东西简直太简单了！只需要用一个式子N!!=N*(N-2)*(N-4)*....和十几行C++代码就能搞定＝ ＝
于是他觉得这个图样弱爆了！所以他来到了另一个图样面前：
![<img:http://ww2.sinaimg.cn/bmiddle/5c707194jw1dymx8xsl4wj.jpg>](http://ww2.s
inaimg.cn/bmiddle/5c707194jw1dymx8xsl4wj.jpg)
“这一定是玛雅文明的遗迹！”Ryan又在自作聪明，于是电脑屏幕前的你又开始呵呵。
快来拯救愚蠢的Ryan，帮他化解这个图样上的难题吧！
## Input
多组测试数据。
每组测试数据包含一行。为图样上第一行出现的两个字母。
对于所有数据保证只出现英文大写字母和小写字母。
对于每组数据保证两个字母一定同为大写或同为小写并且一定不同。
## Output
对于每组数据，输出对应的第二行图样。
## Sample Input
    
    
    IT
    xe
    
## Sample Output
    
    
    IJKLMNOPQRST
    xyzabcde
    
    
]]
content[243]=
[[
# Ping Pong
## Problem Description
Darkness Wong最近对乒乓球比赛的统计数据进行了一些分析，首先将比赛每个球的胜负列成一张表，然后计算在11分制下双方的比赛结果。
比如现在有这么一份记录，(其中W表示Darkness获得一分，L表示Darkness的对手获得一分，E代表比赛结束)：
　　WWWWWWWWWWWWWWWWWWWWWWLWE
在11分制下，此时比赛的结果是Darkness第一局11比0获胜，第二局11比0获胜，正在进行第三局，当前比分1比1。如果一局比赛刚开始，则此时比分为0比0
。
你的程序就是要对于一系列比赛信息的输入（WL形式），输出正确的结果。
## Input
第一行为数据组数T。
每组数据只有一行，比赛记录(由连续的W,L,E组成的字符串，长度<=100，具体含义请参阅题目描述)。
## Output
对每组数据，输出若干行，每一行对应一局比赛的比分(按比赛记录输入顺序)。
## Sample Input
    
    
    1
    WWWWWWWWWWWWWWWWWWWWWWLWE
    
## Sample Output
    
    
    11:0
    11:0
    1:1
    
    
## Hint
乒乓球在11分制下判断一局结束需要同时满足两个条件：
1. 至少有一人分数>=11。
2. 两人之间的分差>=2。
]]
content[244]=
[[
# Ryan's Derivatives
## Problem Description
Ryan最近在阮姐的课上学习了导数= =
有一天阮姐大笔一挥写下了一个多项式：
![<img:http://ww4.sinaimg.cn/bmiddle/5c707194jw1dymz0wkkewj.jpg>](http://ww4.s
inaimg.cn/bmiddle/5c707194jw1dymz0wkkewj.jpg)
然后又大笔一挥写下了另一个东西：
![<img:http://ww2.sinaimg.cn/thumbnail/5c707194jw1dymy6o2ut2j.jpg>](http://ww2
.sinaimg.cn/thumbnail/5c707194jw1dymy6o2ut2j.jpg)
然后说：求出它的表达式。这个当作课后作业= =
数学很烂的Ryan怎么能禁受得住阮姐的轰炸，只好让你来帮助他完成阮姐的课后作业。
## Input
多组测试数据。
每组测试数据包含n＋1行。
第一行为两个整数n, m
接下来n行，每行两个整数，ai和bi
对于每组数据，所有bi非负且均不相同
## Output
对于每组数据，输出一行，为f(x)的m次导数的表达式。
所有系数和指数应符合多项式书写的基本原则。
如：5倍的x四次方 表示为 5x^4
1倍的x 不应表示为 1x^1 而是 x
5x^3+0x^2+(-x)应表示为5x^3-x
输出结果各项顺序与输入一致
## Sample Input
    
    
    4 2
    1 4
    2 3
    3 2
    4 1
    3 1 
    1 5
    -1 1
    1 0
    
## Sample Output
    
    
    12x^2+12x+6
    5x^4-1
    
]]
content[245]=
[[
# Water
### Description:
n个人排队打水，每个人需要时间为ti，那么第k个人等待的时间就一共是t1+t2+...+tk。为了提高效率，请安排一个顺序，使得每个人等待时间总和最少，输出
最少时间T。
### Input:
多组数据，每组数据第一行为整数n，表示有n个人，第二行n个整数ti。
其中n<=10000，ti<=10000
输入直到EOF结束
### Output:
每组数据输出一行，为一个整数T，表示所有人等待时间的和的最小值。
### Sample Input:
    
    
    5
    1 4 3 6 9
    
### Sample Output:
    
    
    50
]]
content[246]=
[[
# Partly Pack
### Description:
有n个物品，价值为ai，体积为vi，每个物品可以取任意比例，背包容量为c，问最大能拿走的物品的总价值。
### Input:
多组数据
第一行为一个整数n，表示共有n件物品
接下来一行一共n个整数ai，表示每个物品价值
接下来一行一共n个整数vi，表示每个物品体积
最后一行一个整数c，表示背包容量。
输入直到EOF结束
其中n<=10000，c<=10000，ai,vi<=1000
### Output:
每组数据输出占一行，为一个实数表示能拿走的物品价值的最大值。
保留到小数点后2位
### Sample Input:
    
    
    4
    2 4 5 1
    3 5 8 0
    6
    
### Sample Output:
    
    
    5.67
]]
content[247]=
[[
# Party
### Description:
Lily和朋友们住在n个不同的地方，恰好有一列火车经过他们所有人的家。
现在他们想安排一个聚会，所有人都到一个地方聚一聚。
现在知道火车在每两个相邻站之间运行的时间，以及每个站附近住了多少人，问聚会安排在哪里能够使每个人路上花的时间和最少？输出最少的时间。
### Input:
多组数据
每组数据第一行为一个整数n，表示有n个不同的地方
接下来一行为n-1个整数，第i个数表示从第i个地方到第i+1个地方的时间
接下来一行n个整数，表示每个地方的人数
其中n<=100000，ti<=20，pi<=20
输入直到EOF结束
### Output:
每组数据输出一行，为一个整数，表示所有人到同一个地方所花费的时间之和的最小值。
### Sample Input:
    
    5
    3 4 7 8
    1 1 1 1 1
    
### Sample Output:
    
    33
]]
content[248]=
[[
# Max Sum
### Description:
给定一个整数序列，要求这样一个子区间[l,r]：对于子区间[i,j]，a[l]+a[l+1]+...+a[r]>=a[i]+a[i+1]+...+a[j]。
其中l<=r,i<=j
### Input:
多组数据
每组数据第一行为一个整数n，表示序列中有n个数
接下来一行为n个整数ai，表示序列中的数
其中n<=100000，-100<=ai<=100
输入直到EOF结束
### Output:
每组数据输出一行，为一个整数，表示区间[l,r]里所有元素的和。
### Sample Input:
    
    
    6
    1 -2 3 -2 1 2
### Sample Output:
    
    4
]]
content[249]=
[[
# Easy LCS
### description
给你两个序列A[0...m-1], B[0...n-1]，求A和B的最长公共子序列C[0...k-1]
也就是求一个最长的C，使得
    
    
    C[0...k-1] = A[I(0), I(1), ..., I(k-1)] = B[J(0), J(1), ..., J(k-1)] 
    其中 0 <= I(i) < m, 0 <= J(i) < n, i = 0...k-1
    对于 i < j, I(i) < I(j), J(i) < J(j)
    
### input
多组测试数据(组数<=20),对于每组测试数据
首先是一行两个正整数m, n
接下来的一行是m个整数A[0], ..., A[m-1]
最后一行是n个整数B[0], ..., B[n-1]
1 <= m, n <= 1000, 0 <= A[i] <= 10000, 0 <= B[j] <= 10000, 0 <= i < m, 0 <= j
< n
### output
每组数据输出形如"Case #?: k"，?为第几组测试数据，k表示最长公共子序列C的长度
### sample input
    
    
    5 4
    1 2 3 4 5
    1 5 2 3
    
    4 4
    1 1 2 2
    2 2 1 1
    
    1 1
    1
    2
    
### sample output
    
    
    Case #1: 3
    Case #2: 2
    Case #3: 0
    
]]
content[250]=
[[
# 最优二叉查找树
### Description:
给定一个由n个互异的关键字组成的序列K=<k1,k2,k3,...,kn>,且关键字有序(因此有k1<k2<...<kn),我们想从这些关键字中构造一颗二叉
查找树。对每个关键字ki,一次搜索为ki的概率为pi。某些搜索的值可能不在K内，因此还有n+1个“虚拟键"d0,d1,d2,...,dn代表不在K内的值。具
体地，d0代表所有小于k1的值，dn代表所有大于kn的值，而对于i=1,2,...,n-1,虚拟键di代表所有位于ki,和ki+1之间的值。对每个虚拟键di
,一次搜索对应于di的概率是qi。
搜索的期望代价
![<img:/richtext/res/142/1.jpg>](/richtext/res/142/1.jpg)
![<img:/richtext/res/143/2.jpg>](/richtext/res/143/2.jpg)
### Input:
多组数据
每组数据，首先是一个整数n(n<=20），含义如上所述
接下来一行n个数,依次为p1,p2,...,pn
然后一行n+1个数,依次为q0,q1,...,qn
保证![<img:/richtext/res/144/3.jpg>](/richtext/res/144/3.jpg)
### Output:
对每组数据，输出最优二叉查找树对应的搜索期望代价，保留小数点后3位
### Sample Input:
    
    
    5
    0.15 0.10 0.05 0.10 0.20
    0.05 0.10 0.05 0.05 0.05 0.10
    
    
### Sample Output:
    
    
    2.750
    
]]
content[251]=
[[
# Easy LIS
### description
给你一个序列A[0...n-1]，求它的最长单调上升子序列
也就是求一个最长的C，使得
    
    
    C[0...k-1] = A[I(0), I(1), ..., I(k-1)] 
    其中 0 <= I(i) < n, i = 0...k-1
    对于 i < j, I(i) < I(j), A[ I(i) ] < A[ I(j) ]
    
### input
多组测试数据(组数<=20),对于每组测试数据
首先是一行有以个正整数n
接下来的一行是n个整数A[0], ..., A[n-1]
对于 50%的分数, 1 <= m, n <= 1000, 0 <= A[i] <= 100000, 0 <= i < n
对于100%的分数, 1 <= m, n <= 100000, 0 <= A[i] <= 100000000, 0 <= i < n
### output
每组数据输出形如"Case ?:k"，?为第几组测试数据，k表示最长单调上升子序列C的长度
### sample input
    
    
    5
    1 2 3 4 5
    
    4
    1 1 3 2
    
    1
    1
    
### sample output
    
    
    Case 1: 5
    Case 2: 2
    Case 3: 1
    
]]
content[252]=
[[
# Hard LCS
### description
给你两个序列A[0...m-1], B[0...n-1]，求A和B的最长公共子序列C[0...k-1]
也就是求一个最长的C，使得
    
    
    C[0...k-1] = A[I(0), I(1), ..., I(k-1)] = B[J(0), J(1), ..., J(k-1)] 
    其中 0 <= I(i) < m, 0 <= J(i) < n, i = 0...k-1
    对于 i < j, I(i) < I(j), J(i) < J(j)
    
### input
多组测试数据(组数<=20),对于每组测试数据
首先是一行两个正整数m, n
接下来的一行是m个整数A[0], ..., A[m-1]
最后一行是n个整数B[0], ..., B[n-1]
1 <= m, n <= 1000, 0 <= A[i] <= 10000, 0 <= B[j] <= 10000, 0 <= i < m, 0 <= j
< n
### output
每组数据输出两行
第一行形如"Case #?: k"，?为第几组测试数据，k表示最长公共子序列C的长度
第二行是k个数，给出字典序最小的序列C (如果C的长度为0，请输出“null”)
详见Sample
### sample input
    
    
    5 4
    1 2 3 4 5
    1 5 2 3
    
    4 4
    1 1 2 2
    2 2 1 1
    
    1 1
    1
    2
    
### sample output
    
    
    Case #1: 3
    1 2 3
    Case #2: 2
    1 1
    Case #3: 0
    null
    
]]
content[253]=
[[
# Sequence Detector
## Problem Description
Darkness Wong最近在准备他的创新杯项目。
现在他的项目需要一个对数列进行检测的功能。对于一个给定的数列，该程序需要输出这个数列的类型编号。已知的类型及编号如下：
1） 仅为等差数列
2） 仅为等比数列
3） 既是等差数列又是等比数列
4） 既不是等差数列也不是等比数列
请帮助Darkness实现这样的程序。
## Input
多组测试数据。
对于每组测试数据，第一行只有一个整数N(3<=N<=5000)，代表数列的元素个数。
第二行包含N个用空格隔开的正整数，表示整个数列。
## Output
对于每组数据，输出一行，数列的类型编号。(详见样例)
## Sample Input
    
    
    5
    1 2 3 4 5
    3
    1 3 4
    
## Sample Output
    
    
    1
    4
    
    
]]
content[254]=
[[
# Browsing History
## Problem Description
某日，你准备清除浏览器中所有的浏览记录(终于不是Darkness Wong了T_T)。
正当准备清除时，你突然想知道所有的浏览记录中价值最高的网站是哪一个。
每个网站都被赋予了一个价值，等于该网站URL中每个字符ASCII码之和。例如aa.cc的价值为438，因为438=97+97+46+99+99。
你只需要输出价值最高那个网站的价值。
为更加简化，所有的历史记录都满足以下的格式：[domain]。[domain]只由小写字母以及'.'构成。详见读入样例。
## Input
多组测试数据。
对每组测试数据，第一行只有一个整数N(1<=N<=100)，表示你历史记录的条数。
接下来N行，每行一个字符串代表一条历史记录，保证字符串长度小于100。
## Output
对于每组数据，输出一行，最高的价值。
## Sample Input
    
    
    1
    aa.cc
    2
    www.google.com
    www.wikipedia.org
    
## Sample Output
    
    
    438
    1728
    
    
## Source
2012 ACM-ICPC Asia Chengdu Regional Contest
]]
content[255]=
[[
# Ryan's Advanced Mathematics
## Problem Description
Ryan昨天参加了高数考试= =
但是显然他弱爆了，只得了X分（X除以杨大神的成绩极限趋近于零啊= =）
即使这样Ryan也还是手贱的打开了阮姐的成绩单。
这份成绩单是按成绩从高到低排序的，由于Ryan的成绩太低了，所以名次非常靠后。
不过Ryan不仅想知道自己的排名，还想知道杨大神和其他人的排名。
但是他实在是懒得数了，所以请你帮他数出这些Ryan想要知道的排名。
## Input
多组测试数据。
对于每组数据共四行。
第一行为一个数字n（1<=n<=104），表示参加考试的人数。
第二行为n个数，为阮姐成绩单上的分数，成绩自高至低排序。
第三行为一个数字m（1<=m<=105），表示Ryan想要查询的成绩个数。
第四行为m个数，分别是这m个人的成绩。
## Output
共一行，m个数字。
m个数字分别表示Ryan要查询的m个成绩的排名，用空格隔开。
如果没有找到某个成绩，该成绩排名输出0。
## Sample Input
    
    
    5
    24 21 18 15 7
    3
    21 7 8
    
## Sample Output
    
    
    2 5 0
    
]]
content[256]=
[[
# Yu-Gi-Oh!
## Problem Description
游戏的历史，可以追溯到五千年以前的古代埃及时期。古代的游戏，用来预言人类和法老王的未来，是决定命运的魔法般的仪式。那些被称为黑暗游戏。现在，有名少年完成了“
千年积木”，接受黑暗游戏，成为正义的化身。光和暗，拥有两个心灵的少年的名字，人称“游戏王”。
Darkness Wong是一个资深游戏王爱好者，被许多游戏王爱好者亲切地称为院长。他拥有很多游戏王的卡牌，但某次不小心把牌的顺序弄乱了,这让他很苦恼。
现在他需要根据卡牌上的编号将它们按从小到大重新排好，需要你帮助他通过代码实现这个操作。
## Input
多组测试数据。
对于每组测试数据，第一行只有一个整数N(1<=N<=1000)，表示卡牌的数量。
第二行包含N个用空格隔开的正整数a(0<=a<=100000)，表示每张卡牌的编号。
## Output
对于每组数据，输出一行，按照从小到大的顺序输出每张卡牌的编号。
## Sample Input
    
    
    3
    1 3 2
    5
    5 4 3 2 1
    
## Sample Output
    
    
    1 2 3
    1 2 3 4 5
    
    
]]
content[257]=
[[
# Ryan's Rating
## Problem Description
Ryan的诸多爱好之一就是赏美女。
他每天会给自己看见的美女标号，看见一次Ryan就给她加一分。
由于每天都有美女看，Ryan早就眼花缭乱了。
请你帮他统计下Ryan看到的美女分布并用图示的方法输出。
## Input
多组测试数据。
每组数据输入共两行。
第一行为数字n,m（0<n<10, 0<m<100）和一个字符s，为Ryan看见的美女个数n和看见美女的次数m。
第二行共m个数字，分别为Ryan看到的美女的编号（均为1~n）。
## Output
共n行，用图示的方法表示Ryan看到的每位美女的分数。
第i个美女用[i]表示，用x个字符s表示分数x。
美女的输出顺序按编号升序输出。
## Sample Input
    
    
    3 10 *
    1 3 1 1 3 2 1 1 2 3
    
## Sample Output
    
    
    [1]*****
    [2]**
    [3]***
    
]]
content[258]=
[[
# Ryan's Date
## Problem Description
Ryan在女生节上摘了一大堆女生的心愿= =
其中有一个是：陪我一起看星星。
于是Ryan特别兴奋地约出了这位浪漫的姑娘。
Girl：“今天的星空好美呀！”
Ryan：“嗯…嗯…是呀…好美…”
Girl：“那我们来数下第X星等的星星在天上的位置吧~”
Ryan：“星等是啥？”
Girl：“星等就是星星的明亮程度（亮度，Briteness，B）通常以「星等」来表示。公元前 150 年左右，希腊天文学家依巴谷（Hipparchus）将
天上肉眼可见的星星分为六个等级，最明亮的二十颗星星列为第一等级，其次者列为第二等级，依此类推，而眼睛能见到最暗的星星为第六等级。直至公元 1856
年英国人波克松（N. Pogson）建议明订一等星比六等星亮一百倍，意即一等星比二等星亮约 2.512 倍，星等间才开始有量化上的关系。常见的 "明星"
如大犬座的天狼星（Sirius）亮度为－1.4等，天琴座的织女星 （Vega）为 0.04等，天蝎座的心宿二（Antares）为 0.92等。”
Ryan：“＝＝|”
原来Ryan遇到的是和航概姐一样的学霸！不，是女神！女神居然对天文这么有研究= =
于是他只好向你求助，来完成他屌丝逆袭心愿= =
## Input
多组测试数据。
每组数据共三行。
第一行为一个数字n（1<=n<=106），代表天上共有n颗星星。
第二行为n个用空格隔开的数字，第i个数字s[i]表示第i颗星星的星等（1<=i<=n）。
第三行为一个数字X，代表女神所说的X级亮度的星星。
## Output
输出共一行。
为所有星等为X的星星的位置（在输入中的序号i）。
如果没有该星等的星星请输出"WTF!"
## Sample Input
    
    
    5
    1 4 1 2 3
    1
    3
    1 2 3
    4
    
## Sample Output
    
    
    1 3
    WTF!
    
]]
content[259]=
[[
# 据说题目要长才有人看。元芳，你怎么看？
# Problem Description
传说，题目太短吸引不了大家的注意力。然后题目长大家就会来看了吗？不知道诶。。元芳，你怎么看？
因式分解对无数青少年来说历来是个蛋疼的问题，然后我们亲爱的阮老师却很喜欢出一些题来磨炼大家。
母元猴年马月狗天，Ms Ruan给大家提了一个问题：“x^2-1如何因式分解？”
很萌的元芳忍不住跟同位吐槽：“不就是(x+1)(x-1)么= =||”
Ms Ruan不知道是怎么听到的，然后说有的同学答对了，是(x+1)(x-1)..
然而故事不会就这样结束，事情总是要发生一点戏剧性的变化。
第二天，Ms Ruan又提出了一个问题“x^3-1如何因式分解？”
她见大家没反应，于是就蹦出了一句话：“元芳，你怎么看？”
第三天，Ms Ruan又来了：“x^4-1。。元芳，你怎么看？”
。。。
元芳怒了，因为再这么问下去就世界末日了。
所以为了拯救世界的和平，为了全人类的解放，
这道题交给你了——这位跟切·格瓦拉一样伟大的勇士。
# Input
多组数据。
每组数据只有一行，这行只有一个非负整数n(0<=n<=1024)，代表x^n-1中的指数n。
当n为0数据结束。
# Output
对每组数据，输出一行，这行包含一个多项式，表示x^n-1因式分解后的多项式。
多项式要求：
1、除了n=1时为x-1外，其它多项式必须是若干个单项式相乘。
2、每个单项式中系数必须为整数，不考虑虚数的情况。
3、该多项式不能再因式分解。
4、没有一个单项式的次数为0。
多项式输出要求：
1、对于所有单项式，按照单项式中的最高次排序，次数小的在前；若相同则比较系数的绝对值，绝对值小的在前；若绝对值相同，负数的在前。
2、对于每个单项式，单项式中次数相同的项必须合并，如不能出现x+x的情况。单项式以降序的方式输出。
3、对x的0次方，直接输出系数（即常数）；x的1次方，直接输出x；x的n次方，输出x^n。系数的绝对值为1时，不输出1或-1。
# Sample Input
1
2
3
4
5
6
0
# Sample Output
x-1
(x-1)(x+1)
(x-1)(x^2+x+1)
(x-1)(x+1)(x^2+1)
(x-1)(x^4+x^3+x^2+x+1)
(x-1)(x+1)(x^2-x+1)(x^2+x+1)
# Hint
x^15-1 = (x-1)(x^2+x+1)(x^4+x^3+x^2+x+1)(x^8-x^7+x^5-x^4+x^3-x+1)
Source
改编自 2009.5.30 ACM/ICPC东华大学邀请赛、第37届ACM国际大学生程序设计竞赛亚洲区域赛金华站现场赛
]]
content[260]=
[[
# Emoticon
# Problem Description
Jim很喜欢用字符来做表情，在英文中称之为Emoticon。例如：^o^、-_-||等。
最近他发现，有些字母也能做表情，如ToT、=w=等。
更神奇的是，有些缩略词把每个字母都用大写写出来后，会变得很可爱。
例如你可能经常在代码中写tot，若把所有字母都变为大写，即TOT，则看起来要比本来的可爱多了。
Jim手头上有一堆字符串，他想知道把字符串变换之后是否能变得更可爱。
判断是否可爱的任务当然是Jim自己完成，你只需要变换即可。
So, misson start!
# Input
第一行一个无符号整数n（n<=1314），表示有n个字符串。
接下来n行，每行都是一个变换之前的非空字符串。（长度小于520）
# Output
输出t行，每行输出一个表示变换之后的非空字符串。
# Sample Input
2
tot
tat
# Sample Output
TOT
TAT
]]
content[261]=
[[
# Ryan's Automated Judge
## Problem Description
众所周知，Ryan是超级懒的。现在，他又在想如何少干些事情的同时多找几个Wrong Answer 出来！
所以，他想让你帮他写一个自动判分程序，来判断每个同学所编写的程序是否正确。
你需要编写的部分是接收标准答案和某同学的程序所输出的结果，并且判断此结果应是“Accepted”、“Presentation Error”还是“Wrong
Answer”。
其含义如下：
Accepted：由于Ryan很贱= =只有那些和标准答案完全相同（所有的字符都一样）的结果才能被“Accepted”。
Presentation Error：如果所有的数字字符是相符(包括顺序)的且至少有一个非数字字符不符那么就属于“Presentation Error”。
例如，“15 0”和“150”，就属于“Presentation Error”，而“15 0”和“1 0”就是“Wrong Anwser”。
Wrong Answer：如果程序的输出不属于上面两类，那就是“Wrong Answer”了。
## Input
输入中包含很多组数据，每一组数据的第一行是一个整数 n (n < 100)，它表示后面的标准答案有多少行。
接下来的 n 行是标准答案。再往下的一行又是一个整数 m (m < 100)，它表示某同学提交的程序的输出有多少行。
接下来的 m 行是某同学的程序的输出。
当 n = 0 时输入结束。输入中的每一行都不超过 120 个字符。
## Output
针对每一组输入，输出下面某一行：
Run #x: Accepted
Run #x: Presentation Error
Run #x: Wrong Answer
其中 x 表示是第几组输入（从1开始）。
## Sample Input
    
    
    2
    Ryan is a handsome boy.
    1!=0
    2
    Ryan is a handsome boy.
    1!=0
    1
    a=15 0
    1
    a=150
    1
    b=15 c=0
    1
    b=1 c=0
    0
    
## Sample Output
    
    Run #1: Accepted
    Run #2: Presentation Error
    Run #3: Wrong Answer
    
## Note
原本应该写在一行的内容写到两行上但内容相同，属于 PE。
]]
content[262]=
[[
# Lost in maze
## Problem Description
Ryan的梦中情人叫做小美。
有一天小美被妖怪抓走了，Ryan听闻马上动身要去上演英雄救美的壮举。
可是当他来到妖怪的领地时，发现妖怪给自己设了一个阵，只有成功破解出这个阵，Ryan才能救出他心爱的小美。
所以请你帮Ryan判断出他能不能救出小美。
## Input
多组测试数据。
对于每组数据，第一行是两个个数字m和n，表示该阵为m*n大小（0<m,n<=10，m为行，n为列）。
接下来是一个m*n的矩阵表示这个阵。
其中0为该阵中可走的路，1为墙（即不能走的位置），2为Ryan的位置，3为小美的位置。
Ryan只有四个可行的行走方向：即上、下、左、右。
## Output
每组数据共输出一行，"Yes"或"No"表示Ryan是否可以成功救出小美。
## Sample Input
    
    
    8 7
    1 1 1 1 1 1 3
    1 0 0 0 0 0 0
    1 0 1 1 1 1 1
    1 0 0 0 1 1 1
    1 1 1 0 0 0 1
    1 0 0 0 1 0 1
    1 0 1 1 1 0 1
    2 0 1 1 1 0 0
    4 4
    0 3 1 2
    1 1 1 0
    0 0 1 0
    0 0 0 0
    
## Sample Output
    
    
    Yes
    No
    
## Hint
样例中Ryan成功解救小美的路线图：
![<img:http://ww4.sinaimg.cn/bmiddle/5c707194jw1dz9metsy4oj.jpg>](http://ww4.s
inaimg.cn/bmiddle/5c707194jw1dz9metsy4oj.jpg)
]]
content[263]=
[[
# Stupid Ryan
## Problem Description
Ran的词汇量很小，所以每次做英语选择题的时候都很头疼。
但是他找到了一种方法，经试验证明，用这种方法去选择选项的时候选对的几率非常大！
这种方法的具体描述如下：
假设maxn是单词中出现次数最多的字母的出现次数，minn是单词中出现次数最少的字母的出现次数。
如果maxn-minn是一个质数，那么Ryan就认为这是个Lucky Word，这样的单词很可能就是正确的答案。
## Input
多组输入数据。
对于每组数据，只有一行，是一个单词，其中只可能出现小写字母，并且长度小于100。
## Output
每组输出共两行，第一行是一个字符串，假设输入的的单词是Lucky Word，那么输出“Lucky Word”，否则输出“No Answer”；
第二行是一个整数，如果输入单词是Lucky Word，输出maxn-minn的值，否则输出0。
## Sample Input
    
    error
    
## Sample Output
    
    Lucky Word
    2
    
## Source
改编自NOIP2008提高组复赛第一题
]]
content[264]=
[[
# Energetic Ryan
## Problem Description
Ryan是个非常热爱运动的人。他喜欢的运动是踢足球、跑步、游泳等。
一天，Ryan报名参加了马拉松比赛。
马拉松比赛沿途风光非常好，有蓝天，有白云，还有美丽的啦啦队加油的姑娘……
    
    
    
    此处省略一万字……
    
    
总之Ryan终于辛苦的跑完了比赛= =
Ryan用自己的手表给自己计了时，他拿着自己的时间，跑到裁判那里去问排名，裁判把厚厚的一本成绩交给了他。
Ryan一看就傻了眼= = 怎么是按参赛编号排序的。。。
由于Ryan实在是太懒了，所以请你告诉他这次马拉松他到底跑了多少名。
因为是你帮他查，所以Ryan就毫不客气的问了一大堆不是他自己跑的时间，所以你要帮他查好多次= =
## Input
多组测试数据。
对于每组数据共四行。
第一行为一个数字n（1<=n<=103），表示参加马拉松比赛的人数。
第二行为n个数，为成绩本上每个人的时间（已全部换算为秒）。
第三行为一个数字m（1<=m<=106），表示Ryan想要查询的时间个数。
第四行为m个数，分别是这m个人的时间。
输入保证每个人的完赛时间都不相同。
## Output
共一行，m个数字。
m个数字分别表示Ryan要查询的m个时间的排名，用空格隔开。
如果没有找到某个时间，该成绩排名输出0。
## Sample Input
    
    
    5
    18 7 24 21 15
    3
    21 7 8
    
## Sample Output
    
    
    4 1 0
    
## Hint
使用cin/cout可能会超时
]]
content[265]=
[[
# Easy Triangle
## Problem Description
观察下列三角形的规律：
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
......
现在请根据给定的N输出该三角形的前N行。
## Input
多组测试数据。
每行测试数据只有一行，一个正整数N(1<=N<=50)。
## Output
对于每组数据，输出三角形的前N行。
## Sample Input
    
    
    2
    3 
    
## Sample Output
    
    
    1
    1 1
    1
    1 1
    1 2 1
    
    
]]
content[266]=
[[
# Square Array Arrangement (Check)
## Problem Description
最近Darkness Wong被指派了一项任务，他需要为自己班级的同学排出一个运动会方阵。
已知Darkness班上一共有64人，其中有女同学8人。运动会方阵需要满足如下要求：
1. 方阵严格为8*8的正方形。
2. 方阵中任何一行或任何一列都只能有一个女生。
3. 方阵中任何对角线方向都只能有一个女生。
现在Darkness整理出了很多方案，请告诉他这些方阵是否满足要求。
## Input
多组测试数据。
每行测试数据有8行，每行有8个以空格隔开的0或1。其中0代表男生，1代表女生。
## Output
对于每组数据，输出一行，Yes或No。
其中Yes代表方阵满足要求，No代表不满足要求。
## Sample Input
    
    
    1 0 0 0 0 0 0 0 
    0 0 0 0 1 0 0 0 
    0 0 0 0 0 0 0 1 
    0 0 0 0 0 1 0 0 
    0 0 1 0 0 0 0 0 
    0 0 0 0 0 0 1 0 
    0 1 0 0 0 0 0 0 
    0 0 0 1 0 0 0 0 
    
## Sample Output
    
    
    Yes
    
    
]]
content[267]=
[[
# Two Bags of Chocolates
## Problem Description
Darkness Wong有两袋巧克力，已知第一袋里有x(x>=1)块，第二袋里有(y>=1)块。
很多周以前我们就知道，Darkness是一个很粗心的人，毫不意外地，他把第一袋巧克力丢了。
Darkness还记得两袋巧克力总块数(x+y)的一些特征。首先，(x+y)不大于一个特定的正整数N；其次，(x+y)可以被正整数k整除。
帮助Darkness计算出第一袋中可能的巧克力块数x。请升序输出所有可能的结果。
## Input
多组测试数据。
每行测试数据只有一行，三个正整数y，k，n(1<=y,k,n<=10^9;(n/k)<=10^5)。
## Output
对于每组数据，输出一行，升序输出x所有可能的结果。
如果不存在满足条件的x，输出-1。
## Sample Input
    
    
    10 1 10
    10 6 40
    
## Sample Output
    
    
    -1
    2 8 14 20 26
    
    
## Source
An adaption of Codeforces Round #148(Div.2) Problem-A
]]
content[268]=
[[
# Land Area
# Problem Description
话说前一段时间ljc跟ysy大神(orz..)、zs大神(orz..)去一个环境优美的地方参加一个很神奇的比赛，期间遇到一道很蛋疼的题目：给定一个三维凸多面
体，问如何放置这个多面体，使得多面体最高点尽量高，底面面积尽量小。当时ljc辛辛苦苦地打了一堆代码，最终因为凸多面体可能退化为一个平面、一条线，甚至一个点而
没有解决这道题。没想到刚滚回寒冷干燥的SH乐园，zxl同学就小窗他了：帮忙做一道数学题~o>_<o~
心软的ljc答应了，没想到看到题目之后就被亮瞎了：
某个平行世界里很神奇地遵循欧氏几何，每个城市的领土都由三条直线相交所围成。给定这三条直线的方程，求城市的领土面积。为了方便计算，统计者给出了这三条直线在笛卡
尔直角坐标系中的一般方程。
ljc做几何题做到心都碎了，他决定不再做这么无聊的几何题。
于是他找到了你——这位战斗力丰富的少年。所以开始战斗吧！
# Input
第一行一个无符号整数t（t<32768），表示城市的数量。
接下来t行，每行9个实数A1，B1，C1，A2，B2，C2，A3，B3，C3；分别表示三条直线方程Ax+By+C=0中的系数A、B、C。每个实数的绝对值均小
于等于100000。
注意，在这个平行世界中，某一块领土可以既属于城市A，也可以属于城市B。
# Output
输出t行，若第i个城市有领土，则输出一个实数（保留三位小数），表示第i个城市的领土面积；若没有领土（ToT），则输出“It's a wonderful
land! \^o^/”
# Sample Input
2
-1 1 1 1 0 0 0 1 0  
1 1 1 1 1 1 1 1 1
# Sample Output
0.500
It's a wonderful land! \^o^/
# Hint
参考 人民教育出版社 普通高中课程标准实验教科书 数学 必修5第三章的“二元一次不等式(组)与简单的线性规划问题”
注意：若领土面积为0，则视为没有领土。
]]
content[269]=
[[
# Super Palindromic Number
## Problem Description
Ryan说，如果有无穷多的母牛和无穷多的大型键盘，它们就可以创造出世界上最伟大的回文。（这说的是人话么= =）
在寻找回文时，可以不计文中的标点、空白和大小写，只要关注 26 个英文字母就可以了。
但是要注意，在输出时要按照原样，也就是要保留原有的空白、标点和大小写。
你的任务，就是在不超过 20000 个字符的字符串中，寻找长度不超过 2000 的回文字符串（含空格和标点时）。
## Input
只有一组测试数据。
为一段文本，不超过 20000 个字符，可以有一行或多行，每行的长度不超过 80 个字符。
## Output
输出的第一行为找到的最长的回文字符串的长度。
后面的行应该包括该字符串，字符串两边多余的空格和标点都不需要输出，但字符串中的空格、标点和换行则需要按照原样输出。
如果文中有多个长度相同的回文字符串，只要输出第一个就可以了。
## Sample Input
    
    
    Sonic: Makam, I'm Akam.
    
## Sample Output
    
    11
    Makam, I'm Akam
    
]]
content[270]=
[[
# 加油
### Description:
Jason今天没赶上来沙河的校车，眼看就要迟到了。于是他抢下了路过的Professor Song的车直奔沙河而来。但他无奈的发现，这辆车加满油居然只能跑n公
里。而每次加油将浪费他宝贵的时间。于是他希望你给他一个方案，让他能以最少加油次数赶到沙河。
假设刚开始汽车是满油状态。
### Input:
多组数据，每组数据第一行有3个整数m,n,k，表示学院路到沙河的距离为m公里,加满油能跑n公里,这中间共有k个加油站(1<=n,m<=10000,0<=k<
=100)
接下来一行k个整数，按顺序给出这k个加油站的位置，以学院路为0，沙河为m的坐标系,保证这些加油站都在0和m之间。
### Output:
每组数据输出一行，为一个整数T，表示Jason最少需要停下来加几次油。如果他无法到达沙河(绳命是剁么的杯具。。。)，请输出-1。
### Sample Input:
    
    
    10 5 1
    5
    
### Sample Output:
    
    
    1
    
### Hint
第n公里处的加油站是能够到达的。
]]
content[271]=
[[
# 胡萝卜
### Description:
有 n 根胡萝卜，已知其中有且仅有一根有毒。现在我们想知道哪根胡萝卜有毒，于是找来爱吃胡萝卜的Jason做测试(不要告诉他有根胡萝卜有毒哦)。
假设我们有足够多的春哥可以信(信完后满血满魔原地复活不解释。。。)，为了加快测试速度，我们每次可以把来自若干根胡萝卜的测试样本(也就是切成的胡萝卜丁)混在一
起，让Jason品尝。如果吃了喊有毒的胡萝卜，即死。
PS:当然Jason果断是会信春哥然后原地复活的，不停的吃胡萝卜挂掉，他还执着的帮我们吃着胡萝卜，向伟大的勇于自我牺牲的Jason致敬。
PPS:其实是他很爱吃胡萝卜我会到处乱说嘛~~~
现在给你每根胡萝卜有毒的概率（和总是 100%），问以最优策略（测试次数尽可能少）执行，期望的测试次数是多少？
### Input:
输入第一行为数据组数 T（T <= 20）。
对于每组数据，首先是一个空行，接下来的第一行为胡萝卜的个数 n（1 <= n <= 100）。
再接下来的一行为 n 个实数 p1 ... pn，表示每根胡萝卜有毒的概率（sum{ pi | 1 <= i <= n } = 1 ）。
### Output:
对于每组数据输出一个数，为期望的测试次数，小数点后保留两位数字。
### Sample Input:
    
    
    3
    
    3
    0.5 0.25 0.25
    
    4
    0.25 0.25 0.25 0.25
    
    2
    0.00 1.00
    
### Sample Output:
    
    
    1.50
    2.00
    1.00
    
### Hint
概率为 0 的事件未必是不可能事件，比如说在数轴上随机选点，结果选中了一个整点……
所以第三组样例还是需要测一次的。
]]
content[272]=
[[
# Camel
### Description:
Courage发家以前是在撒哈拉倒卖切糕的商人。沙漠里面的运输工具当然就是骆驼啦！Courage自己是没有骆驼的（骆驼都被zmz垄断了），所以他的商队每次经
过沙漠都得找zmz租骆驼（zmz就是靠这个发家的）。
切糕都装在一个个大大小小的袋子里面，而且所有人都不愿意徒步行走，因此需要一些骆驼把他们自己和所有大包小包驮在背上。假设这个商队共有p个人，x个小包和y个大包
好了。
作为一个商人，当然要精（J）打细算（S），Courage总是想少租点骆驼，所以总想让每只骆驼多带点东西；而zmz当然想多租点骆驼出去（最重要的是骆驼不能累死
），于是他规定每匹骆驼可以背的物体只能是下列四种组合之一（因此不能同时背小包和大包）：不超过3个小包；不超过2个大包；1个人与不超过2个小包；1个人和1个大
包。
要是算的不仔细的话Courage就会被zmz坑死的（永远都发不了家），Courage想知道他最少需要租多少骆驼？
### Input:
第一行为一个整数t，表示有t组数据
接下来t行，每行三个整数p,x,y
p,x,y<=1000000000
### Output:
每组数据输出一行为一个整数n，表示最少需要n只骆驼。
### Sample Input:
    
    
    1
    2 7 3
    
### Sample Output:
    
    5
]]
content[273]=
[[
# 离散数学
# Problem Description
梁飞翔同学学离散数学可痛苦了，于是他打算编写一个程序来帮助他做题。由于任务繁多，所以他把这个重任交给了你。他想实现的功能是，输入一个公式，程序自动判断是永真
式、永假式还是可满足式。
其中的符号规定如下：
变元用符号p,q,r,s,t表示，最多5个，可以少于5个
双蕴含用符号<->表示
蕴含用符号-->表示
合取用符号AND表示
析取用符号OR表示
异或用符号XOR表示
非运算用符号NOT表示
括号用(,)表示
# Input
多组测试数据。n行，每行一个表达式。
# Output
针对每个表达式输出一行结果。永真输出TRUE，永假输出FALSE，可满足输出SOLVEABLE。
# Sample Input
(q-->p)AND(NOTp-->q)<-->p
(q-->p)AND(NOTp-->q)<-->NOTp
# Sample Output
TRUE
FALSE
]]
content[274]=
[[
# calc
# Calculator
编写一个命令行方式下的计算器程序，对输入的算术表达式进行计算求值。
## Input
多组数据，每组一行，为一个算术表达式，其中含有数字0-9，运算符+，-，*，/，还有括号(，)。保证输入的表达式无语法错误，不含空格，加减号（+/-）不表示
正负，即没有(-n)的情况。
## Output
每组数据输出一行，为该表达式的值，如果是整数则输出整数值，是小数则保留小数点后三位。
对表达式求值过程中，要求先算乘除，后算加减，相同优先级的先左后右，有括号的先算括号里面的。
## Sample
### Input:
1+5*6-4
(2-7)*9 + 2
### Output:
27
-43
]]
content[275]=
[[
# Ryan's Cube
## Problem Description
Ryan假期要去印尼做志愿者，给那里的小朋友讲课、做游戏。
最近，他准备给小朋友们搭积木。
Ryan有一块面积为m*n的矩形区域，上面有m*n个边长为1的格子。
每个格子上堆了一些同样大小的积木（积木的长宽高都是1）。
Ryan定义了每个积木为如下格式，并且不会做出任何翻转旋转， 只会严格以这一种形式摆放：
    
    
    ..+---+
    ./   /|
    +---+ |
    |   | +
    |   |/.
    +---+..
    
每个顶点用 1 个加号'+'表示，长用 3 个'-'表示，宽用 1 个'/'表示，高用两个'|' 表示。
字符'.'需要作为背景输出，即立体图里的空白部分需要用'.'来代替。
积木的画法如下面的规则：
若两块积木左右相邻，图示为：
    
    
    ..+---+---+
    ./   /   /|
    +---+---+ |
    |   |   | +
    |   |   |/.
    +---+---+..
    
若两块积木上下相邻，图示为：
    
    
    ..+---+
    ./   /|
    +---+ |
    |   | +
    |   |/|
    +---+ |
    |   | +
    |   |/.
    +---+..
    
若两块积木前后相邻，图示为：
    
    
    ....+---+
    .../   /|
    ..+---+ |
    ./   /| +
    +---+ |/.
    |   | +..
    |   |/...
    +---+....
    
立体图中，定义位于第(m,1)的格子（即第 m 行第 1 列的格子）上面自底向上的第一块积木（即最下面的一块积木）的左下角定点为整张图最左下角的点。
由于Ryan想知道按某种设计的积木是否好看，所以请你帮助他打印出立体图。
## Input
多组测试数据。
对于每组测试数据，第一行为2个整数m, n，表示有 m*n 个格子(1<=m,n<=50)。
接下来的m行，是一个m*n的矩阵，每行有n个用空格隔开的整数kij。
其中第i行第j列上的整数kij表示第i行第j列的格子上摞有多少个积木(1<=kij<=100)。
## Output
对于每组数据输出Ryan想要看到的立体图，是一个p行q列的字符矩阵。
其中p和q表示最少需要p行q列才能按规定输出立体图。
## Sample Input
    
    
    3 4
    2 2 1 2
    2 2 1 1
    3 2 1 2
    
## Sample Output
    
    
    ......+---+---+...+---+
    ..+---+  /   /|../   /|
    ./   /|-+---+ |.+---+ |
    +---+ |/   /| +-|   | +
    |   | +---+ |/+---+ |/|
    |   |/   /| +/   /|-+ |
    +---+---+ |/+---+ |/| +
    |   |   | +-|   | + |/.
    |   |   |/  |   |/| +..
    +---+---+---+---+ |/...
    |   |   |   |   | +....
    |   |   |   |   |/.....
    +---+---+---+---+......
    
]]
content[276]=
[[
# Square Array Arrangement (Calc)
## Problem Description
最近Darkness Wong被指派了一项任务，他需要为自己班级的同学排出一个运动会方阵。
已知Darkness班上一共有N*N人，其中有女同学N人。运动会方阵需要满足如下要求：
1. 方阵严格为N*N的正方形。
2. 方阵中任何一行或任何一列都只能有一个女生。
3. 方阵中任何对角线方向都只能有一个女生。
由于上次Darkness整理出的方案大多都不满足条件，所以他开始质疑到底存在多少个这样的方阵。
请根据给定的N，计算出所有满足条件的N*N方阵总数。
## Input
多组测试数据。
每行测试数据只有一行，一个正整数N(1<=N<=12)
## Output
对于每组数据，输出一行，满足条件的方阵数。
## Sample Input
    
    
    8
    
## Sample Output
    
    
    92
    
    
]]
content[277]=
[[
# Team
## Problem Description
某日，yangsiy和他的两个好朋友buaaNiNi以及LiJiancheng决定组成一个名叫LittleBusters的队伍参加程序设计大赛。
比赛时，主办方会向各支参赛队提供若干题目。
作为一种习惯，他们三人喜欢在比赛开始前讨论比赛策略。
这次他们打算使用的策略是，若三人中的两人肯定了某题的算法，则开始做这道题。否则这道题将被标记为不可做。
现在已知比赛中的题目数量，以及三人中每个人对每道题的态度，请问LittleBusters在比赛中最多能通过多少题？
## Input
多组测试数据。
对于每组数据，第一行包含一个正整数N(1<=N<=1000)，代表比赛中的题目数量。
接下来的N行每行包含三个用空格隔开的整数（只可能是0或1）。
如果一行中的第一个数字为1，代表yangsiy肯定了这道题的算法，0则代表不肯定。
同样，第二个与第三个数分别代表buaaNiNi和LiJiancheng对这道题的态度。
## Output
对于每组数据，输出一行，LittleBusters最多能通过的题目数。
## Sample Input
    
    
    3
    1 1 0
    1 1 1
    1 0 0
    2
    1 0 0
    0 1 1
    
## Sample Output
    
    
    2
    1
    
    
## Source
An adaption of Codeforces Round #143(Div.2) Problem-A
]]
content[278]=
[[
# Ryan's Sky
## Problem Description
大家还记得Ryan在女生节上认识的那个陪他看星星、查星等的女神么？
其实，那件事情还有后续= =
由于用了你的程序，Ryan非常顺利地回答了女神问的每一颗星星的星等。
正在她得意的时候，女神继续发问：“你知道浩瀚的星空中，空间坐标为(5, 4, 213)的点上有没有一颗天体么？”
Ryan当场给跪= = 所以请你来帮他干掉女神吧~
## Input
多组测试数据。
每组测试数据，第一行为一个数字n（1<=n<=105），代表天上共有n颗星星。
接下来n行，每行三个数x, y, z（0<=x,y,z<=100），代表一颗星星的空间坐标。
第n+2行为一个数字m（1<=m<=105），代表女神问Ryan的m颗星星。
接下来m行，每行三个数x', y', z'，代表女神问的某颗星星的坐标。
## Output
对于每组测试数据输出共m行。
"YES"代表这颗星星存在，反之为"NO"。
## Sample Input
    
    
    3
    1 2 3
    2 3 4
    3 4 5
    2
    1 2 3
    4 5 6
    
## Sample Output
    
    
    YES
    NO
    
## Hint
使用cin/cout可能会超时
]]
content[279]=
[[
# Understand Pointer
## Problem Description
指针是C/C++中一个非常重要的特性，充分体现了C/C++强大的自由性。
每年的C++期末考试也会涉及到较多指针的内容，希望这道题能够帮助大家理解指针的基本概念与使用。
首先我们来看这样一段代码：
    
    
    #include <iostream>
    using namespace std;
    void swap(int &a,int &b)
    {
        int k;
        k=a;
        a=b;
        b=k;
    }
    int main()
    {
        int a,b;
        while (cin>>a>>b)
        {
            swap(a,b);
            cout<<a<<" "<<b<<endl;
        }
        return 0;
    }
    
这段代码很简单，功能为交换读入的两个整数并输出。
在函数调用过程中我们使用了“引用调用”使得swap函数中a，b变量值的改变可以返回到main函数的a，b中。
除了使用这种方法，我们还可以使用“指针调用”的方式达到同样的效果，下面请利用你所了解的指针知识完成下面一段代码实现与上述代码相同的功能，并提交。
注意：只能在“//请完成代码”处写入自己的代码，不能改变其他任何地方。赛后将严格检查。
    
    
    #include <iostream>
    using namespace std;
    void swap(int *a,int *b)
    {
        //请完成代码
    }
    int main()
    {
        int a,b;
        while (cin>>a>>b)
        {
            swap(&a,&b);//注意此处
            cout<<a<<" "<<b<<endl;
        }
        return 0;
    }
    
    
## Sample Input
    
    
    1 2
    3 4
    
## Sample Output
    
    
    2 1
    4 3
    
    
]]
content[280]=
[[
# String Integrated
## Problem Description
Ryan最近学习了字符串的各种操作。
A: 将两个字符串连接在一起。
B: 将一个字符串从另一个字符串中剔除。
C：将一个字符串翻转显示。
D：判断两个字符串是否相等。
突然今天他心血来潮想要自己实现下这些功能，但是他很笨，所以他来请教你，请你帮助他完成这些操作。
## Input
多组测试数据。
每组测试数据，共两行。
第一行为一个字符X，为上述A, B, C, D中的某一个。
如果X为A,B或D，第二行将有两个字符串s1和s2，用空格隔开。
如果X为C，第二行将只有一个字符串s（1<= s1, s2, s <= 1000）。
保证s1和s2中不出现空格。
## Output
对于每组测试数据输出共一行。
若X为A，则输出s1与s2连接后的字符串。
若X为B，则输出s1除去s2后的字符串，若s1中不包含s2则输出"Failed."。
若X为C，则输出s翻转后的字符串。
若X为D，则输出s1与s2是否相同，若相同则输出"Yes."，不同则输出"No."。
## Sample Input
    
    
    A
    soft ware
    B
    engineering ng
    C
    Orz
    D
    Ryan Yan
    
## Sample Output
    
    
    software
    eineeri
    zrO
    No.
    
    
]]
content[281]=
[[
# Ryan's Binary
## Problem Description
计算机使用的是二进制，和十进制不同的是：二进制运算“逢二进一”。下面举几个二进制加法的运算实例:
    
    
    例1：                    例2：
     11101                 111011011
    +  110                +  1101100
    ------                ----------
    100011                1001000111
    1所在的位置：            1所在的位置：
    6、2、1               10、7、3、2、1
    
你的任务是：对于任意的两个正的二进制数（整数），求它们和中"1"所在的位置。
## Input
多组测试数据。
对于每组测试数据，输入共两行：
第一行：二进制的加数A，总长度<=60
第二行：二进制的加数B，总长度<=60
## Output
对于每组测试数据，输出一行，为二进制数A+B中"1"所在的位置，位置排序为：从左到右：N、N-1、N-2...1，数据之间用空格分隔。
## Sample Input
    
    
    11101
    110
    111011011
    1101100
    
## Sample Output
    
    
    6 2 1
    10 7 3 2 1
    
## Hint
请使用位运算实现
]]
content[282]=
[[
# Archaeology-Guatemala
## Problem Description
我们都知道Darkness Wong是一个很有天赋的程序员。但在某个平时时空里他却变成了一个颇负盛名的考古学家。
为了研究公元2012年12月21日会发生什么事，Darkness只身一人来到了美洲进行考古研究。
他的第一站来到了危地马拉，这里是古印第安人玛雅文化的中心之一。
研究过程中，Darkness发现了一种古印第安人的加密方式和一串疑似被加密的数字，为了判断其中的信息是否有价值，他希望你能帮助他解开这些密码。
已知密码中每一个数字都可以对应一个小写字母，不难想到一串数字就能构成一个单词。
解密方式如下：
1、把数字转换成二进制数。
2、把二进制数的最右边的“1”转换成“0”。
3、把数字按字母表顺序转换成字母。如“1”转换成“a”，“26”转换成“z”。
保证密码一定是正整数，且经过第2步转换出密码一定是1到26之间的整数。
## Input
多组测试数据。
每组测试数据共两行。第一行为一个正整数N(1<=N<=10000)，表示这是一个由N个小写字母组成的单词。
接下来N个正整数，每个正整数代表一个密码。
## Output
对于每组数据，输出一行，这串密码对应的单词。
(小写字母间没有空格，详见样例)
## Sample Input
    
    
    3
    5 13 14
    
## Sample Output
    
    
    dll
    
    
]]
content[283]=
[[
# Archaeology-Honduras
## Problem Description
平时世界中的考古学家Darkness Wong在美洲研究的最后一站是洪都拉斯。
作为又一个古印第安人玛雅文化的中心，这里有着令人叹为观止的玛雅神庙(a.k.a 玛雅金字塔)。
在没有金属工具、没有大牲畜和轮车的情况下，古代玛雅人却能够开采大量重达数十吨的石头，跋山涉水、一路艰辛地运到目的地，建成一个个雄伟的金字塔。这些金字塔最高的
可达70米，其规模之巨大、施工难度之高，令人吃惊。
在Darkness的研究中，他发现这些金字塔是通过一圈一圈堆叠起来建造的，如果将其每块砖用一个从1开始的正整数进行标号，那底面边长为5的金字塔建造过程可以通
过下面这个矩阵加以描述。
    
    
    1 2 3 4 5
    16 17 18 19 6
    15 24 25 20 7
    14 23 22 21 8
    13 12 11 10 9
    
现在请根据给定的底面边长N，仿造上述矩阵描述金字塔的建造过程。
## Input
多组测试数据。
每组数据一行，一个正整数N(1<=n<=50)，表示金字塔的底面边长。
## Output
对于每组数据，输出一个N*N的矩阵，矩阵中每个数使用空格隔开。(具体格式请参照样例)
## Sample Input
    
    
    5
    
## Sample Output
    
    
    1 2 3 4 5
    16 17 18 19 6
    15 24 25 20 7
    14 23 22 21 8
    13 12 11 10 9
    
    
]]
content[284]=
[[
# Archaeology-Mexico
## Problem Description
平行世界中的考古学家Darkness Wong在完成了危地马拉的考古研究后又来到了另一个玛雅文化的中心——墨西哥。
一个偶然的机会，Darkness发现了提及公元2012年12月21日的新纪录。但由于年代久远，字迹难以辨认，只能从中寻找出完整的单词进行翻译。
已知Darkness随身携带的词典中单词大多是这样的形式：aa,aba,abcba,abcdedcba,workrow。
现在给出Darkness发现的新记录，请根据上述单词的规则，筛选出满足条件的单词，并输出。
## Input
多组测试数据。
每组测试数据第一行为一个正整数N(1<=N<=100)，代表新纪录中的单词个数。
接下来N行每行一个字符串(不含空格)，表示一个单词。
## Output
对于每组数据，输出若干行，每行输出一个满足筛选条件的单词(按照读入的前后顺序输出)。
## Sample Input
    
    
    3
    aa
    ab
    aba
    
## Sample Output
    
    
    aa
    aba
    
    
]]
content[285]=
[[
# Ryan's Life Game
## Problem Descripton
Ryan最近很寂寞，没有人陪他玩，于是他自己编一个“零人游戏”——生存游戏。
游戏在n*m的细胞组成的矩阵里进行，每个细胞每个时刻的状态可能是“存活”或者“休眠”两种,细胞矩阵的状态会按以下规则进行演化：
一个存活状态的细胞，在某一秒，若周围的存活状态的细胞数目不足两个，则下一秒将由于孤独而进入休眠状态。
一个存活状态的细胞，在某一秒，若周围的存活状态的细胞数目超过三个，则下一秒将由于过度拥挤而进入休眠状态。
一个存活状态的细胞，在某一秒，若周围的存活状态的细胞数目为两或三个，则下一秒将继续保持存活状态。
一个休眠状态的细胞，在某一秒，若周围的存活状态的细胞数目为正好三个，则认为是比较适合生存的状态，将于下一秒进入存活状态。
这里“周围”的范围包括一个细胞的上、下、左、右、左上、左下、右上、右下的细胞，如果存在的话。
现在，给定一个初始状态（即第0秒时的状态），请按照规则计算第t秒时的状态。
## Input
多组测试数据。
对于每组测试数据，第一行为三个空格隔开的整数：n、m和t。（1<=n,m,t<=100）
第二行开始的n行，每行m个字符，“0”或“1”分别代表休眠状态与存活状态的细胞。
## Output
对于每组测试数据，输出n行，每行m个“0”或“1”，表示第t秒时的状态。
## Sample Input
    
    
    5 5 1
    00000
    01100
    01010
    00100
    00000
    
## SampleOutput
    
    
    00000
    01100
    01010
    00100
    00000
    
    
]]
content[286]=
[[
# Ryan's Calculator
## Problem Description
Ryan最近在和快要挂了物理实验决斗！做物理实验经常要用到计算器。
于是Ryan发现计算器上面显示的数字都很人性化。
比如先按"0"后"1"按不会出现"01"这个数，而是出现"1"（第一下按"0"屏幕上的"0"不变，第二下按"1"屏幕上的"0"消失，显示的数字变为"1"）。
比如直接按下"1"，屏幕上的"0"会消失，显示内容变为"1"，但是按下"."，屏幕上的"0"则不会消失而是显示"0."
比如按下"100000"后显示的是"100000"，而按下"00000"则显示的还会是"0"。
于是他想让你写个程序满足计算器的格式，并实现一些简单的计算功能。
## Input
多组测试数据。
对于每组测试数据，第一行为一个数字n(1<=n<=1000)，表示接下来Ryan会按下n个键。
接下来n行，每行一个字符，代表Ryan按下的键。
除了"0"~"9"十个数字外，Ryan还可能按下"=" ， "." ， "+" ， "-" ， "*" 和 "/"。
可能会出现运算符，且只能为"+" ， "-" ， "*" 或 "/"。
若一组数据中出现多个运算符则保证这些运算符运算优先级相同（例："+"和"-"相同，"*"和"/"相同）。
## Output
对于每组测试数据，共n行。
Ryan每按下一个按钮，都要输出此时计算器屏幕上的显示内容。
按下等号（"="）后输出运算结果，有时按下运算符也可能会输出结果（比如1+1+，按下第二个加号时应输出2）。
所有运算出的结果输出到屏幕上时均保留6位小数。
## Sample Input 1
    
    
    12
    0
    0
    0
    1
    0
    +
    0
    .
    3
    0
    1
    =
    
## Sample Output 1
    
    
    0
    0
    0
    1
    10
    10
    0
    0.
    0.3
    0.30
    0.301
    10.301000
    
    
## Sample Input 2
    
    
    8
    1
    =
    6
    *
    1
    *
    2
    =
    
## Sample Output 2
    
    
    1
    1.000000
    6
    6
    1
    6.000000
    2
    12.000000
    
    
## Hint
按下符号键，若此前只输入了一个操作数，则屏幕上显示的内容不变，故重新输出一次和上次一样的内容。若已经输入了两个操作数，则此时应该输出运算结果到屏幕，并将该运
算结果作为下次运算的第一个操作数。
若没有按下符号键，而直接按下等号键，则输出屏幕上相同内容。
保证不会连续按下等号，但不保证按下等号后不再继续输入。
不保证按下某个符号后下一步不会按下其他符号。
如对某些情况的具体过程不清楚，可在“附件”中打开“计算器”自行尝试。
]]
content[287]=
[[
# Move The Box
# 题目描述
Special Judge
最近屌丝的妹子迷上了Move The Box 这个手机游戏，她总缠着屌丝帮她过关。但是屌丝智商拙计，总是不能过关。你能帮助屌丝过掉这个游戏么？
1. 游戏的组成：
游戏由各种不同的盒子组成，相同的盒子会用相同的字母表示，不同的盒子会用不同的字母表示。
2. 游戏的目的
以最小的步数消除掉所有的盒子。
3. 游戏的步骤
移动盒子。在重力的影响下盒子自由下落。在最终状态如果存在一个箱子存在于同行或者同列的连续三个或者更多相同的盒子中(具体见Hint)，则这个盒子会自动消除。
每一次移动的方案格式为 Integer , Integer , String.
前两个数字代表从底向上看的坐标,和从左向右看的坐标（从1开始）。最后一个String用”Left” , “Right” ,”Down”
,”Up”代替。表示的含义分别是将当前块向左、右、上、下移动。要求保证不移出边界。
不允许移动空地。
如果移动的目的地没有箱子，那么移动过去即可。如果有箱子的话，本次移动是将两个箱子交换。
4. 关卡举例
a) 关卡原貌
![<img:/richtext/res/192/x1.png>](/richtext/res/192/x1.png)
b) 关卡输入
    
    
    7 7
    ...H...
    ...H...
    .HHSHH.
    .SBHBS.
    .HHSHH.
    .SBSBS.
    HSBHBSH
    
c) 关卡输出
    
    
    1
    4 4 Down
    
或者
    
    
    1
    3 4 Up
    
d) 关卡实施步骤
i. 移动后一行消除。并由于重力下降
![<img:/richtext/res/193/x2.png>](/richtext/res/193/x2.png)
ii. 继而又有几列消除，并由于重力下降
![<img:/richtext/res/194/x3.png>](/richtext/res/194/x3.png)
iii. 所有的都一样，消除
![<img:/richtext/res/195/x4.png>](/richtext/res/195/x4.png)
iv. 成功以最小步数完成
![<img:/richtext/res/196/x5.png>](/richtext/res/196/x5.png)
# Input
第一行一个整数，数据组数T(<=35)。
对于每一组数据，第一行是两个整数N , M。代表地图有N行M列
然后是N * M 的矩阵，每个元素是一个”.”或者一个大写字母代表箱子。
1 <= N , M <=10
保证所有关卡都有解并且解的最多3步。
# Output
第一行输出你得到的最小步数，以下几行分别代表的是你的移动方案。
每组数据后面有一个空行
如果有多解输出任意一组即可
# Sample Input
    
    
    5
    1 4
    AA.A
    2 3
    .R.
    RR.
    2 4
    .R..
    RR.R
    2 3
    RBR
    BRB
    3 2
    BG
    GB
    GB
    
# Sample Output
    
    
    1
    1 4 Left
    
    1
    2 2 Right
    
    1
    1 2 Right
    
    1
    2 2 Down
    
    1
    3 1 Right
    
# Hint:
## Level 1
![<img:/richtext/res/188/l1.png>](/richtext/res/188/l1.png)
Input:
    
    
    1 4
    AA.A
    
如图只需要把最右边的块往左一步即可。即1 4 Left
## Level 2
![<img:/richtext/res/189/l2.png>](/richtext/res/189/l2.png)
Input：
    
    
    2 3
    .R.
    RR.
    
可以将上层的箱子右移或者讲底层最右右移即可。2 2 Right 或者 1 2 Right
## Level 3
![<img:/richtext/res/187/l3.png>](/richtext/res/187/l3.png)
Input:
    
    
    2 4
    .R..
    RR.R
    
可以将上层的箱子右移或者讲底层最右右移即可。2 2 Right 或者 1 2 Right
## Level 4
![<img:/richtext/res/190/l4.png>](/richtext/res/190/l4.png)
Input:
    
    
    2 3
    RBR
    BRB
    
2 2 Down 或者 1 2 Up
## Level 5
![<img:/richtext/res/191/l5.png>](/richtext/res/191/l5.png)
Input:
    
    
    3 2
    BG
    GB
    GB
    
将最上面一层交换
# Source
Problem by : BUAA_Dshawn
Special Judge by : BUAA_Barty
]]
content[288]=
[[
# 排队编程啦
# 题目叙述
Special Judge
![<img:/richtext/res/213/1.jpg>](/richtext/res/213/1.jpg)
自从BUAA进入Final之后，无数妹子慕名前来仰慕神一样的GG、MM、Barty，并且希望加入BUAA-ACMer的阵容当中。
不过因为是新手，他们的战力都只有0~9 T_T，战力分布均匀，各占10%。GG、MM专注于OSU，所以让战力1 NA(6.02*10^23)的Barty同学
来组织他们站队。Barty有了Bella对妹子们也不太感冒，于是让他们随便站。但是妹子们也不愿意随便站，他们会按照如下的规律站队：
0、站队
有无穷个人。站无穷多个队伍。Barty的任务是在这无穷个队伍里面选取要满足他要求的队伍。
1、队首
站在队首的妹子的战力是随机的，也就是战力0~9概率相同。
2、队长度
作为Input输入，给N作为队伍的最长长度，并且队伍长度在1~N也是随机的。
3、排队顺序
妹纸们也不喜欢随便站，所以她们站队也是有规律的——给入一个10*10
的矩阵，第i行第j列代表战力为i的人站在战力为i的人后面的概率。以百分比的形式输入。（即是0~100的整数）
4、站队的方式
首先按照1/N
的概率确定队伍长度，再按照10%的概率随机选择第一位同学的战力值。后面依次站队，如果某人的战力是X并且后面依然有人的话，那么后面那个人战力是Y = 0 ,
1 , 2 , 3.... 的概率就分别是矩阵的第X行第Y列。。
有了这些规律之后，一个庞大的军队就诞生了。这时候Barty让队尾的那个人做领队。这时候Barty想问你——如果希望战力是0~9的每种战力的领队都至少有一个的
话（即有0,1,2,3,4,5,6,7,8,9），那么他要选出的队伍的期望是多少？
# Input
第一行是数据组数T(<=500)。
对于每一组数据第一行是一个整数N(N<=10^12)代表队伍最长的长度。
之后是一个10*10 的矩阵。
# Output
只有一行，代表Barty要得到的期望。小数点后输出三位小数。
P.S. 用 printf("%.3lf",ans); 就可以啦^_^
只要和答案的误差率小于千分之一就算正确
# Sample Input
    
    
    1
    100
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    10 10 10 10 10 10 10 10 10 10
    
# Sample Output
    
    
    29.290
    
# Hint For Sample
首先是队伍长度，是1~100的随机数。那么长度是i (i = 1 , 2 ,... , 100)的概率都是0.01.
其次是队首的战力，是0,1...9 的概率都是0.1.
所以依次传递，那么对于每个队伍，队尾的战力为0,1,2,3...9 的概率都是0.1 .
那么这个情况下， 也就是随机选一个队伍的话战力是i(i = 0 , 1 , ... , 9 ) 的概率就都是0.1 ，
于是能同时选到存在0~9战力的队尾的期望就是29.290。
T_T 够清楚了吧。。
# Source
BUAA_Dshawn
]]
content[289]=
[[
# 求程序的解
# 题目叙述
妹子问董适一个题目，说她的算法肯定是对的，但是不知道为啥Staus总是返回——Time Limit
Exceeded！！！OMG。。你能帮助董适解决他妹子的问题么？
    
    
    #include <stdio.h>
    int a[100001] , n , k;
    int T;
    int main(){
    	scanf("%d" , &T);
    	while(T--){
    		int i , j , p , q;
    		scanf("%d%d" , &n , &k);
    		for (i = 1 ; i <= n ; ++i) scanf("%d" , &a[i]);
    		long long ans = 0;
    		for (i = 1 ; i <= n ; ++i)
    			for (j = i ; j <= n ; ++j){
    				bool ok = true;
    				for (p = i ; p <= j ; ++p){
    					int cnt = 0;
    					for (q = i ; q <= j ; ++q){
    						if (a[p] == a[q]) ++ cnt;
    					}
    					if (cnt > k) ok = false;
    				}
    				if (ok) ++ ans;
    			}
    		printf("%lld\n" , ans);
    	}
    	return 0;
    }
    
# Input
第一行是数据组数T。 T <= 20
第二行是两个整数n , k. 1 <= n <= 100000 , 0 <= k <= n
接下来是n个在[1 , 1000000000] 以内的整数
# Output
每组数据输出一行，代表上述程序的输出
# Sample Input
    
    
    2
    5 1
    3 2 2 3 3
    5 2
    3 2 2 3 3
    
# Sample Output
    
    
    7
    14
    
# Hint
请用scanf读入printf输出，或者IO加速读入输出。cin,cout会超时。
# Source
BUAA_Dshawn
]]
content[290]=
[[
# 得了多少奖
# 题目叙述
2005年以来，北航在ACM/ICPC竞赛中取得了骄人的成绩，详见
# Input
多组询问，每组询问占一行，为某个人的学号(只由字母和数字组成)
# Output
对于每组数据输出一行。格式为
    
    
    ?Au ?Ag ?Cu ?Fe
    
其中Au表示金奖，Ag表示银奖，Cu表示铜奖，Fe表示优胜奖
# Sample Input
    
    
    35060622
    38211212
    
# Sample Output
    
    
    2Au 5Ag 2Cu 0Fe
    1Au 6Ag 0Cu 0Fe
    
# Source
BUAA_GG
]]
content[291]=
[[
# GGCD
# 题目叙述
As we know, given two numbers A and B, it is easy for us to calcuate the
Greatest Common Divisor (GCD) of A and B, we write it by gcd(A, B)
But GG think it so easy to just let you calculate it.
So now your task it to calculate ggcd(A, B)
We define
ggcd(A, B) = gcd(A, B ^ B).
Notice: B ^ B does NOT mean B xor B, it means B multiply by himself B times
# Input
Multiply test case, each case per line.
Each line 2 integers A, B, safisfying 1 <= A, B <= 1000
# Output
For each test case output one line( one number ), indicating the value of
ggcd(A, B)
# Sample Input
    
    
    100 1
    100 2
    
# Sample Output
    
    
    1
    4
    
# Source
BUAA_GG
]]
content[292]=
[[
# Party
# Problem Description
传说2012.12.21是某一个平行世界的末日。
作为这个世界中的一员，Ninja Gielch，决定要在末日的前一天晚上举行一个舞会。
他不断地通过各种社交工具，吸引了一大堆好朋友前来参加。
经过他的不完全统计，他发现，某一些人只想跟某一些人跳舞（默认是双人舞- -||）
他想知道，在这种情况下，最多有多少对人能跳舞。
# Input
有多组数据(直到文件末)。
每组数据第一行有两个无符号整数n,m（n<=520,m<=520），表示有n个女生，m个男生。
接下来有n行，第i行第一个无符号整数k，表示第i个女生只想跟k个男生跳舞，接下来有k个整数a[i][j](1<=j<=k,1<=a[i][j]<=m)，表示
这个女生只想跟第a[i][j]个男生跳舞。
（这里默认所有男生都愿意跟所有女生跳舞=。=）
# Output
每组数据输出一个无符号整数max_pair，表示最多有max_pair对人能跳舞。
# Sample Input
    
    
    3 3
    2 1 2
    1 1
    1 2
    
    3 3
    2 1 2
    1 1
    1 2
    
# Sample Output
    
    
    2
    2
    
# Source
BUAA_LiJiancheng
]]
content[293]=
[[
# 掷骰子
# 题目叙述
寂寞的GG每天都在和自己和自己玩掷骰子游戏来打发时间。但是GG毕竟是GG，GG的骰子是不光有6面的，并且有4面的，8面的，...k面的。所幸的是，这些骰子都
是均匀的，并且掷出后有且只有一面朝上。GG喜欢大的数字，掷出的数字越大，他就越高兴。GG每次都是把所有的骰子一次性的全部掷出，你可以假设，GG的欢乐值为所有
骰子朝上的数字的和。
现在坏坏的你要在骰子上贴数，注意你只能贴自然数，并且每个自然数最多只能用一次，你希望GG的欢乐值越小越好。那么假设你足够的聪明，请问GG的欢乐值的期望是多少
？
# Input
多组数据，每组数据的占一行。
首先为一个n，表示GG总共有n个骰子。接下来是n个数，c1, c2, ..., cn， 表示每个骰子的面数。
( 1 <= n <= 10, 1 <= ci <= 10)
# Output
对于每组数据输出一行( 保留两位小数 ), 表示GG的欢乐值的期望。
# Sample Input
    
    
    10 1 1 1 1 1 1 1 1 1 1
    1 10
    
# Sample Output
    
    
    45.00
    4.50
    
# Source
BUAA_GG
# Hint
printf("%.2f\n", ans);
cout << fixed << setprecision(2) << ans << endl; //#include <iomanip>
]]
content[294]=
[[
# 芝麻开门
# Problem Description
在GG的面前有n个房间(编号为1..n)，每个房间(设为i)中有2把钥匙，其中一把为第i-1号房间的钥匙(这是确定事件)，另一把为第j号房间的钥匙(j =
1..n)都有可能(这是科能事件)；并且两把钥匙可能是同一个房间的钥匙，也可能不是。特别地，第1号房间内只有一把钥匙(为第j号房间的钥匙，j =
1..n都有可能)。
显然，房间内的钥匙总共有 n ^ n 种可能的分布，现在GG想知道，有多少种可能的分布情况，可以使得GG可以访问到所有的房间(目前GG只有第1号房间的钥匙)
# Input
有多组数据。
每组数据占1行，为一个整数n (1 <= n <= 100)
# Output
每组数据输出一行，为一个整数，表示使得GG可以访问到所有房间的钥匙的分布数。
考虑到这个数很大，你只需要输出它 modulo 20121215 的结果~~~
# Sample Input
    
    
    1
    2
    
# Sample Output
    
    
    1
    2
    
# Source
BUAA_GG
]]
content[295]=
[[
# Taylor
# Problem Description
Jennic Ghail刚刚学完Taylor公式，然后数学老师给了他一道题：
已知arctan(1/a) = arctan(1/b) + arctan(1/c)，求2012/(b*c-a*b-c*a)。
看完题目他就没信心做了，于是交给你了。
# Input
有多组数据(首先是一个数T，表示T组数据，接下来的T行，每行一组数据)。
每组数据有两个无符号整数a, b（均小于20121221)。
# Output
每组数据输出2012/(b*c-a*b-c*a)的值，为了简单起见，如果是小数，直接取整。
比如：答案是1.8，则输出1。
# Sample Input
    
    
    1
    1 2
    
# Sample Output
    
    
    2012
    
# Source
BUAA_LiJiancheng
]]
content[296]=
[[
# 快来打飞机
# Problem Description
自从电脑从床上摔下来就奇热无比，显卡温度100+， 尼玛背景写了两遍都中途宕机了...
不想再写第三遍了，直接说抽象后的模型了。。。
已知:
敌方飞机：地心坐标系下坐标(Xp, Yp, Zp)
我方雷达：地心坐标系下做小(Xr, Yr, Zr)
求:
以我方雷达为参考系的反身坐标系(ENU)下，敌方飞机的坐标(x, y, z)
# 基础知识/约定
如果这里和教材不一样以教材为主，这里是作者乱说的
O表示地心，r表示雷达
地心坐标系OXY平面为地球纬度为0的大圆所在平面，其实X轴指向东京0度，Y轴指向东京90度，Z轴指向北极
这里采用常见的东北天(East North Up, ENU)坐标系，rxy平面为雷达相对于地球的切平面，x轴指向东，y轴指向北，z轴指向Or方向(天)
什么，你还想知道地球半径——去问搜索引擎去吧...不建议用某度...
# Input
有多组数据。
每组数据占一行，6个实数
    
    
    Xr Yr Zr Xp Yp Zp 
    
# Output
每组数据输出占一行，为3个实数，中间用空格分隔
    
    
    x y z
    
如果你的答案相对于正解在1km之内，都认为是正确的...(数据保证敌方飞机不会在北极/南极附近)
# Sample Input
    
    
    -2168576.84629 4393333.54009 4071338.86988 1040301.89614 5906313.11988 2169229.40129 
    
# Sample Output
    
    
    -3547106.29935 -1418084.59101 -1269292.48673
    
# Source
BUAA_GG
]]
content[297]=
[[
# 发气球啦
# 题目叙述
ACM比赛的一个特色，就是每当选手通过一道题目，求由工作人员挂上一枚气球，在之前的比赛中，都是由工作人员盯着status页面，来观看是否有选手通过题目，这是
一个很累的工作。于是GG想编写一个小程序，可以代替工作人员完成这个枯燥的工作。
这个监视程序，GG打算分两层，
1. 负责反复读取status页面，并处理成特定的格式，转发给第2层
2. 从第1层接受到数据后，经过运算，展示给用户(告诉该发给谁气球了...)
其中的第1层，GG想请聪明的你来帮忙。
目前GG已经实现的是，通过http请求，获得页面的html源码(类似于[这样](/richtext/res/176/sample.in.txt)). 并且为
了给你减轻负担，已经去掉了其中的所有中文字符(否则编码问题很恶心的)，而你需要做的，是帮忙从这种乱七八糟的html源码，提取出以下信息(只需要Accept的
记录)
    
    
    编号 题号 用户ID
    
建议你把main函数写成这样
    
    
    #include <iostream>
    #include <string>
    using namespace std;
    
    string resolve(string);
    
    int main(){
        string s;
        getline(cin, s, '\0');
        string t = resolve(s);
        cout << t;
    }
    
    string resolve(string s) {
        //blablabla
    }
    
# Input
输入为status页面的http源码
# Output
输出为若干行，每行表示一个AC记录
# Sample Input
详见[这里](/richtext/res/176/sample.in.txt)，也就是[这个网页](http://acm.buaa.edu.cn/conte
st/58/submission/all/)的源码
# Sample Output
    
    
    62217 E crazy
    62216 E geagerg
    62212 E clx5108
    
# hint
对于本场比赛，可以看[本页面](http://acm.buaa.edu.cn/contest/63/submission/all/)的源代码~~~~
# Source
BUAA_GG
]]
content[298]=
[[
# Find Courage
### Description:
Courage在撒哈拉倒卖切糕渐渐有了点钱，交的税也越来越多。眼看着这么多钱就给了政府，Courage心痛万分，于是他决定要逃税！
不料隔壁ZMZ通过学霸式计算发现了这件事，拿着一堆证据去政府换了几千块举报奖励，Courage也立即被通缉。
在逃亡过程中Courage换了n个名字以躲避追击，这让警方头痛不已，于是他们想用计算机减少一点工作量，至少先把可能和Courage有关的信息筛选出来。
现在警方有一份活动记录，大概10000个字符左右，然后有一份Courage曾经使用过的名字列表，大概200个名字，他们想找出活动记录中这些名字出现的位置。
### Input:
一组数据
第一行是一个字符串，只包含小写字母，表示活动记录，长度不超过10000
接下来一行是一个整数n，表示名字的个数，n不超过200
接下来每行一个名字，长度不超过10
### Output:
对于每个名字，如果在记录中出现过，输出一行"I find him in position i!"，其中i是这个名字第一次出现的位置
如果名字没有出现过，输出一行"He's not here."
### Sample Input:
    
    
    davidsaidthatjasonwouldcometocouragesroomtomorrow
    5
    david
    courage
    lily
    comet
    rager
### Sample Output:
    
    
    I find him in position 1!
    I find him in position 30!
    He's not here.
    I find him in position 24!
    He's not here.
    
]]
content[299]=
[[
# ZMZ's Game
### Description:
作为一个宅男，ZMZ很喜欢玩游戏。
作为一个学霸，ZMZ玩的游戏很高端。
比如像hang-man这样的游戏。
什么？你不知道hang-man？好吧，解释一下。
首先，有这么个图片，里面是一个绞刑架
![<img:/richtext/res/215/1.png>](/richtext/res/215/1.png)
首先，系统会挑选一个单词，告诉你这个单词有多少个字母。
玩游戏的人每次可以从26个字母里面挑选一个。
如果这个单词里面有这个字母，那么系统会告诉你它们出现在什么位置。当这个单词每个位置都被猜到了，那么玩家获胜。
如果单词里没有这个字母，那么系统每次会把一个小人的头、手、身体、脚共5个部分画一个在图片上。当这个小人画完，再猜错一次，就会画一根绳子把小人吊起来，这时候小
人就被吊死了，玩家失败。
大概如下图所示
![<img:/richtext/res/217/2.png>](/richtext/res/217/2.png)
ZMZ发现这游戏有点难玩，于是想借助字典。
他希望能够查找带问号的单词，比如i?p??ta?t，?表示这个位置任何字母都可以。这样就方便查找这个游戏里面的单词。
### Input:
一组数据
第一行一个整数n，表示字典共有n个单词，n不超过10000
接下来n行每行一个单词，长度不超过10
接下来一行一个整数m，表示ZMZ希望查找的次数，m不超过2000
接下来m行每行一个单词（带问号），表示ZMZ查询的单词，长度不超过10
### Output:
对于每个查询，首先输出一行"List i:"表示这是第i个查询
然后对于字典中每个匹配的单词，按照字典里面的顺序依次输出，每个单词占一行
每个查询后面输出一个单独的空行
### Sample Input:
    
    
    6
    import
    export
    expert
    report
    deport
    important
    4
    i?????
    ??port
    e?p?rt
    ?epor?
    
    
### Sample Output:
    
    
    List 1:
    import
    
    List 2:
    import
    export
    report
    deport
    
    List 3:
    export
    expert
    
    List 4:
    report
    deport
    
]]
content[300]=
[[
# Find Virus
### Description:
为了躲避政府搜查，同时也由于现代商业的需要，Courage现在低调的在某数字公司做一个程序员。
老板交了个任务说要快速查找病毒，Courage表示作为非安全专业人士压力很大，不过他想了个不错的办法。
病毒比较难查是因为变种比较多，而好消息是其核心部分一般不怎么变，所以可以简单的拿已经发现的病毒的核心部分去对比，如果发现某程序含有核心代码即可认为这是个病毒
。
不过风险还是挺大的，毕竟自己这个程序就包含了核心代码库，所以搞不好就把自己给删了……
抛开小概率事件不谈，这个设想还算不错，然而作为大学水过的Courage表示这依然难以实现，于是还是交给各位吧。
### Input:
第一行为一个整数t，表示有t组数据，t不超过10
每组数据两行，分别为带匹配程序代码和病毒核心代码，均以一个字符串表示（只含有小写字母）
两个字符串长度均不超过10^6
### Output:
每组数据输出一行，如果匹配成功，则输出核心代码第一次出现的位置，否则输出"No"
### Sample Input:
    
    
    2
    thisisavirus
    virus
    thisisnotavirus
    iamvirus
    
    
### Sample Output:
    
    
    8
    No
    
]]
content[301]=
[[
# Jason's girlfriend's diamond
### Description:
Jason有女友了(撒花，鼓掌，礼炮响！)。眼看女友马上就要生日了，Jason决定给女友送个惊喜。于是准备了一颗精美的1024克拉的钻石！但是，他觉得一颗有
点不够。于是他又去搞了一颗。现在出现难题了，已知这两颗钻石为底面半径分别为R1和R2的圆柱形钻石，他想装在一个盒子里送给女友。好不容易找到了一个长方体的盒子
，其底面为A*B的矩形，他感觉好像钻石装不进去，但又不敢轻易塞进去试试。现请你帮他判断两个钻石能否放进盒子里(宝石只能竖直放置，且不能堆叠)。
### Input:
输入的第一行是一个整数，为数据的组数t（t<=1000）。
每组数据占一行，包括4个数A，B，R1，R2，均为不超过104的正整数。
### Output:
对于每组数据，若两个钻石能放进盒子中，则输出YES，否则输出NO。
### Sample Input:
    
    
    2
    10 10 1 1
    10 10 4 4
### Sample Output:
    
    
    YES
    NO
]]
content[302]=
[[
# robbery
### Description:
满城都是警车鸣笛声，究竟发生了什么？细看路边的通缉令，原来本市最大的珠宝行被抢劫了。更令人感到震惊的是劫匪居然是Jason！
当你回到家中想看看新闻弄明白究竟发生了什么的时候，突然Jason给你打来了电话向你求救。他现在在A(x1,y1)点，需要直线直接到达点B(x2,y2)方可摆
脱警察的追捕。
他说他是被冤枉的，回头一定跟你解释清楚。
你是选择帮他还是不帮他呢？
i).帮他。你通过技术手段发现警察正在沿C(x3,y3)D(x4,y4)展开搜索行动，线段CD上都是警察。你的任务是帮Jason判断他的逃跑路线是否会穿过搜
索线而被警察抓住。
ii).不相信他的鬼话。请按alt+F4。。。
### Input:
多组测试数据
对于每组测试数据，有8个实数
x1 y1 x2 y2 x3 y3 x4 y4
表示A(x1, y1),B(x2 y2),C(x3, y3),D(x4, y4)
### Output:
对于每组测试数据，如果Jason不能成功逃脱，请输出1，否则输出0
### Sample Input:
    
    
    1 1 2 2 1 1 3 3
    
### Sample Output:
    
    
    1
### Hint
从搜索线的边缘经过也是会被抓住的
]]
content[303]=
[[
# 梦
# 题目描述
![<img:/richtext/res/235/1.jpg>](/richtext/res/235/1.jpg)
小DS做了一个梦，他梦见自己变成了柯南T_T，他潜入了黑衣组织的基地核心，找到了破解黑衣组织的密钥！！！。
密钥的组成是很多个整数对n , m (1 <=n <= 1000 , 1 <= m <= 1000)。
DS知道把n个非负整数和为m的所有解都求出来（1+2+1，1+1+2，2+1+1算三种解），然后挑出其中非0的所有元素相乘，最后让结果对1000000007
（1e9+7）取余数得到的就是黑衣组织系统的密码！！！可是正当他计算的时候，门外传来了琴酒和伏特加的脚步声。你能帮助DS求出他要的答案么。
# 你可能用到的一些定理和性质
## 欧拉定理
在数论中，欧拉定理（也称费马-欧拉定理）是一个关于同余的性质。欧拉定理表明，若n,a为正整数，且n,a互质，则a^φ(n) ≡ 1 (mod n)。
## 费马小定理
a是不能被质数p整除的正整数，则有a^(p-1) ≡ 1 (mod p)
## Barty-Bella大定理
没有过不了的神题，只有不勤奋的Coder！
# 输入
第一行是一个整数T(T <= 2000)，代表桌面上的整数对数。
每组数据包含两个数字n , m 代表密钥。
# 输出
输出T行，每行一个整数，代表密码。
如果无解输出 "Poor Conan T_T", 不含引号
# 样例输入
    
    
    2
    3 3
    2 2
    
# 样例输出
    
    
    1728
    4
    
# Hint
对于第一组数据，3 = 0 + 1 + 2 = 0 + 2 + 1 = 1 + 0 + 2 = 1 + 2 + 0 = 2 + 1 + 0 = 2 + 0
+ 1 = 1 + 1 + 1 = 3 + 0 + 0 = 0 + 3 + 0 = 0 + 0 + 3。
因此答案就是1 * 2 * 2 * 1 * 1 * 2 * 1 * 2 * 2 * 1 * 2 * 1 * 1 * 1 * 1 * 3 * 3 * 3 =
1728.
对于第二组数据, 2 = 0 + 2 = 2 + 0 = 1 + 1
因此答案就是 2 * 2 * 1 * 1 = 4.
# Source
BUAA_Dshawn
]]
content[304]=
[[
# 合并果子
# 题目描述
这天小董看见这样一个题目：
![<img:/richtext/res/221/1.jpg>](/richtext/res/221/1.jpg)
## 合并果子
    
    
        在一个果园里，多多已经将所有的果子打了下来，而且按果子的不同种类分成了不同的堆。多多决定把所有的果子合成一堆。 
        每一次合并，多多可以把两堆果子合并到一起，消耗的体力等于两堆果子的重量之和。
        可以看出，所有的果子经过n-1次合并之后，就只剩下一堆了。多多在合并果子时总共消耗的体力等于每次合并所耗体力之和。 
        因为还要花大力气把这些果子搬回家，所以多多在合并果子时要尽可能地节省体力。假定每个果子重量都为1，并且已知果子的种类数和每种果子的数目.
        你的任务是设计出合并的次序方案，使多多耗费的体力最少，并输出这个最小的体力耗费值。 
        例如有3种果子，数目依次为1，2，9。可以先将1、2堆合并，新堆数目为3，耗费体力为3。
        接着，将新堆与原先的第三堆合并，又得到新的堆，数目为12，耗费体力为12。所以多多总共耗费体力=3+12=15。可以证明15为最小的体力耗费值。 
    
英明神武的他，猜到这是简单的贪心问题，每次把最小的两堆合并就可以了。于是他让妹子拿来了N堆不一样口味的果子，看看是不是这个答案。
他把每种口味的果子按照1 , 2 ,...., N标号。然后开始了他的实验。小董每次都会选择两堆果子"最少的"合并：有时候小董会发现有很多堆的果子数量相同，
并且必须在其中选择几堆。聪明的他想出来一个方法——比较每堆中果子口味编号最小的果子，编号小的优先拿~
但是他的实验不是很顺利，一旁作为神级吃货的妹子看着那么多的果子按捺不住了。他跟小董说你做实验可以，不能耽误我吃东西T_T。
怕胖的她是有节制的，她跟小董说好在小董的第 P 次合并之前（初始状态是第0次）她将会吃 Y 个 X 口味的果子。（保证果子是足够她吃的并且不会吃光）
因为妹子的干扰，小董每次在她吃完果子之后，都要改变选择的策略，在小董提出抗议之后，妹子作为抱歉，说在 Q 次合并之前她吃完果子之后，会买 Y 个 X
口味的果子，放在有Y口味果子的那堆里面。
小董非常爱妹子，就答应了。
搞定实验已经呼哧带喘了，他想问你他花费了多少体力值。
# 输入
第一行输入一个整数 T 代表小董做实验的次数.(T <= 20)
每一组数据第一行三个整数 N , A , B 。 代表果子的数量，妹子吃果子的次数和妹子放果子的次数。N,A,B <= 10000
下一行N个整数ai ， 代表口味为i的果子初始有ai个。ai <= 100000
下面A行每行三个整数P ，X ，Y （1 <= P <= N - 1 , 1 <= X <= N , 0 <= Y <=
100000）,代表P次合并之前妹子会吃掉 Y 个 X 口味的果子。
下面B行每行三个整数P，X，Y（1 <= P <= N - 1 , 1 <= X <= N , 0 <= Y <=
100000）,代表P次合并之前妹子会往含有X口味果子的堆里面放Y个X口味的果子。
# 输出
每组样例输出一个整数 K 代表小董花费的体力值。
# 样例输入
    
    
    1
    3 2 2
    3 3 3
    2 2 1
    1 1 1
    1 1 1
    2 2 1
    
# 样例输出
    
    
    15
    
# Hint
对于第一个数据，妹子还是很乖的，每次吃几个就补充几个。于是实验的过程为：（X：Y） 代表一堆中含有X口味的果子Y个
    
    
    0 ： （1:3） (2:3) (3:3)    消耗0
    0->1 妹子吃掉的果子都补充上了。因为都是三个，小董选择包含最小的口味编号的两堆果子
    1 :  （1:3 , 2:3） (3:3)    消耗6
    1->2 妹子吃掉的都补充上了 
    2 :   (1:3 , 2:3 , 3:3)     消耗6 + 3 = 9
    
    所以答案就是 6 + 9 = 15
    
# Source
BUAA_Dshawn
]]
content[305]=
[[
# Little Busters!
# Problem Description
2012年10月6日，『Little Busters!』动画版开始播放。LJC和他的同学经常会每周都去看一集。
（以下内容会剧透，请慎入！如果不想剧透，可跳过这一段。）
然后刚刚看完的是第11话，『ホラー·NO·RYO大会』，内容主要讲述恭介让Little Busters的队员在晚上去教学楼找他预先放好的几张纸条。由于是在晚
上，所以除了来谷之外的几个女生都非常害怕。而恭介总是会在不同的教室里放置不同的道具来恐吓他们。
LJC就想，把每个教室抽象成一个点，那么n个教室就相当于n个点。由于不同的教室之间可以相互到达，所以这些点被m条双向的路连接着，且两个点之间可能有多条路。由
于每条路的灯光效果不同，那么队员在这条路上走的RP也不同，这里假设走某条路有一个给定的RP值。假设理树已经知道了纸条放在哪里，他想知道，如何选择路径，使得他
所经过的所有道路的RP最大值与RP最小值之比最小。由于RP波动太大很容易引起理树的嗜睡症发作，所以他想知道比值的最小值是多少。（此乃改编，请Little
Busters爱好者原谅）
所以Mission Start!
# Input
第一行有一个无符号整数c(1<=c<=10)，表示有c组数据。
接下来每组数据第一行包含两个正整数，n（1<n<=500）和m(1<=m<=5000)，表示有n个点，m条双向边。
接下来m行每行包含三个正整数：x，y(1<=x,
y<=n，且x≠y)和rp(0<rp<30000)。表示教室x到教室y之间有一条双向道路，这条路上的RP值为rp。
第m+1行包含两个正整数s，t(1<=s, t<=n，且s≠t)，表示理树从s点出发，要到达t点（即纸条在t点处）。
# Output
对于每组数据，
如果理树无法拿到纸条，则输出“R U Kiddin'?”。
否则输出一个数，表示最小的RP比。若是整数，直接输出即可。若是分数，则输出一个最简分数（即分子与分母的最大公约数为1）。
# Sample Input
    
    
    2
    3 3
    1 2 10
    1 2 5
    2 3 8
    1 3
    3 1
    1 2 3
    1 3
    
# Sample Output
    
    
    5/4
    R U Kiddin'?
    
# Source
BUAA_LiJiancheng
]]
content[306]=
[[
# 分切糕
# Problem Description
Ninja Gielch很喜欢玩Fruit Ninja。由于熟能生巧，他现在切什么都很会切。
这天，ACM教练给大家买来了一大块切糕，一共是n克。恰好，ACM队员里一共有n个人，为了保证公平，每人吃一克切糕。
教练知道Ninja Gielch切技了得，所以把分切糕的任务交给了他。
把n克切糕在误差允许的范围内（其实就是目测大小一样=。=）切成n块1克的切糕对Ninja
Gielch自然不是问题。但是由于技术性太高，他需要大量的ATP来完成这个任务。
经过调查，他发现他把n克的切糕切成x克和(n-x)克后，需要消耗x*(n-x)单位的ATP。（其中1<=x<=n，且x为整数）
他想知道他完成任务最小需要消耗多少ATP，由于大量的计算要消耗更多的ATP，所以这个任务交给你了。
注意：Ninja Gielch每次总是选择一块切糕把它切成两份，完成任务所需的总ATP即每次切的操作所需的ATP的和。
# Input
第一行有一个无符号整数t(1<=t<=50)，表示有t组数据。
每组数据包含一个无符号整数，n（n<=2012)。（教练买不起大量的切糕=。=）
# Output
对于每组数据，输出“Ninja Gielch needs at least x ATP(s)!”，其中x表示Ninja
Gielch最小需要消耗的ATP。如当x=1时，输出“Ninja Gielch needs at least 1 ATP!”；当x=2时，输出“Ninja
Gielch needs at least 2 ATPs!”
若不需要消耗ATP，则输出“Mission Complete!”。
# Sample Input
    
    
    2
    1
    2
    
# Sample Output
    
    
    Mission Complete!
    Ninja Gielch needs at least 1 ATP!
    
# Source
BUAA_LiJiancheng
]]
content[307]=
[[
# Ryan's Tennis
## Problem Description
Ryan最喜欢看网球，其中大满贯比赛更是他的最爱。
由于四大满贯中的第一个大满贯赛事——澳大利亚网球公开赛，马上就要开始了。
所以Ryan希望你能帮他写一个程序来对网球比赛的比分进行模拟。
计分规则：
1.一局：
　　（1）每胜1球得1分，先胜4分者胜1局。
　　（2）双方各得3分时为“平分”（40:40），平分后，净胜两分为胜1局。
　　（3）“平分”后，胜一分者“占先”（AD）。
　　（4）“占先”后，占先者胜一分赢得该局，否则回到“平分”。
　　（5）得分依次为15, 30, 40。
（以15为计算单位也曾是一个谜。15、30、40这三个数字决不是由人们随意选用的。一位名叫琴·高斯林的人经过研究后认为，这三个数字一定是当时那些打网球的人所
熟悉或使用的测算单位，是参照天文的六分仪而来的。六分仪于1/6个圆一样，共有60度，每分又分60秒。当时的网球赛每局就有4分，4个15分为一度，和4个15度
构成1/6个圆一样，采用15为基数以计算每一分球的得失。至于45改成40，是为了报分发音的简便。早期的网球赛每盘为4局，每局有4分，17世纪初改成了每盘6局
，这个规则至今未变。）
2.一盘：
　　（1）一方先胜6局为胜1盘。
　　（2）双方各胜5局时，一方净胜两局为胜1盘
3.决胜局计分制：
　　决胜局为赢下该局后便可赢下本盘的局。
　　决胜盘为赢下该盘后便可赢下本场比赛的盘（在本题中即为2:2后的那盘，即第五盘）。
　　在每盘的局数为6平时，有以下两种计分制。
　　（1）长盘制：一方净胜两局为胜1盘。
　　（2）短盘制（抢七）：先得7分(小分为7，计分时采用每球1分)者为胜该局及该盘（若分数为6平时，一方须净两分），但决胜盘除外，决胜盘将仍采用长盘制。
  
4.短盘制的计分：
　　（1）先得到7分并领先对手两球者赢得此短盘。
　　（2）比分打到5：5，6：6，7：7，8：8……时，需连胜两分才能决定谁为胜方。
5.比赛的获胜：
　 　率先赢下三盘者为胜者。
## Input
多组测试数据。
对于每组测试数据，输入共一行，为一行只含有字符"A"或"B"的字符串。
"A"代表这一分A选手得分，"B"代表这一分B选手得分。
## Output
对于每个字符输出三行。
第一行为盘分。
第二行为局分。
第三行为小分。
需要对齐，具体对齐方式可参照Sample Output。
若某次得分后产生比赛胜者，如果A胜则输出"A wins!"，如果B胜则输出"B wins!"。
## Sample Input
    
    
    ABAABBAA
    
## Sample Output
    
    
      Set:  0 :  0
     Game:  0 :  0
    Point: 15 :  0
      Set:  0 :  0
     Game:  0 :  0
    Point: 15 : 15
      Set:  0 :  0
     Game:  0 :  0
    Point: 30 : 15
      Set:  0 :  0
     Game:  0 :  0
    Point: 40 : 15
      Set:  0 :  0
     Game:  0 :  0
    Point: 40 : 30
      Set:  0 :  0
     Game:  0 :  0
    Point: 40 : 40
      Set:  0 :  0
     Game:  0 :  0
    Point: AD :
      Set:  0 :  0
     Game:  1 :  0
    Point:  0 :  0
    
]]
content[308]=
[[
# 10Mat01
# 题目描述
![<img:/richtext/res/233/0370190034.jpg>](/richtext/res/233/0370190034.jpg)
给一个n*n (n <= 100)的01矩阵，问其中四个角的字符都相等的矩形有多少个。（矩形不可退化成点或者线）
# 输入
第一行一个整数T（T<=15）代表数据组数
每组数据第一行两个整数n(<=100)
一下是n*n 的01矩阵
# 输出
一个数字，代表满足条件的矩形个数。
# 样例输入
    
    
    2
    2
    01
    10
    3
    011
    100
    111
    
# 样例输出
    
    
    0
    1
    
# Source
BUAA_Dshawn
]]
content[309]=
[[
# 哼！我才是最短的
# 题目描述
Special Judge
![<img:/richtext/res/228/2.gif>](/richtext/res/228/2.gif)![<img:/richtext/res/
228/2.gif>](/richtext/res/228/2.gif)![<img:/richtext/res/225/p_large_Mavb_188a
0008683a5c40.jpg>](/richtext/res/225/p_large_Mavb_188a0008683a5c40.jpg)![<img:
/richtext/res/226/1.gif>](/richtext/res/226/1.gif)![<img:/richtext/res/226/1.g
if>](/richtext/res/226/1.gif)
求一个n的排列，满足任意相邻两个数字差的绝对值都不相等。
例如 1 3 2 可以 ， 1 2 3 就不可以。
如果有多组解的话输出一组就可以
# 输入
第一行是数据组数T ， T <= 50
每一行是一个数字n ， n <= 1000
# 输出
如果有解的话，输出一个n的排列
如果没有解的话，请输出"ich bin dumm"（不要有引号）。
数据中间不要有空行！！！
# 样例输入
    
    
    4
    2
    1
    3
    7
    
# 样例输出
    
    
    2 1
    1
    3 1 2
    3 5 4 1 7 2 6
    
# Source
BUAA_Dshawn
]]
content[310]=
[[
# Ryan's Brook
## Problem Description
在大家都在和家人非常温馨的过着春节的时候，Ryan独自一人去到印尼当志愿者。
在中国还在冰天雪地的时候，在南半球的印尼可谓春风和煦。
一条条小溪流淌在这片美丽的土地上。
一天，Ryan看到几条小溪，而且最令他兴奋的是他找到了小溪的源头。
于是Ryan特别想知道这些小溪能流到哪些地方。
## Input
多组数据。
对于每组数据，第一行是两个数字m, n代表一片区域的长和宽（1 <= m, n <= 500）。
接下来是一个m*n的矩阵，表示这片区域的地形。
其中0为沟壑，即小溪可流过的地方。
1为突起的土丘，即阻挡住小溪的地方。
*为小溪的源头。小溪的源头可能有多个。
溪水可以向它周围的八个方向中的沟壑流淌。
## Output
对于每组数据，输出一个m*n的矩阵。
所有小溪可以流过的地方标记为#
## Sample Input
    
    
    10 10
    11111*1000
    10001110*0
    1000111000
    1000111100
    0110111111
    1110001000
    1110101110
    11101*0100
    1000111100
    1111100000
    
## Sample Output
    
    
    11111#1###
    1###111###
    1###111###
    1###1111##
    #11#111111
    111###1000
    111#1#1110
    111#1##100
    1###111100
    1111100000
    
]]
content[311]=
[[
# Pi
## Problem Description
Darkness Wong最近看了一部叫The Life of Pi的电影。并对主角Pi能够背出上百位的圆周率感到惊奇。
为计算出更加准确的圆周率，Darkness查阅了大量资料后发现了莱布尼茨级数表示圆周率的方法。其具体形式如下：
    
    
    π/4=1-1/3+1/5-1/7+1/9……
    
现在给出这个级数的项数N，请计算出在项数为N的情况下圆周率的值。
## Input
第一行一个整数t(1<=t<=50)，代表数据组数。
接下来t行，每行一个正整数N(1<=N<=100)，表示项数。
## Output
对于每组数据，输出一行，圆周率的值，保留10位小数。
## Sample Input
    
    
    1
    5
    
## Sample Output
    
    
    3.3396825397
    
]]
content[312]=
[[
# Statistics
## Problem Description
想必在场大多数同学都对上周末北航程序设计大赛预赛C题(得了多少奖)中GG野蛮的要求印象深刻。
Darkness Wong作为北航ACM队新任的助理教练(剧情需要，纯属瞎编)，需要了解每个人在今年的获奖情况。
现在给出今年北航在ACM中的获奖情况，以及Darkness的若干条询问，请帮助他解决这些询问。
已知ACM-ICPC的比赛类型是团队赛，每支队伍有三名队员，所以每条获奖信息都以“三名队员的学号+奖项”的形式出现。
## Input
多组测试数据。
对于每组测试数据，第一行为两个正整数N和M。
接下来N行，每行一条获奖信息，以[ID ID ID Medal]的形式出现，分别代表三名队员的学号(详见样例)。
其中Au表示金奖，Ag表示银奖，Cu表示铜奖，Fe表示优胜奖。
接下来M行，每行一个学号，表示Darkness Wong的询问该学号同学的获奖情况。
## Output
对于每组数据，输出M行。对应每条询问，按以下格式输出。
    
    
    ?Au ?Ag ?Cu ?Fe
    
同样，Au表示金奖，Ag表示银奖，Cu表示铜奖，Fe表示优胜奖。
## Sample Input
    
    
    2 1
    35211425 35230115 35060622 Cu
    35211425 34060814 35060622 Au
    35211425
    
## Sample Output
    
    
    1Au 0Ag 1Cu 0Fe
    
]]
content[313]=
[[
# Ryan's ISBN
## Problem Description
每一本正式出版的图书都有一个ISBN号码与之对应。
ISBN码包括9位数字、1位识别码和3位分隔符，其规定格式如“x-xxx-xxxxx-x”。
其中符号“-”就是分隔符（键盘上的减号），最后一位是识别码，例如0-670-82162-4就是一个标准的ISBN码。
ISBN码的首位数字表示书籍的出版语言，例如0代表英语；
第一个分隔符“-”之后的三位数字代表出版社，例如670代表维京出版社；
第二个分隔符后的五位数字代表该书在该出版社的编号；
最后一位为识别码。
识别码的计算方法如下：
首位数字乘以1加上次位数字乘以2……以此类推，用所得的结果mod 11，所得的余数即为识别码，如果余数为10，则识别码为大写字母X。
例如ISBN号码0-670-82162-4中的识别码4是这样得到的：对067082162这9个数字，从左至右，分别乘以1，2，...,9,再求和，即0×1+
6×2+……+2×9=158，然后取158 mod 11的结果4作为识别码。
你的任务是编写程序判断输入的ISBN号码中识别码是否正确，如果正确，则仅输出“Right”；
如果错误，则输出你认为是正确的ISBN号码。
## Input
多组测试数据。
对于每组测试数据，输入只有一行，是一个字符序列，表示一本书的ISBN号码（保证输入符合ISBN号码的格式要求）。
## Output
对于每组测试数据，输出共一行，假如输入的ISBN号码的识别码正确，那么输出“Right”，否则，按照规定的格式，输出正确的ISBN号码（包括分隔符“-”）。
## SampleInput
    
    
    0-670-82162-4
    0-670-82162-0
    
## SampleOutput
    
    
    Right
    0-670-82162-4
    
]]
content[314]=
[[
# GG选题
# 题目描述
GG要在众多的题目中选择一些现场赛要出的题。
可是GG觉得题目太难了，而DS觉得题目太水了，所以他们找到了一个折中的方案：
一共有N道题，从1到N顺次排列，每道题都有一个难度值，GG从第一题到第N题顺次开始选择要或者不要
不过最终的顺次选出的题目要满足相邻之间的题目难度值的公约数不为1。
现在，GG想选出尽可能多的题目来，你能帮助GG么？
# Input
第一行一个数T(T<=30)，表示有T组数据
对于每组数据：
第一行一个数N(N<=20000)，表示有N道题
第二行N个数，表示N道题的难度(1<=难度值<=10^5)
# Output
每组数据输出1个数，表示可以选的最多的题目数量
# Sample Input
    
    
    2
    5
    2 3 5 7 11
    5
    6 2 3 12 8
    
# Sample Output
    
    
    1
    4
    
# Hint
From cannot
]]
content[315]=
[[
# 孟竹的复习计划
# Description
快放假了，考期也来临了。一个学期都跟屌丝谈情说爱的孟神拙计了，怕因为谈情说爱过多而挂科。
她知道自己有n个科目要复习（n <= 10000）。孟神给每个科目定了一个重要度，是从1-100的整数。因为行动匆忙，她随意排了一个复习计划表。在一旁的屌丝
着急了——尼玛你毫无重点啊！！于是爱她的屌丝就帮她修改计划表。
计划表是一个一维数组A，A[i]代表孟神复习的第i科的重要度。屌丝改孟神复习表的方法很简单——
1、 更改某个科目的重要度。因为屌丝认为有些科目（比如恋爱心理学，如何做个好太太，kiss技巧等等）太重要了，他给的重要程度是1-100的一个整数.
2、 交换某两个科目
对于屌丝来说，重要度越高的科目肯定要越先复习啦！所以如果存在两个不相同的科目i <= j 且 A[i] > A[j] 即
重要的先复习了，那么就增加一个屌丝的“满意度”。比如5 4 3 2 1 这个复习方法就有 10 个屌丝满意度；4 4 2 2 有 4 个屌丝满意度。
屌丝想知道初始的屌丝满意度和他依次改一次序列之后的屌丝满意度各是多少。
他原意陪妹子一起复习~~~
# Input
第一行是一个整数T (<= 15) 代表数据组数
每组数据第一行两个整数n , m 代表孟神有n个科目，屌丝会进行m次操作。（n <= 10000, m <= 10000）
以下一行n个数字，代表孟神一开始安排的复习计划里面按照时间顺序的每个科目的重要度（从 I = 1 开始,重要度1-100）。
以下 m 行由 P X Y 三个数字组成。
如果 P = 0 代表屌丝要将第 X （1 <= X <= n） 个科目的重要度改成Y （1 <= Y <= 100）
如果 P = 1 代表屌丝要将第 X 个科目 和第 Y 个科目的复习时间 永久调换。
# Output
对于每组数据，输出m + 1 行，每行一个整数代表屌丝满意度
# Sample Input
    
    
    1
    3 6
    1 2 3
    1 1 2
    1 1 3
    1 2 3
    0 1 2
    0 1 3
    0 2 3
    
# Sample Output
    
    
    0
    1
    2
    3
    2
    3
    2
    
# Hint
对于样例：
0、 1 2 3 有 0 个屌丝满意度；
1、 2 1 3 有 1 个屌丝满意度；
2、 3 1 2 有 2 个屌丝满意度；
3、 3 2 1 有 3 个屌丝满意度；
4、 2 2 1 有 2 个屌丝满意度；
5、 3 2 1 有 3 个屌丝满意度；
6、 3 3 1 有 2 个屌丝满意度。
]]
content[316]=
[[
# 孟竹要减肥？
# Description
孟神终于挨到放假了。她突然发现自己跟屌丝这学期一通吃吃喝喝，长胖了不少。T_T这尼玛怎么办，跑步呗。
可是孟神是淑女啦，可爱啦，一听到要跑步立马——雅蠛蝶~~~不过在屌丝的威逼利诱下（其实是苦苦哀求下）终于决定要去跑步了。孟神是女生嘛，所以耐久力比较小的。不
过，她知道自己一口气最多能跑X米！！！然后就会累趴下T_T这时候如果有屌丝的Kiss的话孟神就满血满魔原地复活了。
现在的情况就是，屌丝放了N个标志物（2 <= N <= 500，每个标志物的位置都不一样），孟神需要选择一个标志物最为她的起点。每次她会选择一个目标，然后如
果可以的话她一口气跑过去，爱她的屌丝一定会在那个标志物那里等她，并给她一个kiss。满血满魔原地复活之后，她将又要开始新的征程。
现在问题来了，她需要经过M个不同的标志物（2 <= M <=
N，初始位置算是第一个）（每个标志物可以经过多次）。在她自己选择起点的情况下，她一口气最少需要跑多少米才能完成任务？
# Input
第一行是一个整数T代表数据组数。（T <= 20）
第二行是两个整数 N 、M，代表标志物的个数(N <= 500)和她最少需要跑几个标志物
以下N行是两个整数(X,Y)代表标志物的坐标(-1e6 <= X , Y <= 1e6)
# Output
对于每组输出一个小数，保留到小数点后4位（最后一位四舍五入），代表孟神最少一口气跑多少米。
# Sample Input
    
    
    1
    3 3
    1 1
    1 2
    1 3
    
# Sample Output
    
    
    1.0000
    
# Hint
她选择(1 , 2)作为起点，跑到(1 , 1)之后屌丝Kiss她一下，再跑到(1 , 2)屌丝Kiss她一下，再跑到（1,3）
屌丝Kiss她一下。这样她一次跑1.0000m就可以顺利完成任务啦。
]]
content[317]=
[[
# 孟竹跪Dp
# Description
想当年，屌丝倾倒于孟神的DP之下。假期的某天，他们俩一起刷Codeforces的时候，屌丝遇到一个题目，一看是DP马上连题目看都不看就扔给了孟神。孟神看见题
目顿时跪了，你能帮孟神挽回颜面么：
给一个序列，求所有连续子序列 有多少个不同的 或和 和 与和（即对于每个区间[i , j] i <= j , 计算ai & a[I + 1] &…. &
a[j] 和 a[i] | a[I + 1] | … | a[j]）
# Input
第一行是一个整数T，代表数据组数(T <= 8).
对于每组数据，第一行是一个整数N，代表序列一共有N项（1 <= N <= 1e5）。
以下一行N个数，a[i]代表序列的第i项。（1 <= a[i] <= 1e6）
# Output
对于每组数据输出一个整数，代表不同的答案个数。
# Sample Input
    
    
    2
    1
    5
    2
    1 2
    
# Sample Output
    
    
    1
    4
    
# Hint
对于第一组数据，只有一个5
第二组数据，1 , 2 , 1 & 2 = 0 , 1 | 2 = 3 . 去掉重复所以答案是4
]]
content[318]=
[[
# 孟竹屌丝玩儿游戏
# Description
孟神假期找了一份可牛逼可牛逼的实习工作Orz。为了庆祝，让屌丝找来了帮屌丝验题的众神（这里先谢过啦^_^）吃吃喝喝。
期间为了助兴，她找来了屌丝陪她玩儿取石子游戏，众神围观。孟神在比赛开始之前给屌丝一个眼神，意思是——如果你敢赢我或者你不全力以赴的话，回去跪主板！！！因此，
屌丝在威逼利诱之下，必须让孟神有必胜策略，并且屌丝还得全力以赴T_T。
孟神拿来了N堆石子，让屌丝选择连续的几堆（至少拿一堆）。为了不让大家看得厌烦，孟神要求屌丝拿的所有石子的个数不能大于K个。之后由孟神开始，两个人轮流从任意一
堆石子里面拿任意多个石子，拿掉最后一个石子的人胜利。
已知屌丝和孟神IQ都足够高，屌丝想知道有多少种选法能够使得孟神有必胜策略。
# Input
第一行是一个整数T(<=20)，代表数据组数。
对于每一组数据，第一行两个整数N,K(N<=1e5 , K <= 1e15)
以下一行N个整数ai代表第i堆石子有ai个（1 <= ai <= 1e12）
# Output
对于每组测试数据，答案占一行代表屌丝选择的方法数。
# Sample Input
    
    
    2
    3 3
    1 1 1
    3 2
    1 1 1
    
# Sample Output
    
    
    4
    3
    
]]
content[319]=
[[
# 孟竹的幼儿园生活
# Description
孟神假期的时候做了一个梦，梦到了她的幼儿园生活Orz。。。那个时候她还不认识屌丝T_T
她幼儿园的时候是一个手特别勤快的女孩儿（现在嘛，哈哈^_^）。她最喜欢的就是正方形。杂乱无章的正方形就放在那里，孟神想知道这一大坨正方形的公共面积是多少。
精度请设置为1e-8
# Input
第一行是一个整数T ，代表数据的组数。（T <= 100）
对于每一组数据，第一行是一个整数N，代表正方形的数目（N<=1000）.
以下N行，每行四个整数X1,Y1,X2,Y2(-100 <= X1 , X2 , Y1 , Y2 <=
100)。代表正方形一个对角线上的两个点，正方形有可能完全重合。
# Output
对于每一组测试数据，求重合面积，小数点后保留4位。
# Sample Input
    
    
    2
    2
    0 0 10 10
    0 0 10 0
    3
    0 0 10 10
    0 0 10 0
    -100 -100 0 0
    
# Sample Output
    
    
    25.0000
    0.0000
    
]]
content[320]=
[[
# 孟竹画圈圈诅咒你
# Description
话说假期的时候，孟神想屌丝了，但是屌丝忙于仰慕群神，没时间跟孟神说话。于是孟神怒了。
为了惩罚屌丝，她在纸上瞎划拉了很多东西，让屌丝数这些东西把平面分成了多少段。
1、 直线
2、 V子型线，V子开口的地方可以无穷延伸
3、 Z子型线，在保持Z的形状下，三条边都可以无限延伸
# Input
第一行是一个整数T ，代表数据的组数。（T <= 100000）
对于每一组数据，第一个是一个字母，第二个是一个数字。代表：(1 <= X <= 2e9)
1、’L’ X 有X条直线
2、‘V‘ X 有X 条V字型线，V型线不可退化成射线。
3、’Z’ X 有X条Z字型线。Z字形不可退化，并且Z的上下两条射线必须平行。
每张纸上只有一种线。
# Output
对于每一组测试数据，求平面最多可以被分成多少部分。答案对于1e9 + 9 取模。
# Sample Input
    
    
    3
    L 5
    V 2
    Z 3
    
# Sample Output
    
    
    16
    7
    31
    
]]
content[321]=
[[
# 孟竹搭积木
# Description
众所周知，孟神的智商一直处于爆int的数值（啊，对了前面有负号T_T）。这天她拿来了一大堆积木，要屌丝堆一个无缝隙的地面为3*3单位的正方形，缺少左上和右下
角，高度N的大块，爱她的屌丝怎么能鄙视她的卑微的智商呢（虽然屌丝的智商是孟神的智商取个绝对值吧^_^）。他就慢慢开始搭积木了。
屌丝发现孟神拿来的积木是由3个1*1*1的小木块组成的L型积木
不知不觉就很晚了（以下省略3000字。。。）
第二天早上起来，屌丝发现昨天搭了一半的积木一共有M层（N>M>0），从下往上数M-
1层都是满满的。他能告诉你最上面一层的样子，屌丝想知道有多少种搭积木姿势能够满足这个样子。
话说，由于孟神的大脑中如果存在大于等于1e9+7的数字对她来说就溢出了。于是你只要告诉屌丝答案对于1e9+7的余数即可。
注：屌丝不会脑筋急转弯，如果两个积木的搭接姿势不同，但是由于旋转两种姿势可以相同，那么算两种姿势。
# Input
单组数据
第一行是一个整数N，代表屌丝目标搭的积木层数（N<=1e9）
以下是一个2 + 3 + 2的01矩阵，1代表此处有木块，0代表木有
数据保证最下面一层不为空
# Output
对于每组数据，如果有解输出一个数，代表姿势个数对1e9+7取模，如果不可能请输出“No way”
# Sample Input
    
    
    1
    1
      1 1
    0 0 1
    0 0
    
# Sample Output
    
    
    1
    
]]
content[322]=
[[
# 孟竹的Triple
# Description
屌丝牵着孟神走在路上的时候，最喜欢做的事情就是给孟神好多数字，让她求这堆数字的和或者积。孟神傻傻的笨笨的，脑海中相当相当勉强能记住一个pair——(和,积)
。再多的东西孟神可就记不住啦！
这天屌丝又想到一个怪招，他想让孟神记住一个Triple。即给孟神N个数字（N<=100），让孟神记住这些数字的(和,LCM,亦或和)
LCM：最小公倍数
GCD：最大公约数
已知GCD(a , b) * LCM(a , b) = a * b
孟神智商瞬间暴击了！！！她竟然记住了，屌丝目瞪口呆。不过，孟神忘记了屌丝给出的序列是什么。她想知道有多少种排列组合可能能满足她记住的东西。
由于孟神的大脑最多只能承受1e9+7，于是还是输出答案对于1e9+7取模即可
# Input
第一行是一个整数T代表数据组数。（T <= 20）
对于每组数据，四个整数N,A,B,C，分别代表N个数字和是A，LCM 是B ， 亦或和是C。
    
    
    	0 <= A,B,C<=100 ， 1 <= N <= 100 
    
# Output
对于每组数据，输出一个整数
# Sample Input
    
    
    2 
    2 2 1 0
    2 3 2 3
    
# Sample Output
    
    
    1
    2
    
# Hint
对于第一组数据，只有1 1 一种情况
对于第二组数据，1 2 和 2 1 两种情况
]]
content[323]=
[[
# 孟竹开Party
# Description
孟神要开Party了，叫来Acdream的各位群神来吃吃喝喝。她买了瓜子、瓜子、瓜子、瓜子、瓜子，管饱的瓜子！既省钱又实惠！（好吧这些都不是重点）
她勒令屌丝负责组织人员工作，她挥舞着女皇的皮鞭，勒令屌丝要“Hold 住全场”。
怎么叫Hold住全场呢？屌丝知道，孟神邀请的人里面有很多小秘密，比如有些妹子很中意某些帅哥，某些屌丝又很垂涎于某些女神。那么如果Hold住女神了，那么屌丝就
间接Hold住了；如果Hold住帅哥了，那么妹子也就到手了。
并且，Hold技能还有传递性，比如有两只妹子：nanae和竹竹，有两只屌丝：DS和cxlove。竹竹怒Hold住DS ，
DS可以使唤nanae，而cxlove对于nanae的爱世人皆知。那么，竹竹就可以间接Hold住nanae。
现在面对全神们，屌丝要下手了——他准备列一个名单，对于名单上的人花费$1k贿赂，让他们听从于屌丝，从而间接Hold住全场。
顺便说一下，全场有不到20对情侣，屌丝贿赂的名单中情侣不能同时出现！（如果一对儿小情侣都知道这个潜规则肯定会妨碍屌丝行动的进程！！！）
屌丝想问你，他最少要贿赂多少个人。
如果无解请输出人数加一（比如一共N个人输出N+1）
# Input
第一行是一个整数T代表数据组数。（T <= 20）
对于每组测试数据，第一行是两个整数 N 、M，代表有N个男生M个女生（1 <= N , M <= 250），男生的编号是1~N，女生的编号是1~M。
下一行是一个整数P（0<=P<=1000），以下P行每行两个整数Xi，Yi。代表有P对男Hold住女的情况（1<=Xi<=N，1<=Yi<=M代表Xi号男能
Hold住Yi号女）;
下一行一个整数Q（0<=Q<=1000），以下Q行每行两个整数Xi，Yi，代表有Q对女Hold住男的情况（1<=Xi<=M ,
1<=Yi<=N代表Xi号女能Hold住Yi号男）。
以下一个整数W（0<=W<=20），以下W行每行两个整数Xi，Yi（1<=Xi<=N , 1 <=Yi
<=M）代表Xi号男和Yi号女是情侣。（在这个屌丝的世界没有一女多男或者一男多女的情况）
# Output
对于每组输出一个整数，代表屌丝最少需要贿赂的人数。
# Sample Input
    
    
    1
    3 3
    3
    1 2
    1 3
    1 1
    3
    1 1
    2 2
    3 3
    0
    
# Sample Output
    
    
    1
    
# Hint
1号男能Hold住1、2、3号女，1号女能Hold住1号男，2号女能hold住2号男，3号女能hold住3号男。所以屌丝只用去贿赂1号男即可~
]]
content[324]=
[[
# 孟竹的星星
# Description
![<img:/richtext/res/242/1.jpg>](/richtext/res/242/1.jpg)
众所周知孟神是一个文艺妹子，她爱星星。这天，她拿来了N多年前追屌丝时候画的五角星，但是发现缺了两个角T_T。她现在给你五角星中3个角的坐标，让你求另外两个角
的坐标。
# Input
第一行是一个整数T (<= 10000) 代表数据组数
每组数据3对实数，代表五角星的三个角的坐标。（-1000 <= Xi , Yi <= 1000）
# Output
对于每组数据，输出两行，每行两个实数（精确到小数点后2位）。如果X坐标不相等，那么先输出X坐标小的，否则优先输出Y坐标小的。
# Sample Input
    
    
    1
    -41.7854586215 126.8875739807
    116.9647521032 86.7159788049
    63.0338885100 1.0770381300
    
# Sample Output
    
    
    -35.08 25.90
    52.18 164.47
    
]]
content[325]=
[[
# Dango's Adventure
# Problem Description
话说，去年LiJiancheng自己做了一个小游戏，叫『Dango's
Adventure』。之后他把这个游戏弄到各种平台上（Android、iOS、WP7..）
详情请查看[http://blog.sina.com.cn/lijiancheng5201314](http://blog.sina.com.cn/liji
ancheng5201314)
![<img:/richtext/res/249/scene.png>](/richtext/res/249/scene.png)
    
    
    游戏任务很简单，按左/右移动屏幕底部的云朵，尽可能地把屏幕上方掉下来的团子接住。
    每接住一个团子有一分，接不住团子会扣一条生命，一共有3条生命。随着得分越多，团子下降速度会变快。当然也有奖励，云朵移动会变快。
    
游戏做完了，LiJiancheng需要找各种大神来测试。但是事情总是会发生戏剧性的变化。各路大神的意见都不一样，有的说团子掉得太慢了，有的说团子掉得太快而云
朵移动太慢了……
综合了大家的意见，LiJiancheng还是决定写一个程序来测试不同手速的人在只有一条生命的情况下最多能得多少分。由于LiJiancheng这段时间都比较忙
，所以这个任务交给你了。
游戏原本的设定还有很多，为了方便测试，LiJiancheng打算把问题简化。
以屏幕左下角为原点，底边为x轴正方向，左侧边缘为y轴正方向，建立笛卡尔直角坐标系xOy。
设屏幕宽为w个单位，高为h个单位，即屏幕右上角的坐标为(w,h)。
为了方便，碰撞检测采用矩形相交判断的方法，即把团子和云朵都看成是一个矩形。（即只要团子底边与云朵顶边的线段有交集即为接住团子）
然后为了大家判断方便，这里假设团子底边下降到云朵顶边所在的直线即消失，即只需判断团子底边与云朵顶边是否相交即可。
给定团子的宽度为w1,高度为h1，云朵的宽度为w2,高度为h2，团子匀速下降的速度为v1，云朵左右匀速移动速度为v2。
（即团子每秒向下移动v1个单位，云朵每秒向左或向右移动v2个单位）
假设初始时云朵几何中心所在位置为(o1,h2/2)，某个团子从几何中心位置为(o2,h+h1/2)处开始下降。
问云朵能否接住团子。
注意：云朵的左端点最多只能移动到(0,h2/2)处，右端点最多只能移动到(w-w2/2,h2/2)处，云朵上下不能移动，团子左右不能移动。
# Input
第一行有一个无符号整数case(1<=case<=1000)，表示有case组数据。
接下来每组数据：
　　第一行包含两个均不大于1000的正整数，w，h。
　　第二行有6个的正整数w1,h1,v1,w2,h2,v2。其中0<w1,w2<w/2，0<h1,h2<h/2，0<v1,v2<w/2。
　　第三行有两个正整数o1,o2。其中w1/2<=o1<=w-w1/2，0<=o2<=w-w2/2。
数据保证合法。
# Output
对于每组数据，如果能接住团子，输出“Dango”；否则输出“Pity”。
# Sample Input
2
800 480
62 51 2 96 40 2
400 400
800 480
62 51 2 96 40 2
48 769
# Sample Output
Dango
Pity
# Source
BUAA_LiJiancheng
# Hint
如图，碰撞检测采用矩形相交判断的方法：
![<img:/richtext/res/248/hint.png>](/richtext/res/248/hint.png)
]]
content[326]=
[[
# Dice I
# Problem Description
Ninja Gielch很喜欢玩骰(tou)子(zi)。
一天，他跟朋友觉得每次总是看骰子正面朝上的点数很无聊，于是他们想出了另一种玩法：
在目力所及的范围内，看到的面上的点数的最大值作为当前的点数。
由于人为地观察骰子会存在偏差，他们决定用摄像头来观察骰子，再根据摄像头能看到的骰子的面上的点数的最大值作为他们当前的点数。
Ninja Gielch已经把各种硬件设备配置好了，就差核心算法了。你能帮助他吗？
在他们的世界里，骰子是一个不透明的规则长方体。
为了计算方便，以骰子的一个端点为原点，过原点的三条棱为x,y,z轴的正方向，建立笛卡尔空间直角坐标系。
给定骰子原点所对的顶点的坐标和摄像头的坐标，问摄像头能看到的面上的点数最大值是多少。
![<img:/richtext/res/250/dice.png>](/richtext/res/250/dice.png)
# Input
第一行有一个无符号整数case(1<=case<=1000)，表示有case组数据。
接下来每组数据：
　　第一行包含3个绝对值不大于1e6的整数，x,y,z，表示摄像头的坐标。
　　第二行包含3个大于0不大于1e6的整数，x1,y1,z1，表示骰子另一个顶点的坐标。
　　第三行包含6个大于0不大于1e6的整数，a1,a2,...,a6，表示骰子6个面上的点数。
规定：a1在ZOX面上，a2在ZOX的平行面上，a3在XOY面上，a4在XOY的平行面上，a5在YOZ面上，a6在YOZ的平行面上。
# Output
对于每组数据，输出点数的最大值。
# Sample Input
2
2 2 2
1 1 1
1 2 3 4 5 6
0 0 10
3 2 3
1 2 3 4 5 6
# Sample Output
6
4
# Source
BUAA_LiJiancheng
]]
content[327]=
[[
# 妮妮的斐波那契
# 题目描述
妮妮非常喜欢斐波那契数列！有一天妮妮向你问到，第N个斐波那契数模(10^9+7)是什么啊？
你毫不犹豫的就答了出来。妮妮觉得你太神了！
突然,妮妮想到了一个她以前不会做的题>.<,
从第1个斐波那契数加到第N个斐波那契数模(10^9+7)等于多少呢?
(1,1,2,3,5,8,13...)
# Input
多组数据
一个数N(1<=N<=10^9)
# Output
对于每组数据
如题所述。
# Sample Input
    
    
    7
    
# Sample Output
    
    
    33
    
# Hint
-从前有座山，山里有座庙...  
-sb...  
-氧化钙。。我在跟你说递归。。  
]]
content[328]=
[[
# 不开心的妮妮第二弹！
# 题目描述
/*
请尽量使用O(N)的方法做，虽然此题可以O(N^4)400ms无压力秒杀。。
*/  
妮妮最近很不开心，心细的你观察到了这一点，接下来的N天你决定去安慰她。
经过杨哥的指点，你可以安慰妮妮连续的两段时间。
细心的你发现在第i天安慰妮妮，她会有一个开心值a[i],表示第i天妮妮的开心程度。
当然a[i]有可能小于0啦，所以你要合理的安排时间，让妮妮觉得她跟你在一起的时候感到最开心。
# Input
多组数据
第一行一个数N
接下来一行N个数a[i],表示妮妮每天的开心程度
(1 <= N <= 100 , |a[i]| <= 100)
# Output
对于每组数据:
一个数，最大的开心程度
# Sample Input
    
    
    5
    1 2 3 4 5
    5
    1 5 -100 2 3
    5
    -100 -100 -100 -100 -100
    
# Sample Output
    
    
    15
    11
    0
    
# Hint
福利！
![<img:/richtext/res/254/nini.jpg>](/richtext/res/254/nini.jpg)
]]
content[329]=
[[
# 有故障的打字机
# 题目描述
一台打字机准备将1到10^n的数依次打出。在打印过程中，这台打字机出现了一个故障：数字“3”打不出来。因此，所有含有数字“3”的数都没有被正确地打出。试问没
有被正确打出的数一共有多少个。
# Input
一个数N(1<=N<=1000)
# Output
输出从1到10^n这些数中不能被正确打印的数的个数。
# Sample Input
    
    
    2
    
# Sample Output
    
    
    19
    
# Hint
对于每个测试点：
时间限制1s
空间限制32MB
# Source
BUAA_xsf72006
]]
content[330]=
[[
# 我的大刀早已饥渴难耐了
# 题干描述
  
由于泽哥打钱效率太高，队友的钱都被泽哥打了去，引起了公愤，所以泽哥只能孤军奋战，于是就要用蛮王，五秒真男人！
此时泽哥的蛮王处于濒死阶段，泽哥果断开启大招--无尽的怒火，敌人的限制技能已经全部放完，假设敌人慑服于爷们儿的霸气，只能与蛮王对刚而不会选择逃跑，泽哥会主动
操作蛮王依次攻击开启大招时血量最少的敌人，泽哥想利用此程序计算蛮王DPS的数学期望。
![<img:http://lol.qq.com/web201007/content/spell/23-5.png>](http://lol.qq.com/
web201007/content/spell/23-5.png)蛮王此时具有35%的额外暴击率，与145点裸体攻击力。
DPS就是Damage Per Second，由于只是五秒真男人，蛮王如果不能在5秒内击杀所有敌人，自己将会死亡。
蛮王有150ms的攻击前摇(提示：如在第4900ms时，蛮王无法完成下次攻击输出)。
为了降低难度，蛮王的旋风斩也记为150ms的施法时间，同时可以击中全部敌人。
![<img:http://lol.qq.com/web201007/content/spell/23-3.png>](http://lol.qq.com/
web201007/content/spell/23-3.png)旋风斩的冷却时间为9秒，但蛮王每次暴击会使冷却时间减少2秒，伤害公式为"190+来自装备攻
击力的1.2倍+法术强度的1倍"的物理伤害。
冷却缩减的上限为40%，如超过则记为40%。
暴击率的上限为100%，如超过记为100%(不然算什么，我反正不知道)。
# 输入文件
  
多组测试数据，对于每组数据：
第一行5个非负整数，分别为：
来自装备的攻击力 来自装备的暴击率 冷却缩减百分比 法术强度 攻击间隔(ms)
第二行，两个整数1或0,1代表装备，0代表未装备，分别对应：
无尽之刃，玛尔莫提斯之噬
第三行一个数，表示敌方英雄的数目；
第四行和第五行分别对应写入敌方英雄的血量，和减少所受物理伤害的百分比。
## 局部批注
  
![<img:http://img.db.178.com/lol/images/content/item/3031.gif>](http://img.db.
178.com/lol/images/content/item/3031.gif)无尽之刃：可以将蛮王的暴击倍率提升到250%，默认为200%；
![<img:http://img.db.178.com/lol/images//content/item/3156.gif>](http://img.db
.178.com/lol/images//content/item/3156.gif)玛尔莫提斯之噬：每损失2.5%的生命值提高1点攻击力；即如果此项输入为
1，蛮王获得额外的40点来自装备的攻击力。
# 输出文件
  
输出行共2行，第一行为蛮王在5秒内，或击败全部对手的时间内的DPS；第二行为蛮王击倒的英雄数。
# 样例输入
  
190 65 40 35 400
1 1
5
3609 2102 1891 1560 2434
45 30 30 27 24
190 100 40 0 400
0 1
2
4000 2000
10 25
# 样例输出
  
DPS=3266
K.O.s=5
DPS=2448
K.O.s=2
# 最后忠告
  
由于泽哥是操作高手，如果旋风斩在攻击后摇阶段之内完成了冷却的刷新，泽哥会立刻取消掉攻击后摇继而快速发动旋风斩。
如果你的样例输出2数据正确了，那么你在这部分应该是完美完成了。
]]
content[331]=
[[
# 练习2-1
## 题干描述
先输入一个整数n，再输入n个小数，输出n个小数中最大的小数。
多组测试数据
保留两位小数
## 输入样例
3
0.85 2.31 1.24
## 输出样例
2.31
]]
content[332]=
[[
# 练习2-2
## 题干描述
先输入一个整数n，在输入n个小数，将这n个数字从大到小输出。
(提示：已经会找最大的了，把最大的放在第一个，再从2-n里找到最大的。依次类推)
多组测试数据。
保留两位小数
## 输入样例：
3
0.85 2.31 1.24
## 输出样例
2.31 1.24 0.85
]]
content[333]=
[[
# 练习3-1
## 题干描述
输入一个字符串（英文），将这句话反向输出出来。
多组测试数据。
## 输入样例
abcdefg
## 输出样例
gfedcba
]]
content[334]=
[[
# 练习3-2
## 题目描述
输入一个字符串(英文)(有偶数个字符)，如果这个字符串从中
间向两边镜面对称，则输出"yes"，否则输出"no"。
多组测试数据
## 输入样例
abccba
## 输出样例
yes
]]
content[335]=
[[
# 练习4
## 题目描述
小明要制作一个学生成绩综合软件。
输入一个整数n，再输入n组数据。每组数据包含两行。
第一行是学生的名字(英文)，第二行是学生的成绩(一个整数)。
然后再输入一个整数。
输出为两行，第一行是成绩为这个整数的学生的名字，
第二行是这些学生成绩的平均数(一个整数)。
多组测试数据。
## 输入样例
3
a
20
b
21
c
22
22
## 输出样例
c
21
]]
content[336]=
[[
# BE CEDED
# 题干描述
蛮王那道题确实出的有点过分了，所以本打算出一道更加过分的——不知疲倦的输出机器-
瑞兹，但是实在是太难了。详情不多说了，自己百度一下瑞兹吧，我就不发传送门了。因此瑞兹的这个变态题目就be ceded了。
下面进入本题的正题：
本题用于检查关于关于cede一词的用法是否正确
以下为检查范围内的用法
I. cede sth. to sb./sth.
II. cede sth.
III. cede to do
IV. be ceded
## 输入部分
多组测试数据，对于每组数据
输入共一行，为一句英文，一定含有CEDE，且不作为人名地名出现
注意:待测试的输入可能含有插入语，可能为祈使句
## 输出部分
对于每组数据输出仅一行
对于正确的cede用法输出Accepted
否则输出Wrong Answer
## 样例输入
Cede territory to a neighbouring state.
We have to cede the decision otherwise there will no any improvement.
This plan can't be, whatever, cede.
## 样例输出
Accepted
Accepted
Wrong Answer
## 最后忠告
刚才忘记说了，还有可能是动名词做主语之类的。
]]
content[337]=
[[
# 练习5
## 题目叙述
### 铺桌布
小明家里有一个50*50大小的桌子。可是小明却没有50*50大小桌布，于是小明找了很多其它大小的正方桌布，决定随便铺上，只要最后能铺满桌子就好了。由于小有强
迫症，所以桌布的位置都是在整数位置的。（把桌子切分成50*50个格子，每块桌布的左上角都会和一个格子的左上角对齐，而且桌布的尺寸也是整数哦）。
## 输入文件
多组测试数据
输入一个整数n，代表桌布的数量。
再输入n组整数:x,y,L表示桌布的左上角对齐横向第x个，纵向
第y个格子的左上角，且边长为L。
## 输出文件
如果桌布们铺满了桌子，输出yes
否则输出no
## 样例输入
3
1 1 20
21 1 30
1 21 51
## 样例输出
yes
]]
content[338]=
[[
# 练习6
## 题目叙述
### 练习6 简单词典
本题目的目的就是做一个词典。其实词典的基本功能还是很好实现的啦。
## 输入文件
先输入一个整数，代表词典即将收录的单词的数目。
然后输入N组数据，每组包含两个字符串(字符串中没有空格)
第一个是单词
第二个是单词的解释。
然后输入一个已经收录的单词。
## 输出文件
输出这个单词的解释。
## 样例输入
2
apple
苹果
desk
桌子
apple
## 样例输出
苹果
]]
content[339]=
[[
# 练习7
## 题干叙述
### 练习7 蚂蚁爬杆子
有一条长100码的杆子，上面有好多蚂蚁。这群蚂蚁有的向左跑，有的蚂蚁向右跑，每秒能爬行一码，两个蚂蚁互相撞到就都会掉头朝反向走，这个过程也需要一秒，和爬行一
码的用时一样。这群蚂蚁的目标是全部爬出杆子，要求算出全都爬出去的用时。（这群有强迫症的蚂蚁起始位置都是整数位置，0,1,2,3，，，，，100）
## 输入文件
先输入一个整数n，为蚂蚁的数量。
然后输入n组数据。
每组包含一个整数和一个字符串，整数为蚂蚁的位置。字符串
为"left"或者"right"，代表蚂蚁向左还是向右爬。蚂蚁爬到
0或者100就算作爬出杆子。
## 输出文件
输出一个整数，代表所有蚂蚁都爬出的用时。
## 样例输入
5
19 left
21 right
44 left
63 right
58 left
## 样例输出
79
## 终极提醒
蚂蚁在0，或100的位置的时候也要注意一下他的方向，不一定能出去的！
]]
content[340]=
[[
# A+B
### Problem Description
计算A+B
### Input
每行2个整数a,b(保证a+b在int范围内)，输入为EOF时停止。
### Output
对于每组数据，输出一行，a+b的值
### Sample Input
    
    1 2
### Sample Output
    
    3
]]
content[341]=
[[
# A+B again
### Problem Description
升级版的A+B，要考虑大数问题
### Input
第一个数为数据组数n,接下来n行，每行2个整数a,b
### Output
对于每组数据，输出一行，a+b的值
### Sample Input
    
    1
    111111111111111111111111111111111 222222222222222222222222222222222
    
### Sample Output
    
    333333333333333333333333333333333
    
]]
content[342]=
[[
# 停车位
### Problem Description
头文字D每次漂移完都很累很累很累啊！！！最烦的是每次都要自己找停车位啊！！！而且每次停车都一定要按车牌号从小到大的顺序停啊！！！但关键是每次头文字D都是第一
个跑完赛道啊！！！每次都跑完布吉岛自己车牌号排在第几号啊！！！
难道每次跑完都要等所有选手都到齐了才知道自己该把车停第几号吗？？？
人家一路漂移就是为了赶快回家去陪女朋友嘛……肿么能酱紫对人家嘛……难道漂移也是一种罪过吗……
所以为了能够尽快回家陪女朋友，头文字D只能向各位聪明的同学们求助了，麻烦各位同学帮忙算出头文字D的车应该排在第几号。。。。
### Input
第一个数为数据组数n,接下来n组数，每组数有两行，第一行为选手总数m，第二行有m个数，默认第一个数为头文字D的车牌号（每个车牌号均为整数）
1<=n<=20, 1<=m<=10000
### Output
对于每组数据，输出一行为头文字D的停车号
### Sample Input
    
    1
    4
    2 1 3 4
    
### Sample Output
    
    2
### Hint
车牌号均不一样
]]
content[343]=
[[
# 魔法屋历险
### Problem Description
一天，Leo无意中闯入一间神奇的魔法屋。他在门口捡到了一个数字，门旁边写着下面一段话：
这是一间魔法屋，你可以带着你手中的数字从第一扇门一直走下去，每一扇门后都有一个新的数字，你将根据门上的符号按照下面的规则对手中的旧数字和新数字进行取舍。
1）如果门上是“*”（不包括引号），则依然带着旧数字进入下一扇门；
2）如果门上是“&”，则要用门后的新数字换掉手中的旧数字。
正确得带着手中的数字走出最后一扇门，有神秘的奖励哦。是不是很简单呢？快点进入魔法屋的历险吧。
### Input
每组数据4行：
第一行为初始的数字m（-2^16<=m<=2^16）
第二行门的数量n(0<n<1000)
第三行每扇门上的符号(空格分开，最后一个无空格)
第四行每扇门后的数字x（0<=x<=2^32，空格分开，最后一个无空格）
### Output
一行代表最后结果
### Sample Input
    
    4
    4
    & * * &
    4 5 6 7
    
### Sample Output
    
    7
]]
content[344]=
[[
# 可怜的Leo
### Problem Description
可怜的Leo早早的就把流量用的快完了，这下要怎么和妹子聊天呢？不过他可是搞IT的，这点小事算什么。节约流量，从我做起。于是，他决定将数据用以下方式进行一些精
简——对于连续重复的字符采用数字加符号的方式来表示，这样就节省不少啦。
不过，他好像学得不太好，不知道如何实现，那就由你来帮个忙吧。
### Input
1+n行数据：
第一行代表信息的组数n
以下n行代表每条信息（只有大小写字母，0<信息长度<1000）
### Output
n行，每行为精简过后的信息
### Sample Input
    
    4
    aaaaaaaaa
    bcdee
    f
    ggg1hh2
    
### Sample Output
    
    a9
    b1c1d1e2
    f1
    WrongFormat!
    
]]
content[345]=
[[
# 阿尔法星距离
### Problem Description
寒假期间，Talus做了一个奇怪的梦，梦到他来了阿尔法星。但是，当Talus想要回到地球时，才发现只有解开通往地球时光机的密码才能回到地球。时光机上给出了两
个单词，这两个单词的阿尔法距离就是时光机的密码。
什么是阿尔法距离呢？先说说什么是阿尔法单词组，如果一个单词的字符通过重新排列形成另一个单词，那么这两个单词就属于阿尔法单词组。比如，occurs和succo
r就属于阿尔法单词组，而dear和dared就不属于阿尔法单词组，因为在dear中有一个d，在dared中有两个d。
阿尔法距离就是从两个单词中能取走最少字符的数目，使剩下的部分属于阿尔法单词组。比如单词sleep和leap，如果我们从sleep中取走s和e，从leap中取
走a，那么剩余的部分就属于阿尔法单词组了，因为两个单词只剩下了lep，那么这两个单词的阿尔法距离就是3。同样的cat和dog，因为其中没有共同的字母，所以只
能取走所有的字符（两个空单词默认属于阿尔法单词组），阿尔法距离就是6。当然了，两个相同的单词阿尔法距离就是0。
快来帮帮Talus吧！
### Input
第一行是一个整数N（N < 100），表示需要求N组单词的阿尔法距离。
接下来是N组测试数据，每组测试数据输入两个单词，每个单词占一行且不超过20个字符，单词中只包含a-z，保证没有空单词
### Output
  
对于每组测试数据，输出该组单词的阿尔法距离。
### Sample Input
    
    4
    crocus
    succor
    dares
    seared
    empty
    eagle
    smell
    lemon
    
### Sample Output
    
    0
    1
    8
    4
]]
content[346]=
[[
# 码农的油田
### Problem Description
Talus作为一名助教，已经很久很久没刷过题了，面对你们这些编程大牛们，压力山大啊。这不，好不容易做了一道题，发现自己又不会了，赶快来看看吧。
题目是这样说的，XX勘探队需要在某荒原勘探油田，经验丰富的勘探队队员们采取如下的方法进行勘探:
在一个长为L，宽为R的矩形上按照行排列打L*R个孔，然后用仪器来探测下面每个探测孔内是否有油存在。如果相邻的两个孔内都有石油，那么按照经验，这两个孔是属于同
一块油田的，这里指的相邻是某一探测孔的上下左右，左上，左下，右上，右下八个位置。
现在给你一块荒原，让你帮忙统计出里面有几块油田
### Input
多组测试数据
对于每组测试数据，首先输入两个整数L和R
接下来的L行，每行有R个字符，其中只有只有@和*,@代表该探测空内有油，*代表该探测孔内无油
如果L和R均为0，则表示输入结束
### Output
  
对于每组数据，输出一行为荒原内的油田的个数。
### Sample Input
    
    1 1
    *
    3 5
    *@*@*
    **@**
    *@*@*
    1 8
    @@****@*
    5 5 
    ****@
    *@@*@
    *@**@
    @@@*@
    @@**@
    0 0
    
### Sample Output
    
    0
    1
    2
    2
### Hint
数据量给的很小很小，所以建议大家试试最近学的搜索算法
]]
content[347]=
[[
# 简化版”旅行商人问题“
### Problem Description
旅行商人问题......应该都有所耳闻吧，简单的说是这样的。有n个城市，一个商人要从其中某一个城市出发，唯一走遍所有的城市，再回到他出发的城市，求最短的路线
。当然，这是目前还没有有效算法的NP问题。
我们把问题简化一下，假设城堡是一个n*m矩形，从每个城镇出发，其东西南北，西北，西南，东北，东南八个方向会有通向其他城镇的路。相邻城镇之间，东-西和南-
北的路的长度为1，现在让你在这个城堡中找出按照"旅行商人问题"旅行一圈所需要经过的最短路径。
如下图是一个2*3的城堡，那么旅行一圈的最短路径是6，如图中红色路线所示
![<img:/richtext/res/392/%E6%8D%95%E8%8E%B7.JPG>](/richtext/res/392/%E6%8D%95%
E8%8E%B7.JPG)
### Input
第一行输入一个整数t，表示测试组数。
对于每组数据输入两个整数L和R，表示矩形的维数
### Output
对于每组测试数据，首先输出一行”Case #X:“,其中X表示测试数据的组数。
接下来一行输出最短路径，保留两位小数。
### Sample Input
    
    
    2
    2 2
    2 3
    
### Sample Output
    
    
    Case #1:
    4.00
    Case #2:
    6.00
    
]]
content[348]=
[[
# 逆序链表
### Problem Description
给定一个整数序列，用链表将其反向输出
### Input
第一行为一个整数n，表示有n组测试数据
对于每组测试数据第一行为一个整数m，表示有m个整数（0 <m<1000 ）
接下来是用空格隔开的m个整数，表示原始序列
### Output
对于每组测试数据，输出如样例
### Sample Input
    
    2
    4
    1 2 3 4
    5
    5 4 3 2 1
### Sample Output
    
    Case 1:
    4
    3
    2
    1
    Case 2:
    1
    2
    3
    4
    5
### Hint
要求使用链表实现，用数组实现的不计过题数
]]
content[349]=
[[
# 线性表操作
### Problem Description
顺序表是我们数据结构中的基本储存形式，现在给定一个顺序表，有如下操作：
Insert X Y： 在顺序表中X位置插入Y元素，遍历输出当前顺序表的所有元素
Delete X：删除顺序表中的X元素，如果有多个X元素，只删除第一个X，遍历输出当前顺序的所有元素
Locate X：输出顺序表中X元素的所在的位置，如果有多个X元素，只输出第一个X元素的位置
GetElem X：输出顺序表中X位置上的元素
### Input
多组测试数据
对于每组测试数据，首先输入的是两个整数n,m（0<m <n<100），分别表示顺序表初始有n个元素,m次操作
接下来是n个整数，表示顺序表中的n个元素
然后是m次操作命令，命令是Insert X Y ，Delete X ， Locate X ， GetElem X中的一种，其中的X,Y均为整数。
### Output
对于每组数据
输出有m行，对应m次操作：
如果操作合法，则输出相应的结果
如果操作不合法，则输出"Wrong Input!"
### Sample Input
    
    5 8
    1 3 4 5 6
    Insert 4 7
    Insert 8 10
    Delete 6
    Delete 10
    Locate 5
    Locate 10
    GetElem 3
    GetElem 9
### Sample Output
    
    1 3 4 7 5 6
    Wrong Input!
    1 3 4 7 5
    Wrong Input!
    5
    Wrong Input!
    4
    Wrong Input!
### Hint
要求使用顺序表实现
]]
content[350]=
[[
# Sequence
### Problem Description
给定两个无序数列A，B。数列中元素的值为int, 元素个数不超过100。将两个数列合并成一个非降序的数列并删掉一个元素输出。
### Input
多组测试数据。输入第一行为测试的组数n(n<=100)，每组测试数据的第一行包括a，b，c三个数，接下来两行分别有a个数和b个数，分别表示数列A、B，每个数
列中的元素用空格隔开。
### Output
每组数据输出一行，为合并后的非降序数列并删掉第c个数（1 <= c <= a+b)，元素之间用空格隔开。详见Sample
### Sample Input
    
    2
    4 5 3
    5 8 4 7 
    9 7 6 2 1 
    2 2 1
    -10 -1
    -2 3
    
### Sample Output
    
    1 2 5 6 7 7 8 9
    -2 -1 3
    
### Warning
请用顺序表实现并自行定义基本结构和初始化、销毁、定位、获取、插入、排序、合并等基本操纵，否则没分数，我们会检查代码。
  
e.g.
typedef struct
{...}...
void InitList(...)
{...}
void DestroyList(..)
{...}
...
int main()
{...在主函数中直接调用以上函数...}
]]
content[351]=
[[
# N^N
### Problem Description
给你一个正整数n, 请输出 n^n (n的n次方)的个位数字.
### Input
第一行是一个正整数T (1 <= T <= 100)，表示有T组数据。接下来的T行每行一个正整数n (1 <= n <= 20)
### Output
对于每组数据，输出一个正整数k，表示n^n的最个位。
### Sample Input
    
    2
    3
    4
    
### Sample Output
    
    7
    6
    
### Hint
    
    3 * 3 * 3 = 27 -> 7
    4 * 4 * 4 * 4 = 16 -> 6
    
]]
content[352]=
[[
# Consecutive
### Problem Description
给定一个整数，分别输出其二进制表示中最长的连续0和连续1序列的长度
### Input
第一行是一个整数t，表示数据组数
接下来t行，每行一个整数n，n<=2^31
### Output
对于每个整数n，输出其二进制表示中最长的连续0和连续1序列的长度，格式见样例
### Sample Input
    
    2
    7
    8
    
### Sample Output
    
    There are mostly 0 consecutive 0 in 7's binary representation
    There are mostly 3 consecutive 1 in 7's binary representation
    There are mostly 3 consecutive 0 in 8's binary representation
    There are mostly 1 consecutive 1 in 8's binary representation
]]
content[353]=
[[
# JosephusⅠ
### Problem Description
罗马人占领Yodfat了！Josephus与他的n-1个战友们被困在了一个洞里。他们讨论是自杀还是投降，最终他们选择了自杀，并以某种的方式决定先后顺序。这种
方式是n个战士围成一个圈，并按顺时针由1开始编号。然后由第一个人由1开始数，数到m的人自杀，然后下一个人又从1开始数起。这样直到全部人都死光。可是Josep
hus不想死，他还年轻，还有很多事情要做。于是他打算做最后一个“自杀”的人，这样他就可以放弃自杀继续活下去。但他不知道哪一个位置才是最后一个自杀的位置，聪明
如你可以帮一下他吗？
### Input
第一行是一个数字t，代表t组数据。
每组数据只有一行，一行有两个数字n和m，意义见Problem Description。
1<n, m<1000
### Output
每组数据输出一行，表示最后一个自杀的人的编号。
### Sample Input
    
    2
    2 2
    5 3
    
### Sample Output
    
    1
    4
### Warning
请用链表实现，我们会检查代码。
]]
content[354]=
[[
# JosephusⅡ
### Problem Description
Josephus上次没有成功逃脱——放心，不是因为你没有给他指出安全的位置，而是他们中途改变了规则！！！×@￥%@！#！￥@%*
规则变成了这样子：有N个人围成一圈，从1号开始，报数，报1，2，1，2，1，2…一直报到第N个人，报到2的出列，剩下的人再从刚才最后一个报数的人开始报数（如
果该人应该出列，则倒推到他前面第一个没有出列的人）1，2，3，1，2，3…报到2，3的人出列。然后继续，报数范围从开始的1，2报数，到后来得1，2，3…K报
数，直到队伍中只有1个人。请问这个人的编号是多少？每轮每个人只报一次数，即如果该轮开始时人数不足K个人，则不必一定报数到K。
### Input
第一行包含一个整数T表示有T组数据。
每组数据包含一个整数N，表示有N个人。（N<=1000）
1<n, m<1000
### Output
对于每组数据按照题目描述要求输出最终剩余人的编号。
### Sample Input
    
    
    1
    5
    
### Sample Output
    
    
    5
### Warning
请用链表实现。
]]
content[355]=
[[
# 击鼓传花新玩法
### Problem Description
Leo发明了一种新的击鼓传花的玩法：
首先还是n个人围成一圈传“花”，每个人从1~n被编号。游戏开始时1号位默认向2号位传递，以此类推（0秒开始计时，传递一次费时1秒）。击鼓者会在任意时刻发出信
号（包括第0秒），此时立刻反向传递，之后如果又发出信号则再次反向，如此不断往返传递，最后击鼓者将以特殊信号宣布传递结束，传递立即停止。
m秒下来，你能知道“花”最后被传到几号位手里了么？
### Input
只有一组数据，4行
第一行：人数n(0<n<1000)
第二行：传递进行的时间m秒（0<m<1000）
第三行：击鼓者击鼓次数t(0<t<1000)
第四行：击鼓者每一次击鼓所处的时间，即都是在第q[i]秒击鼓（0<q[i]<m, q[i] < q[i+1]）
### Output
  
输出一行结果：
结束时拿着“花“的人的编号p
### Sample Input
    
    
    4
    10
    2
    3 5
    
### Sample Output
    
    
    3
### Warning
请用链表实现。
]]
content[356]=
[[
# Find Marble
### Problem Description
Petya and Vasya are playing a game. Petya's got n non-transparent glasses,
standing in a row. The glasses' positions are indexed with
integers from 1 to n from left to right. Note that the positions are indexed
but the glasses are not.
First Petya puts a marble under the glass in position s. Then he performs some
(possibly zero) shuffling operations. One shuffling
operation means moving the glass from the first position to position p1, the
glass from the second position to position p2 and so on. That
is, a glass goes from position i to position pi. Consider all glasses are
moving simultaneously during one shuffling operation. When the
glasses are shuffled, the marble doesn't travel from one glass to another: it
moves together with the glass it was initially been put in.
After all shuffling operations Petya shows Vasya that the ball has moved to
position t. Vasya's task is to say what minimum number of
shuffling operations Petya has performed or determine that Petya has made a
mistake and the marble could not have got from position s
to position t.
### Input
The first line contains an integer:T(1 ≤ T ≤ 20) —the number of test cases.
In every test cases:
The first line contains three integers: n, s, t (1 ≤ n ≤ 10^5; 1 ≤ s, t ≤ n) —
the number of glasses, the ball's initial and final position.
The second line contains n space-separated integers: p1, p2, ..., pn (1 ≤ pi ≤
n) — the shuffling operation parameters. It is guaranteed
that all pi's are distinct.
Note that s can equal t.
### Output
If the marble can move from position s to position t, then print on a single
line a non-negative integer — the minimum number of shuffling
operations, needed to get the marble to position t. If it is impossible, print
number -1.
### Sample Input
    
    4
    4 2 1
    2 3 4 1
    4 3 3
    4 1 3 2
    4 3 4
    1 2 3 4
    3 1 3
    2 1 3
### Sample Output
    
    3
    0
    -1
    -1
### Hint
From Codeforces Round #175
]]
content[357]=
[[
# “码农”的数据列
### Problem Description
若干年后的你成为了一名“攻城狮”？“程序猿”？或者“码农”？
你被老板派去操作一组从左到右排列的数据，每个数据都是一个整数类型，为了方便操作，在这组数据中加上了两个“Hand”，分别是L和R。
“Hand”的位置例图所示，当Hand位于整个数据列头部的时候，其位置为1。对于整个数据组有如下的操作命令：
（1） MoveLeft L/R 表示把“Hand”L或者R的位置向左移动一位
![<img:/richtext/res/273/1.jpg>](/richtext/res/273/1.jpg)
（2） MoveRight L/R表示把“Hand”L或者R的位置向右移动一位
![<img:/richtext/res/274/2.jpg>](/richtext/res/274/2.jpg)
（3） Insert L X 表示在“Hand”L的右边插入值X
![<img:/richtext/res/275/3.jpg>](/richtext/res/275/3.jpg)
（4） Insert R X表示在“Hand”R的左边插入值X
![<img:/richtext/res/276/4.jpg>](/richtext/res/276/4.jpg)
（5） Delete L表示删除“Hand”L右边的值
![<img:/richtext/res/277/5.jpg>](/richtext/res/277/5.jpg)
（6） Delete R表示删除“Hand”R左边的值
![<img:/richtext/res/278/6.jpg>](/richtext/res/278/6.jpg)
### Input
第一行为1个整数T（0<T<20），表示测试的组数。
对于每组测试数据，第一行为一个整数n，表示数据列有n个整数。
第二行是n（1<= n <= 10000）个整数，为数据列的初始的序列。
第三行是两个整数 l 和 r，分别表示“Hand”L和R的初始位置。
第四行是一个整数m(1 <= m <= 5000)，表示有m组操作命令。
接下来的m行分别是m组操作命令，保证所有的命令合法。
### Output
对于每组测试数据，第一行输出“Case i：”表示第i组测试数据。
第二行输出执行完所有操作命令之后“Hand”L到R之间的所有整数。
### Sample Input
    
    2
    5
    1 2 3 4 5
    1 5
    4
    MoveLeft R
    Insert R 6
    Delete R
    Insert L 7
    5
    6536 5207 2609 6604 -4046
    1 3
    3
    Delete L
    Insert R -9221
    Delete L
### Sample Output
    
    Case 1:
    7 1 2 3 
    Case 2:
    -9221
]]
content[358]=
[[
# 表达式计算
### Problem Description
清明节果然是清明节啊……让人头大的表达式又来了……
要求把中缀表达式转化为后缀表达式，并计算结果。所输入表达式合法，并且数字元素类型为int，符号有(、)、+、-、*、/六种。
保证输入的表达式合法。
### Input
输入有T+1行。第一行为数组的组数T，下面T行分别有T个中缀表达式，表达式中数字元素类型为int。
### Output
后缀表达式
计算结果(输出结果为int)
### Sample Input
    
    
    2
    (56-20)/(4+2)
    3/5
    
### Sample Output
    
    
    56#20#-4#2#+/
    6
    3#5#/
    0
    
### Warning
请用栈实现。
]]
content[359]=
[[
# 括号匹配
### Problem Description
判断输入的表达式中括号（包括圆括号()、方括号[]、大括号{}）是否配对。
仅考虑括号是否匹配，不考虑不同括号之间的逻辑关系。注意是半角！
### Input
输入有T+1行。第一行为数组的组数T，下面T行分别有T个表达式。
### Output
是输出Yes
否输出No
### Sample Input
    
    
    3
    5+[4-3]
    5+((3-1)
    ({})
    
### Sample Output
    
    
    Yes
    No
    Yes
    
### Warning
请用栈实现。
]]
content[360]=
[[
# 搬运工的苦差事
### Problem Description
Leo换工作了，当上了搬运工的苦差事。他手上有份搬运任务清单，每次搬运都要按照清单上的顺序来进行搬运堆起来，搬运到目的地后还要再搬回原地。你以为这样就行了？
NO！清单上还有一个特殊标记，看到这个特殊标记，在往回搬的时候就必须扔掉当前最顶上的那个箱子继续搬运。
可是Leo智商太低（不然怎么会干上搬运工的苦差事），所以他想要一份没有特殊标记的搬运清单，你能给他弄一份么？
可是，Leo也没那么笨，如果初始清单第一个字符就是特殊字符，那他就只有大喊一声“I quit!”不干了。
### Input
一共有n+1行数据：
第一行：整数n代表清单数目（0<n<2^16-1）
余下n行：一个字符串s代表当次搬运任务（0<s.length()<10000，s中只有大小写字母和数字）
### Output
针对每份搬运清单任务s输出处理后的新任务清单。分三行输出：
第一行：从初始地搬运的任务清单（其实去掉特殊字符就是顺序输出，够直白了吧？但是要用栈）
第二行：往回搬的搬运清单
第三行：一个换行符（都说Leo很笨，输出挤在一起他就认不出来了）
（如果不干了，就是两行，你懂的。）
### Sample Input
    
    
    4
    12*3
    AB**C
    d*e*
    *1qW
    
### Sample Output
    
    
    123
    31
    
    ABC
    C
    
    de
    
    
    I quit!
    
    
### Warning
请用栈实现。
]]
content[361]=
[[
# TXT Editer
# Problem Description
现在你要编写一个文本编辑器，该编辑器支持以下4个操作：
1、光标左移一格 (若光标已在最左边就无视这次操作)
2、光标右移一格 (若光标已在最右边就无视这条操作)
3、在光标处插入一个字母
4、删除光标前的一个字母 (等同Backspace键，若光标已在最左边就无视这次操作)
初始文本为空，现在给你一个操作的序列，求操作结束后文本编辑器里面的内容。
# Input
第一行有一个正整数T(T<=10)，表示有T组数据
每行一个字符串Str，字串中只有'L'，'R'，小写字母'a'-'z'与'B'，分别代表以上四种操作。 |str| <= 500,000
# Output
对于每组数据，输出一行字符串，输入数据保证输出字符串不为空。
# Sample Input
    
    
    3
    buaa
    bLuLaLa
    BBLLLaRRRRBb
# Sample Output
    
    
    buaa
    aaub
    b
# Source
SGU改
]]
content[362]=
[[
# 天马's wish
### Problem Description
清明节的时候，天马去请NaNa看电影，并且是情侣专场，就是说只有两个人都到了才能进去。天马（以*表示）最早到了电影院门口等NaNa（以#表示），其间不断有人
来排在天马后面，当一个boy（以大写字母表示）和一个girl（以小写字母表示）在队伍中恰好相邻并成功牵手时（同一个字母）他们就会一起离开队伍进入电影院。这样
天马就遇到了一个问题，那就是如果NaNa来时和天马隔着一些人,NaNa就不能和他一起进去了。你能不能帮天马算算他能不能如愿呢？
（PS：鸟大了什么林子都有，所以必然存在Holmes这种通杀108无压力的生物（以%表示）（什么，你不懂？详情请见"胖哥's GM
Cards"），对26个英文字母更是手到擒来，当然，Holmes是一个boy。）
保证输入的字符串合法。
### Input
多组数据，每组一个字符串，以*开头，以#结尾,字符串长度不超过10^5 + 3
### Output
Yes/No
### Sample Input
    
    
    *hheEHH#
    *NnDgCsScG%#
    *StP%gEep%s#
### Sample Output
    
    
    Yes
    No
    Yes
    
### Warning
请用栈实现。
]]
content[363]=
[[
# 胖哥‘s GM Cards
### Problem Description
众所周知，胖哥有108张GoodMan Card，但是一不小心卡片顺序被打乱了！不能忍啊！于是他找到了k个人帮忙。通过商量，他们决定先各自排好某些卡片，然后
再将卡片合并起来。现在他们找到Firo同学完成最后一步操作。已知这K个人手中已经排好序的卡片，你能帮Firo同学将这K堆卡片合并成一堆有序的卡片吗？（卡片的
顺序以好感度给出，好感度小的排在好感度大的前面）
### Input
输入有T组数据，第一行为数据组数T，接下来每组数据包括k+2行，第一行为一个数K代表有k个人，第二行为这K个人手中分别的卡片数n1,n2...nk，第三行至
第k+2行给出每堆卡片的好感度列表（已经从小到大排好）当然好感可能重复咯。数字以空格隔开。（t<=10,n<=60,k<=25）
### Output
每组数据输出一行，排序后的卡片好感度顺序。
### Sample Input
    
    1
    3
    3 3 2
    5 9 11
    1 4 8
    5 6
    
### Sample Output
    
    1 4 5 5 6 8 9 11
### Hint
请用链表实现，不然Firo同学可是不给分的~
]]
content[364]=
[[
# Exit和Firo的舞伴
### Problem Description
Firo和Exit最近特别无聊，决定要去北航社交舞社找几个妹子陪他们跳舞。但是Firo和Exit发现只有先来的男生才能和先来的女生跳舞，于是他们决定每天都要
早起！~
### Input
多组数据，第一行先输入组数（组数<=20）.
对于每组数据，第一行先输入跳舞的总人数n（人数<=100000
:)），接下来n行，每行再输入人的性别和名字，对于性别,男生用m代表，女生用f代表,先来的男生和先来的女生跳舞(先输入的表示先到！)
### Output
对于每组数据，每行输出一对匹配跳舞的人的名字，女生名在前,男生名在后，中间用一个空格隔开。
### Sample Input
    
    1
    6
    m Exit
    m tianma
    f MuMu
    f NaNa
    m Firo
    f Sarah
    
### Sample Output
    
    MuMu Exit 
    NaNa tianma 
    Sarah Firo 
    
### Hint
用队列实现
]]
content[365]=
[[
# 传话游戏
### Problem Description
Alice和Bob还有其他几位好朋友在一起玩传话游戏。这个游戏是这样进行的：首先，所有游戏者按顺序站成一排，Alice站第一位，Bob站最后一位。然后，Al
ice想一句话悄悄告诉第二位游戏者，第二位游戏者又悄悄地告诉第三位，第三位又告诉第四位……以此类推，直到倒数第二位告诉Bob。两位游戏者在传话中，不能让其他
人听到，也不能使用肢体动作来解释。最后，Bob把他所听到的话告诉大家，Alice也把她原本所想的话告诉大家。
由于传话过程中可能出现一些偏差，游戏者越多，Bob最后听到的话就与Alice所想的越不同。Bob听到的话往往会变成一些很搞笑的东西，所以大家玩得乐此不疲。经
过几轮游戏后，Alice注意到在两人传话中，有些词汇往往会错误地变成其他特定的词汇。Alice已经收集到了这样的一个词汇转化的列表，她想知道她的话传到Bob
时会变成什么样子，请你写个程序来帮助她。
### Input
输入包括多组数据。第一行是整数 T（0 < T <= 20），表示有多少组测试数据。每组数据第一行包括两个整数 N 和 M（0 < N,M <=
100），分别表示游戏者的数量和单词转化列表长度。随后有 M 行，每行包含两个用空格隔开的单词 a 和 b，表示单词 a 在传话中一定会变成
b。输入数据保证没有重复的 a。最后一行包含若干个用单个空格隔开的单词，表示Alice所想的句子，句子总长不超过100个字符。所有单词都只包含小写字母，并且
长度不超过20，同一个单词的不同时态被认为是不同的单词。你可以假定不在列表中的单词永远不会变化。
### Output
对于每组测试数据，单独输出一行“Case #c: s”。其中，c 为测试数据编号，s 为Bob所听到的句子。s
的格式与输入数据中Alice所想的句子格式相同。
### Sample Input
    
    2
    4 3
    ship sheep
    sinking thinking
    thinking sinking
    the ship is sinking
    10 5
    tidy tiny
    tiger liar
    tired tire
    tire bear
    liar bear
    a tidy tiger is tired
### Sample Output
    
    Case #1:
    the sheep is thinking
    Case #2:
    a tiny bear is bear
    
]]
content[366]=
[[
# 停车位2
### Problem Description
头文字D又碰上蛋疼的停车位问题了，不过这次是因为车位紧张，规定只有当车牌号为2的n（n为非负整数）次幂时才能停入车位，至于其他车嘛……就自行解决吧……
现在他想知道自己的车能不能停入车位。
### Input
第一行输入T表示数据组数，以下T行输入车牌号m（1<=T<=1000,0<=m<=10000）
### Output
能停车则输出Yes
否则输出No
### Sample Input
    
    
    3
    1
    2
    3
    
### Sample Output
    
    
    Yes
    Yes
    No
    
### Warning
请用递归实现。
]]
content[367]=
[[
# 顺序队列的基本操作
### Problem Description
如题，完成顺序队列的基本操作即可。包括初始化，销毁，进入队列和离开队列。
### Input
输入有n+2行：
第一行：整数n代表初始化的队列长度（0<n<1000）
第二行：进出队列的操作次数t(0<t<10000)
以下n行：每行一次操作，操作数为int型的整数m，分为两种：
1）进入队列： E m
2）离开队列： D
### Output
输出一行最终队列结果,分三种情况：
1）输出结果队列(空格隔开)；
2）在空队列中执行了离开队列操作，输出”Has No Element!”并停止;
3）在满队列中执行了进入队列操作，输出”I Am Full!”;
### Sample Input
    
    
    4
    5
    E 3
    E 4
    D
    D
    E 1
    
### Sample Output
    
    
    1
    
]]
content[368]=
[[
# 保卫萝卜
### Problem Description
![<img:/richtext/res/330/233557u5t5l6yvlm5mtv5l.jpg>](/richtext/res/330/233557
u5t5l6yvlm5mtv5l.jpg)
Exit最近迷上了保卫萝卜（啥，你没玩过？去百度google一下），但Exit较为愚钝萝卜一会就被啃干净了，你能帮帮他吗？
以下是这个游戏的简化版。
![<img:/richtext/res/326/6597950475469890163.jpg>](/richtext/res/326/659795047
5469890163.jpg)
一些小怪兽来农场偷萝卜，假定它们的路线是自左向右的一条直线（忽略上图），在路上建有各种保卫萝卜的武器，每种武器有各自的攻击范围和攻击力（每个单位时间内对小怪
兽施加的伤害数）
![<img:/richtext/res/331/3.jpg>](/richtext/res/331/3.jpg)
武器分三种
（1）![<img:/richtext/res/327/%E7%93%B6%E5%AD%90.JPG>](/richtext/res/327/%E7%93%
B6%E5%AD%90.JPG)小瓶子 bottle 攻击范围 1 攻击力 2
（2）![<img:/richtext/res/328/%E9%AD%94%E6%B3%95%E7%90%83.JPG>](/richtext/res/32
8/%E9%AD%94%E6%B3%95%E7%90%83.JPG)魔法球 magicball 攻击范围 2 攻击力 5
（3）![<img:/richtext/res/329/%E9%A3%9E%E6%9C%BA.JPG>](/richtext/res/329/%E9%A3%
9E%E6%9C%BA.JPG)飞机 plane 攻击范围 3 攻击力 1
其中，小瓶子和魔法球为单体攻击，它们只会攻击在攻击范围内走在最前面的那个小怪兽，而飞机为AOE，且只能向左进攻，当有小怪兽进入其攻击范围时，飞机会对其左边的
所有小怪兽施加贯穿伤害(包括攻击范围外的）。如果某一个单位时间内小怪兽死亡（血量小于或等于0），则下一个单位时间内武器不会对其攻击。
小怪兽分为三种，血量分别为10，20，50，它们每次能偷到的萝卜数分别为1，2，5，均依次进入农场，且每个单位时间内前进一步，当有小怪兽走到最右端偷到萝卜时
，它会立刻插到队伍最左边并在下一个单位时间内进入农场。当所有的萝卜被偷完时，就Game Over了。
### Input
第一行一个数t，表示共有t组数据
每组数据有多行
第一行有四个数，分别为萝卜数、道路长度(<=30)、武器数n(<=20)和小怪兽数m(<=500)
接下来n行每行为武器的位置和武器的名字
最后m行每行一个数（1~3），为小怪物的类别
### Output
一行，输出剩余的萝卜数
如果萝卜数为0,则输出 Game Over
### Sample Input
    
    
    1
    20 10 3 3
    5 bottle
    2 magicball
    7 plane
    1
    2
    3
    
### Sample Output
    
    
    10
    
### Hint
样例说明
(1)t=1,第一个小怪兽进入农场，魔法球对其造成5点伤害，小怪兽血量降至5。
![<img:/richtext/res/332/4.jpg>](/richtext/res/332/4.jpg)
(2)t=2,第二个小怪兽进入农场，魔法球仍对第一个小怪兽造成5点伤害，此时小怪兽死亡。
![<img:/richtext/res/333/5.jpg>](/richtext/res/333/5.jpg)
(3)t=5,第二个小怪兽走到第4步，三个武器均对其攻击，小怪兽受到8点伤害，血量降至2，同时飞机对第三个小怪兽也造成了1点伤害。
![<img:/richtext/res/334/6.jpg>](/richtext/res/334/6.jpg)
(4)t=6,第二个小怪兽走到第5步，受到瓶子和飞机共3点伤害，血量降至-1死亡，同时第三个小怪兽受到魔法球和飞机共6点伤害，血量降至43。
![<img:/richtext/res/335/7.jpg>](/richtext/res/335/7.jpg)
(5)t=13,第三个小怪兽历尽千辛万苦终于抢到了5个萝卜，此时血量为36，它t=14时会立即从最左端再次进入农场。
![<img:/richtext/res/336/8.jpg>](/richtext/res/336/8.jpg)
### Warning
请用队列实现。
]]
content[369]=
[[
# gEIWEV'W GMTLIV
# Problem Description
mR GVCTXSKVETLC, E gEIWEV GMTLIV, EPWS ORSAR EW gEIWEV'W GMTLIV, XLI WLMJX
GMTLIV, gEIWEV'W GSHI SV gEIWEV WLMJX, MW SRI SJ XLI WMQTPIWX ERH QSWX AMHIPC
ORSAR IRGVCTXMSR XIGLRMUYIW. mX MW E XCTI SJ WYFWXMXYXMSR GMTLIV MR ALMGL IEGL
PIXXIV MR XLI TPEMRXIBX MW VITPEGIH FC E PIXXIV WSQI JMBIH RYQFIV SJ TSWMXMSRW
HSAR XLI EPTLEFIX. jSV IBEQTPI, AMXL E PIJX WLMJX SJ 3, h ASYPH FI VITPEGIH FC
e, i ASYPH FIGSQI f, ERH WS SR. xLI QIXLSH MW REQIH EJXIV nYPMYW gEIWEV, ALS
YWIH MX MR LMW TVMZEXI GSVVIWTSRHIRGI.
rSA CSY KIX E WIVMIW SJ gEIWEV GMTLIVXIBX.
CSYV XEWO MW XS HIGVCTX MX.
# Input
一篇文章，文章里保证只有可显示字符与换行符。
文章的大小不超过500,000
# Output
一篇文章。
# Sample Input
    
    
    gEIWEV'W GMTLIV
    
# Sample Output
    
    
    Caesar's cipher
]]
content[370]=
[[
# 后缀回文串
# Problem Description
尊敬的赵轩昂大神最近研究后缀树后缀自动机后缀数组等等算法焦头烂额。。。仰慕至极。
卑微的屌丝为了尊敬他，以他的名字命名了一种字符串——赵轩昂串！
![<img:/richtext/res/362/%E6%9C%AA%E5%91%BD%E5%90%8D.gif>](/richtext/res/362/%
E6%9C%AA%E5%91%BD%E5%90%8D.gif)
这种串有个另外的名字叫做后缀回文串。
1、啥叫后缀回文串呢？所有后缀子串都是回文串的字符串
2、啥叫后缀呢？如果字符串是[1..N] , 那么他的第 i 个后缀串就是[ i , i + 1 , .... N]
3、啥叫回文串呢？我也不知道
现在昂神给了你一个字符串，屌丝想知道他要删掉多少个字符才能使得剩下的字符可以组成赵轩昂串（顺序可以自己调整）。
# Input
第一行是一个整数 T ，代表数据组数。
对于每组数据，给一个全部都是由英文字母[a-z,A-Z]形成的串。所有数据的字符串长度不超过4,000,000.
# Output
对于每组测试输出一个整数代表最少要删掉的字母数。
# Sample Input
    
    
    3
    aa
    aAa
    afcbfdf
    
# Sample Output
    
    
    0
    1
    4
    
# Source
赵轩昂的崇拜者
]]
content[371]=
[[
# 董叔叔来啦
# Problem Description
在平面直角坐标系下有一个正n边形，n个点从某个点开始按顺时针方向编号为1~n，现在董叔叔只知道其中两个点的坐标。
他急切的想知道其他各点的坐标是什么，于是就让你解决这个问题了。
![<img:/richtext/res/374/QQ%E6%88%AA%E5%9B%BE20130414210248.jpg>](/richtext/re
s/374/QQ%E6%88%AA%E5%9B%BE20130414210248.jpg)
# Input
第一行一个整数 T (T <= 1000) 代表数据组数。
每组数先有三个正整数 n a b ，表示有个正n边形，董叔叔知道a点和b点的坐标。(3 <= n <= 128 , a != b)
接下来有两行，每行两个整数，代表a点和b点的坐标。(坐标范围为[-10000,10000])
# Output
对于每组测试数据输出n行。
每行两个实数，代表1号点~n号点的坐标。
每组数据结束有一个换行符。
只要你的输出结果和标准答案相差不超过0.0001，即算正确。
# Sample Input
    
    
    1 
    6 6 1
    1 0
    1 2
# Sample Output
    
    
    1.0000 2.0000
    2.7321 3.0000
    4.4641 2.0000
    4.4641 0.0000
    2.7321 -1.0000
    1.0000 0.0000
    
    
# Source
给董叔跪烂了
]]
content[372]=
[[
# nanae 带群基
# 限制
时间限制：1s
空间限制：64M
# 题目描述
萌萌的nanae带领 进栈出队群 和 Acdream 群的好基友们来搞基啦。不过大家关系过于密切，以致于场面极其混乱 T_T 无法控制。
nanae开始发零——我是你们的女王！快给我站成一排！
大家就乖乖地站成一排 ， nanae 又说 从1 开始 报数。 大家依次从前往后报数 1 2 3 4 。。。
接下来 nanae 继续发她的号令，她的号令有两种——
1、从 第 X 个人开始依次向后报数，报到结尾
2、询问 第 X 个人，最后一次报数报的是几。
# 输入
第一行是数据组数 T (T <= 15)
对于每一组测试数据
第一行包含两个整数 N , M 。 代表一共 N 个好基友 ， M 声 nanae 的喝令。(N <= 1e9 , M <= 100000)
以下 N 行每行两个整数 A ， B。
如果 A 是 0 代表 nanae 要求好基友从 第 B 个开始依次向后报数。 1 2 3 4 5 6.。。。
如果 A 是 1 代表 nanae 要求第 B 位基友告诉nanae自己最后一次报数说的是几。
# 输出
对于每个 GG 的第二种喝令，输出一行，代表小朋友的最后一次报的数字。
# Input
    
    
    1
    5 4
    0 1
    1 3
    0 2
    1 3
    
# Output
    
    
    3
    2
    
# Source
萌翻了的适妞
]]
content[373]=
[[
# nanae❤cxlove
# 限制
时间限制 ： 3s
空间限制 ： 64M
# 题目描述
话说nanae和爱酱的故事众人皆知。就是世界冠军和女王的故事嘛~~~~
不过小两口会偶尔吵架，他们以一个非常神奇的方式解决——玩儿游戏！今天谁输了谁洗床单。
他们俩手拉手走到了海滩边，看到了很多堆石子，世界冠军 cxlove 一眼就看穿了每堆石子的个数。
他们决定这么玩儿——
    
    
    对于当前的一堆石子，双方轮流取石子，满足：
    1、先手不能第一次把石子取完
    2、之后每次取得的石子数介于 1 和对手刚取的石子数的两倍之间（可以 1 个也可以对手的两倍）
    取走最后一粒石子的人获胜。
    
女王nanae看见那么多石子，不想一堆一堆玩儿，她只想跟cxlove玩儿一局。
nanae让cxlove挑一堆或者两堆（如果是两堆那么合并这两堆石子)跟她大♂战一局！
背景是——nanae先取，并且已知nanae 和 cxlove 足够聪明。
cxlove想问你，她有几种选择石子堆的方式，使得nanae必胜。
# 输入
第一行是数据组数 T (T <= 10)
对于每一组测试数据
第一行包含一个整数 N 代表石子的堆数（N <= 100000）
以下一行 N 个整数 ai(1 <= ai <= 1e9)表示爱酱看出来的每堆石子个数
# 输出
对于每组测试数据输出一个整数，代表nanae可以赢的取法个数。
# Input
    
    
    2
    5
    1 2 3 4 5
    7
    13 42 8 87 11 23 72
    
# Output
    
    
    8
    5
    
# Source
萌翻了的适妞
]]
content[374]=
[[
# Happy nanae's birthday
# 限制
时间限制：1s
空间限制：64M
# Description
  
时至三月初七，nanae酱破壳而生。acm界大喜，众基友以良辰为期，大家以编码为礼，
ac为祝福。然爱酱不然，普天之下莫非爱酱不能ac之题，众矣。但爱慕nanae姐人之众，
虽为世界冠军而不敢忽视，于是遂讨其欢心。流觞曲水，弹琴作赋，才子配佳人，应传为佳话。
惜未带文房四宝。nanae姐不悦。爱酱见小石头，遂生一计。
取n粒石头，每次能拿不大于m粒（1~m），谁拿着最后一块石头谁赢。爱酱先拿，爱酱一心想让nanae姐赢，而nanae姐
心中只有爱酱，nanae姐一心想让爱酱赢。
聪明的你，知道谁会赢么，爱酱赢输出QAQ，nanae姐赢输出happy birthday!!!
  
# Input
多组数据，以 EOF 结尾 (scanf() != EOF)
每组数据两个整数 n , m .(n <= 1e9 , m <= n)
  
# Output
爱酱赢输出QAQ，nanae姐赢输出happy birthday!!!
  
# Sample Input
    
    
    1 1
    2 1
    
# Sample Output
    
    
    QAQ
    happy birthday!!!
    
# Source
狗狗·唐仕
]]
content[375]=
[[
# 相似字符串
### Problem Description
对于两个长度相等的字符串，我们定义其距离为对应位置不同的字符数量，同时我们认为距离越近的字符串越相似。例如，“0123”和“0000”的距离为
3，“0123”和“0213”的距离则为 2，所以与“0000”相比，“0213”和“0123”最相似。
现在给定两个字符串 S1 和 S2，其中 S2 的长度不大于 S1。请在 S1 中寻找一个与 S2 长度相同的子串，使得距离最小。
### Input
输入包括多组数据。第一行是整数 T，表示有多少组测试数据。每组测试数据恰好占两行，第一行为字符串 S1，第二行为
S2。所有字符串都只包括“0”到“9”的字符。
1 ≤ T ≤ 100
### Output
对于每组测试数据，单独输出一行“Case #c: d”。其中，c 表示测试数据的编号（从 1 开始），d 表示找到的子串的最小距离。
### Sample Input
    
    3
    0123456789
    321
    010203040506070809
    404
    20121221
    211
### Sample Output
    
    Case #1: 2
    Case #2: 1
    Case #3: 1
]]
content[376]=
[[
# 最长重复子串
### Problem Description
求一个串中出现的第一个最长重复子串
### Input
输入包括多组数据。第一行是整数 T，表示有多少组测试数据。
以下分别输入 T 行，每行输入一个串，每个串的最大长度为k。
1<=T<=100,1<=k<=100
### Output
对于每组数据，输出一行为第一个最长重复子串
### Sample Input
    
    2
    aabb
    abcabc
    
### Sample Output
    
    a
    abc
    
]]
content[377]=
[[
# nanae 的新欢
# 限制
时间限制 ： 每组数据 2s
空间限制 : 256M
# 题目描述
众所周知，nanae 和她心爱的爱酱分手了。。。因为适妞是其中的小三。适妞跟nanae在一起的时候，特别爱吃醋，不想让nanae提及一点儿关于爱酱的事情。
适妞要求 nanae 换一个 ID ， 因为 nanae 这个 ID 已经跟 cxlove 紧紧地联系在了一起。
nanae 挑选 ID 是很挑剔的，她不想让 适妞 看见他的 ID 里面有一丝跟爱酱有关的词。 这些词被称作 “敏感词”
适妞也不能让nanae 瞎选 ID ， 他也希望nanae选择的单词和自己有关的。并且适妞规定了 nanae 新 ID
的上下区间（也就是字典序必须介于这两个字符串之间，包含两端）
nanae想问你，他现在有多少种选择能满足适妞的要求。P.S. nanae 的ID 仅由小写字母组成
因为nanae 智力有限，他只能算到 2013 * 2013 . 所以 你只要输出答案对于 (2013 * 2013) 取摸即可。
# Input
单组数据
前两行两个长度相等的由小写字母组成的字符串 ， S , T 满足字典序 S < T . 是nanae ID 的上下界.(S , T 的长度 <= 2013)
下面一行一个整数 N (N <= 20 因为 nanae 真实年龄20岁 ^_^) 代表有 N 个敏感词，是 nanae 新的 ID 里面不能出现的。
接下来 N 行每行一个字符串 P ， （长度 <= 10）代表 敏感词。
下面一行一个整数 M (M <= 5 因为 nanae 心理年龄 5岁 ^_^) 代表有 M 个适妞希望出现在 nanae 新 ID 里面的词。
接下来 N 行每行一个字符串 Q , (长度 <= 10) 代表 适妞想出现在nanae 新 ID 里的词。
# Output
输出一个整数，代表nanae 可以选择的 ID 个数。
# Sample Input
    
    
    ilovecxlove
    iloveshiniu
    1
    cxlove
    1
    shiniu
    
# Sample Output
    
    
    1
    
# Source
萌翻了的适妞
]]
