# yadokari

yadokariとは、コンソールから宿を予約するプロジェクトです。
現在、以下の言語に対応しております。

* Ruby
    * created by [@nof](https://github.com/omishimaspace/yadokari.rb)
* Python
    * created by [@rhoboro](https://github.com/omishimaspace/yadokari.py)
* Node.js
    * created by [@hayashiki](https://github.com/omishimaspace/yadokari.js)
    
このシステムは、2018/03/03に[オオミシマスペース](https://omishima-space.com)で開催された、ハッカソンで4人のエンジニアが作りました。
## Installation

### Ruby
```sh
$ gem install yadokari
```


### Python
```sh
# python3.5 or higher
$ pip3 install yadokari
```


### Node.js
```sh
$ npm install -g yadokari
```


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
Holiday: 2018-03-03 - 2018-03-04
Reserved: 2018-03-12 - 2018-03-15
```

* 宿の予約

```sh
$ yadokari reserve omishima-space
your name: mishima
email address: mishima@example.com
tel number: 09012345678
check in date: 2018/01/01
check out date: 2018/01/02
check in time: 15:00
number of men: 2
number of women: 2
purpose of use [開発合宿]: ハッカソン！
method of payment [現金支払い]:
coupon code [無し]:
note [無し]:

*** YOUR INFORMATION ***
0. your name: mishima
1. email address: mishima@example.com
2. tel number: 09012345678
3. check in date: 2018/01/01
4. check out date: 2018/01/02
5. check in time: 15:00
6. number of men: 2
7. number of women: 2
8. purpose of use: ハッカソン！
9. method of payment: 現金支払い
10. coupon code: 無し
11. note: 無し
************************

confirm(Y/y) or edit(0-11): y
{"token":"32daa984-4254-42d7-9ba5-ea7566002aa6"}
done!!
```

* 自分の予約情報を確認

```sh
$ yadokari me e4ff7fe9-945f-4a7e-af0d-9f1a67726627
{'check_in_on': '2018-01-01',
 'check_in_time': '15:00',
 'check_out_on': '2018-01-02',
 'coupon': '無し',
 'created_at': '2018-03-04T01:39:10.898Z',
 'email': 'tanaka@example.com',
 'id': 12,
 'men_number': 3,
 'name': 'tanaka',
 'note': '無し',
 'payment_method': '現金支払い',
 'purpose_of_use': '開発合宿',
 'room_id': None,
 'status': None,
 'tel': '09012345678',
 'token': 'e4ff7fe9-945f-4a7e-af0d-9f1a67726627',
 'updated_at': '2018-03-04T01:39:10.898Z',
 'women_number': 3,
 'yado_id': 1}
```
