# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


HouseMaker.create(name: "積水ハウス")
HouseMaker.create(name: "大和ハウス")
HouseMaker.create(name: "セキスイハイム")
HouseMaker.create(name: "住友林業")
HouseMaker.create(name: "住友不動産")
HouseMaker.create(name: "ヘーベルハウス")
HouseMaker.create(name: "ミサワホーム")
HouseMaker.create(name: "一条工務店")
HouseMaker.create(name: "三井ホーム")
HouseMaker.create(name: "パナソニックホームズ")
HouseMaker.create(name: "タマホーム")
HouseMaker.create(name: "トヨタホーム")

User.create!(
  [
    {
      email: 'test@test.com',
      username: 'ゲストユーザー',
      password: '123456',
      have_house: '1',
      maker_name: '一条工務店'
    },
    {
      email: 'test1@test.com',
      username: 'ゆうだい',
      password: '123456',
      have_house: '1',
      maker_name: '檜屋'
    },
    {
      email: 'test2@test.com',
      username: 'こすぎ',
      password: '123456',
      have_house: '2',
      maker_name: '住友不動産'
    },
    {
      email: 'test3@test.com',
      username: 'はうす',
      password: '123456',
      have_house: '1',
      maker_name: 'ヘーベルハウス'
    },
    {
      email: 'test4@test.com',
      username: 'めーかー',
      password: '123456',
      have_house: '2',
      maker_name: '一条工務店'
    },
    {
      email: 'test5@test.com',
      username: 'てすと',
      password: '123456',
      have_house: '1',
      maker_name: '一条工務店'
    }
  ]
)

Post.create!(
  [
    {
      id: '1',
      user_id: '1',
      title: '一条の床暖どうですか？',
      body: '全艦床暖房って実際どうなのか気になりますね'
    },
    {
      id: '2',
      user_id: '2',
      title: '檜屋の良さ教えてください',
      body: '檜屋さん気になってるんですけど、住んでる方いましたら教えてください1'
    },
    {
      id: '3',
      user_id: '3',
      title: '住友不動産住んでます',
      body: '住友不動産はとても寒いし、全艦空調壊れても修理不可なので、その点どうなんでしょう、、、'
    },
    {
      id: '4',
      user_id: '4',
      title: 'ヘーベルさん',
      body: '見学行きましたがめちゃめちゃよさそうでした！ヘーベル住んでる方いますか？'
    },
    {
      id: '5',
      user_id: '5',
      title: '床暖最高',
      body: '一条でたてましたが、床暖房最高ですね'
    },
    {
      id: '6',
      user_id: '6',
      title: 'こんにちは',
      body: 'これから立てる計画を立てています。よかったらいろいろ教えてください'
    }
  ]
)


Comment.create!(
  [
    {
      user_id: '1',
      post_id: '5',
      comment: 'やっぱ床暖房いいんですね！電気代とかどうですか？'
    },
    {
      user_id: '5',
      post_id: '5',
      comment: 'めちゃくちゃいいですよ！電気代はオール電化で月平均すると1万円暗いですね！'
    },
    {
      user_id: '1',
      post_id: '5',
      comment: 'やすい、、、24時間が普通って聞いたんですけど24時間つけてその値段ですか？'
    },
    {
      user_id: '5',
      post_id: '5',
      comment: 'そうですね！24時間付けてもこの電気代なんでとても助かってます！'
    },
    {
      user_id: '1',
      post_id: '5',
      comment: '参考になりました！教えていただきありがとうございます！'
    },
    {
      user_id: '4',
      post_id: '3',
      comment: '住友不動産さん金額的にいいなと思ってたんですが、全艦空調直せないのはひどいですね。'
    },
    {
      user_id: '3',
      post_id: '3',
      comment: 'そうですね、、、夏はほんとにしんどかったので、あまり家に居たくなかったですね＾＾；'
    }

  ]
)

Favorite.create(
  [
    {
      user_id: '1',
      post_id: '1'
    },
    {
      user_id: '1',
      post_id: '2'
    },
    {
      user_id: '1',
      post_id: '3'
    },
    {
      user_id: '1',
      post_id: '4'
    },
    {
      user_id: '1',
      post_id: '5'
    },
    {
      user_id: '2',
      post_id: '3'
    },
    {
      user_id: '2',
      post_id: '2'
    },
    {
      user_id: '2',
      post_id: '6'
    },
    {
      user_id: '1',
      post_id: '4'
    },
    {
      user_id: '1',
      post_id: '5'
    }

  ]
)
Review.create(
  [
    {
      user_id: '1',
      house_maker_id: '1',
      content: 'まあまあ',
      score: '3'
    },
    {
      user_id: '1',
      house_maker_id: '1',
      content: 'よかった',
      score: '4'
    },
    {
      user_id: '1',
      house_maker_id: '1',
      content: 'びみょう',
      score: '2'
    },
    {
      user_id: '1',
      house_maker_id: '1',
      content: 'どうなんでしょうか',
      score: '2'
    },
    {
      user_id: '1',
      house_maker_id: '1',
      content: 'まあまあ',
      score: '3'
    }
  ]
)