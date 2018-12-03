```
{
	"user": { //ユーザー情報
		"UnP1ceTS13OcVfbEjefSGHGA8QJ2": { //uid
			"name": "user1", //ニックネーム
			"loginDate": "2018-11-29T13:00:00+09:00", //ログイン時間
			"favoriteItems": { //お気に入り情報
				"1": 101,
				"2": 5
			},
			"checkInRequest": 1, //リクエストディスプレイ番号
			"checkInStatuse": 1, //チェックインディスプレイ番号
			"intensity": -70.223, //ビーコン強度
			"checkInRequestDate": "2018-11-28T13:30:00+09:00", //リクエスト開始時間
			"checkInRequestUpdate": "2018-11-28T13:32:00+09:00", //リクエスト更新時間
			"checkInStatusDate": "2018-11-28T13:31:00+09:00" //チェックイン時間
		},
		"uid2": {
			"name": "user2",
			"loginDate": "2018-11-29T14:00:00+09:00",
			"favoriteItem": {
				"1": 101
			},
			"checkInRequest": 1,
			"checkInStatuse": 2,
			"intensity": -72.223,
			"checkInRequestDate": "2018-11-30T13:30:00+09:00",
			"checkInRequestUpdate": "2018-11-30T13:30:00+09:00",
			"checkInStatusDate": "2018-11-30T13:30:00+09:00"
		},
		"uid3": {
			"name": "user3",
			"loginDate": "2018-11-30T15:00:00+09:00",
			"favoriteItems": {},
			"checkInRequest": 1,
			"checkInStatuse": "",
			"intensity": -71.223,
			"checkInRequestDate": "2018-11-30T13:30:00+09:00",
			"checkInRequestUpdate": "2018-11-30T13:30:00+09:00",
			"checkInStatusDate": ""
		}
	},
	"checkInRequest": { //リクエスト情報
		"1": { //ディスプレイ番号
			"UnP1ceTS13OcVfbEjefSGHGA8QJ2": true, //リクエストしているuid
			"uid3": true
		},
		"2": {
			"uid2": true
		},
		"3": { //ディスプレイ番号にuidがないとDB上に番号が表示されない
		},
		"4": {
		},
		"5": {
		}
	},
	"checkInStatus": { //チェックイン情報
		"1": { //ディスプレイ番号
			"UnP1ceTS13OcVfbEjefSGHGA8QJ2": true //チェックインしているuid
		},
		"2": {
			"uid2": true
		},
		"3": { //ディスプレイ番号にuidがないとDB上に番号が表示されない
		},
		"4": {
		},
		"5": {
		}
	},
	"floorInfomation": { //フロア情報
		"1F": { //フロア1Fの情報
			"floorId": 1, //フロアID
			"name": "情報1" //フロア詳細
		},
		"2F": {
			"floorId": 2,
			"name": "情報2"
		},
		"3F": {
			"floorId": 3,
			"name": "情報3"
		},
		"4F": {
			"floorId": 4,
			"name": "情報4"
		}
	}
}
```