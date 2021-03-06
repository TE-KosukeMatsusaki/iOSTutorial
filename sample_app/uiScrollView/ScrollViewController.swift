//
//  ScrollViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/10/30.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    let storyTitle: String
    
    init(title: String) {
        storyTitle = title
        super.init(nibName: String(describing: ScrollViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "日本昔話"
        switch storyTitle {
        case "momotaro":
            setMomotaroStoryLabel()
        case "urasimataro":
            setUrasimataroStoryLabel()
        default:
            setKintaroStoryLabel()
        }
    }
    
    private func setMomotaroStoryLabel(){
        titleLabel.text = "桃太郎"
        contentLabel.text = "むかし、むかし、ある所におじいさんとおばあさんが住んでいました。\nおじいさんは山へしば刈りに、おばあさんは川へ洗濯に行きました。\nおばあさんが川で洗濯をしていると大きな桃が流れてきました。\n「なんと大きな桃じゃろう！家に持って帰ろう。」\nとおばあさんは背中に担いで家に帰り、その桃を切ろうとすると、なんと桃から大きな赤ん坊が出てきたのです。\n「おっとたまげた。」\n二人は驚いたけれども、とても喜び、\n「何という名前にしましょうか。」\n「桃から生まれたから、桃太郎というのはどうだろう。」\n「それがいい。」\n桃太郎はあっと言う間に大きくなり、立派な優しい男の子になりました。\n     ある日、桃太郎は二人に言いました。\n「鬼ケ島に悪い鬼が住んでいると聞きました。」\n「時々村に来て悪いことをするのでみんな困っている。」\nとおじいさんが答えると、\n「それでは私が行って退治しましょう。おかあさん、きび団子を作って下さい。」\nおばあさんはとてもおいしい日本一のきび団子を作り、桃太郎はそれを腰の袋に入れるとさっそく鬼ケ島に向けて旅立ちました。\n旅の途中、桃太郎は犬に会い、\n「桃太郎さん、袋の中に何が入っているだい。」\n「日本一のきび団子だよ。」\n「僕に一つくれればお伴します。」\n犬は桃太郎から一つ団子をもらい家来になりました。\n桃太郎と犬が歩いて行くと、猿がやってきて、\n「桃太郎さん、袋の中に何が入っているんだい。」\n「日本一のきび団子だよ。」\n「僕に一つくれればお伴します。」\n猿は桃太郎から一つ団子をもらい家来になりました。\nしばらく行くと、キジが飛んできて、\n「桃太郎さん、袋の中に何が入っているんだい。」\n「日本一のきび団子だよ。」\n「僕に一つくれればお伴します。」\nキジは桃太郎から一つ団子をもらい家来になりました。\nしばらく行くと鬼ケ島が見えてきました。\n「あれが鬼ケ島に違いない。」犬が吠えました。\n鬼ケ島に着くと、お城の門の前に、大きな鬼が立っており、桃太郎は大きな石をつかむと鬼に向かって投げました。\n猿は門に登り鍵を開けました。キジは鬼の目をつつきました。\n「こりあ参った。助けてくれ～」\nそういうと、鬼はお城の中に逃げていきました。\nするとお城から沢山の鬼が出てきて、ついに大きな鬼があらわれました。\n「生意気な小僧。俺様が懲らしめてやる。」\n大きな鉄棒を振り回しながら言いました。\n「あなたがかしらですか。」と言うと桃太郎はすばやく鉄棒の上に飛び乗り、\n「悪い鬼、村人に悪いことをしたからには許せない。私のこぶしを受けてみろ。」\n「アイタタ、ごめん。ごめん。許してくれ。降参だ。」\n「本当に約束するか。」\n「約束する。嘘はつきません。宝物をやります。」\n桃太郎はお城の金や銀や織物や、荷車一杯の宝物を手に入れました。\nこうして、桃太郎はおじいさんとおばあさんの待つ家に帰り、みんなで幸せにくらしました。"
    }
    
    private func setUrasimataroStoryLabel(){
        titleLabel.text = "浦島太郎"
        contentLabel.text = "むかし、むかし、あるところに浦島太郎という心やさしい漁師が住んでいました。\nある日のこと、浜辺を歩いていると一匹の亀が子供達にいじめられているのを見ました。\n「これこれ、かめをいじめたらかわいそうだよ。はなしておやり」\nそう言って浦島太郎は子供たちから亀を助けてやりました。\n数日すぎたある日、浦島太郎がいつものようにつりをしていると亀が海から出てきて、\n「浦島太郎さん、僕はこの間あなたから助けられた亀です。お姫様があなたを竜宮城におつれしなさいというのでお迎えにまいりました。」\n「竜宮城へつれていってくれるのかい。それなら、少し行ってみようか。」\n浦島太郎はさっそく亀のこうらに乗ると海の中に入っていきました。\n竜宮城はさんごに囲まれ、魚が泳ぐ、それはそれは美しいお城でした。お姫様はそれはそれは美しいお方でした。\n「浦島太郎さん、亀をたすけてくれてありがとうございます。どうかごゆっくりしていって下さい。」\n太郎は、お城の中の大きな部屋に案内され、たくさんの豪華な料理をごちそうになりました。\nタイやヒラメやタコなどの魚たちが、太郎におどりを見せてくれました。\n浦島太郎は時間のたつのも忘れて楽しみました。\nまるで夢のような毎日でした。\n数日が過ぎ、浦島太郎は村のことやお母さんのことを思い出し、ついに別れの時がやってきました。\n別れぎわ、お姫様は浦島太郎に小さな箱を手渡しました。\n「もう7日も竜宮城にいたので、そろそろ家に帰ります。ありがとうございます。」\n「いつまでも、ここにいて欲しいのですが、しかたありません。では、この玉手箱を持っていってください。でも、この箱は決して開けてはいけませんよ」\n亀に乗って村に帰った浦島太郎は、どうしたことか自分の家もお母さんも見つけられず、村もすっかり変わっていました。\nどうしたらよいかわからなくなってしまい、玉手箱を開けてみることにしました。\nすると白いけむりが出てきて、浦島太郎はあっという間におじいさんになってしまいました。\n竜宮城で楽しく過ごしている間に、何百年も経ってしまったのです。\n浦島太郎は、今どこにいるのか、夢なのかわからなくなってしまいました。\n"
    }
    
    private func setKintaroStoryLabel(){
        titleLabel.text = "金太郎"
        contentLabel.text = "むかしむかし、あしがら山に金太郎という優しく、力の強い男の子がいました。\n\n金太郎は小さいころから力持ちで、 いつも山の中で動物たちと遊んでいました。\nある日、動物たちのなかで一番強いクマとすもうをすることになりました。\n「はっけよーい、のこった！」\n「うんーそれー」ドッターン\n\nなんと、きんたろうはクマも投げ飛ばしてしまいました。\n動物達と綱引きをしても金太郎にかなう相手はいません。\n\nある日、金太郎は母親からまさかりをもらいました。\nそのマサカリでまきわりをして母親の手伝いをしました。\n\nせっせとまきわりをしているきんたろうに動物たちは\n森の中の果物をとりにいこうとさそいました。\n「よし、いこうか」\nきんたろうは動物たちと元気よくでかけました。\nしばらくいくと「あれっ、橋がおちてる！」\nがけにやってきたきんたろうたちは困ってしまいました。\n「よし、みてろ　それー」\nなんと、きんたろうは木をたおして橋にしてしまいました。\n\nそんな金太郎のうわさを聞きつけた都の武士が\n金太郎をたずねてあしがら山までやってきました。\n「あなたの力の強さには驚いた。きっと立派なぶしになれるでしょう。」\n「どうかね、私と一緒に都へこないか」\nと都の武士に言われた金太郎は武士になるために、都へ行くことに決めました。\n\n「ぼくは都でりっぱなぶしになります」\n金太郎はそう母親に告げると、あしがら山の動物たちにお別れを言い、都へ行きました。\n\nそして金太郎は心優しく立派なぶしになりました。おしまい"
    }
}
