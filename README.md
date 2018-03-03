# yadokari

## Command Line Tool Usage

* 宿の一覧表示

```sh
$ yadokari list
1. omishima-space
```

* 宿の情報表示

```sh
$ yadokari show omishima-space
https://omishima-space.com/
```

* 宿の予約状況確認

```sh
$ yadokari cal omishima-space
      3月 2018
日 月 火 水 木 金 土
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31
```

* 宿の予約

```sh
$ yadokari reserve omishima-space
check in date: 2018/07/07
check out date: 2018/07/08
your name: mishima
email address: mishima@example.com
how many people: 5

*** YOUR INFOMATION ***
1. check in date: 2018/07/07
2. check out date: 2018/07/08
3. your name: mishima
4. email address: mishima@example.com
5. how many people: 5
**********************

confirm(Y/y) or edit(1-5): 2
check out date: 2018/07/09

*** YOUR INFOMATION ***
1. check in date: 2018/07/07
2. check out date: 2018/07/09
3. your name: mishima
4. email address: mishima@example.com
5. how many people: 5
**********************

confirm(y) or edit(1-5): y
done!!

*** YOUR TOKEN ***
jfkdjakfjdkfjkdjk
******************
```

* 自分の予約情報を確認

```sh
$ yadokari me jfkdjakfjdkfjkdjk
*** YOUR INFOMATION ***
1. check in date: 2018/07/07
2. check out date: 2018/07/09
3. your name: mishima
4. email address: mishima@example.com
5. how many people: 5
**********************
```
