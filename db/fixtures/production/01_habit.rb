Habit.seed do |s|
  s.id = 1
  s.name = 'RUNNING'
  s.sub_title = 'Either you run the day, or the day runs you.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/1-1.jpg").open
  s.subheading_a = '毎日身体を動かそう'
  s.subheading_b = '目標は週１回３０分'
  s.instruction_a = '身体を動かすことで、精神安定作用や自律神経を整える効果のあるホルモン「セロトニン」が多く分泌され、ストレス解消・腸内環境の改善に役立ちます。腸内環境が整うことで消化器官の免疫力向上や必須栄養素が体内に吸収されやすくなります。また、短時間かつ瞬発的な無酸素運動とは異なり、脂肪燃焼効果が高く、筋力の向上、血行が良好になることによる脳運動の向上が期待されています。'
  s.instruction_b = '最初のうちは距離よりも時間重視で始めましょう。「週に１回３０分だけ走る」と決めて取り組めば時間の調整もしやすく、無理なく走ることができます。また、心拍数が上がるような負荷のかかるペースは避け、走りながら会話が出来るスピードを意識し、ゆっくりしたペースを心がけましょう。途中で歩いてもいいので、無理せず３０分取り組むことが大事です。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/1-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/1-3.jpg").open
end

Habit.seed do |s|
  s.id = 2
  s.name = 'READING'
  s.sub_title = 'Today a reader, tomorrow a leader.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/2-1.jpg").open
  s.subheading_a = '読書で長生きしよう'
  s.subheading_b = '１日２ページしか読まない'
  s.instruction_a = '富裕層特有の習慣のひとつに読書が含まれています。読書は語彙力や教養、新しい知識を吸収できるだけでなく、多くの考えに触れることで新しいアイデアを生み出す発想力も得られます。また、読書を通して左脳から右脳へ頻繁に情報を転送するため、脳が活性化され、記憶力や情報に対する処理能力も格段に向上すると言われています。その他にも、読書量は年収に比例する、読書家は長生きするという面白い研究結果もあるそうです。'
  s.instruction_b = 'これから読書習慣を始める方は、まずは自分の好きなジャンル、興味を持った本から読んでみましょう。また、一気に読みきろうとするのではなく、「１日２ページしか読まない」と自分ルールを決めてから読書を始めましょう。人間は抑制されると反発したくなる気持ちが出てくるため、そのうち「もう少しだけ読みたい」という気持ちが強くなり、ついつい読み進めてしまうようになります。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/2-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/2-3.jpg").open
end

Habit.seed do |s|
  s.id = 3
  s.name = 'WAKE UP'
  s.sub_title = 'Wake up and be awesome.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/3-1.jpg").open
  s.subheading_a = '自分のための時間を確保する'
  s.subheading_b = '起きる時間より寝る時間を意識する'
  s.instruction_a = '成功者と呼ばれている人のほとんどが早起きをしています。その理由として、目覚めた直後の「パフォーマンスの高さ」が挙げられます。人間は、睡眠によって脳の疲労を取り除くため、起きた直後が最も脳の疲労が少ない状態になります。その時間に仕事とは別の「やりたいこと」を行ったり、キャリアアップのための勉強を行うことは、同じ余暇の使い方でも仕事後に比べてかなり効率的であると言えます。多くの成功者は、自分のために使える時間の重要性を意識しているのかもしれません。'
  s.instruction_b = '睡眠時間が短ければ短いほど、起きることが辛くなるはずです。まずは就寝前の行動を振り返りましょう。寝る直前までスマートフォンを触る「スマホ依存」の人が最近増えてきていますが、スマホのブルーライトには自然な睡眠を誘う「メラトニン」というホルモンの分泌量が抑制される効果があり、睡眠作用が妨げられてしまいます。スマホをいじりたい気持ちをぐっと抑え、睡眠のリズムを整えましょう。（この習慣では、「普段の起床時間より何分早く起床できたか」を記録していきましょう。）'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/3-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/3-3.jpg").open
end

Habit.seed do |s|
  s.id = 4
  s.name = 'MUSIC'
  s.sub_title = 'When words fail, music speaks.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/4-1.jpg").open
  s.subheading_a = '「聴く」より「奏でる」'
  s.subheading_b = '音楽仲間を見つけよう'
  s.instruction_a = '音楽を「聴く」ことによりストレス軽減やヒーリング効果があると言われていますが、実は楽器を「演奏」することで脳の様々な領域が活性化することが証明されており、「聴く」以上の効果が得られると言われています。毎週数時間しか演奏の練習をしなかった場合であっても4～5ヵ月後には記憶力に目覚ましい向上がみられることや、ピアノのレッスンを受けた高齢者が6ヵ月後に、記憶の保持、言葉の流暢さ、情報処理、また計画力について明らかな改善を示したことが研究により明らかになっています。'
  s.instruction_b = '初めのうちは「基本的で簡単な演奏を身につける」など、小さな目標を掲げながら着実にスキルアップをしていくことを目指しましょう。また、継続するためには音楽仲間を作ることも重要です。1人で演奏していると退屈になり楽器を触らなくなるという状況が生まれがちですが、同じ目標を掲げる音楽仲間と互いに刺激を与え合うことで、仲間とともに演奏スキルを磨くことができるはずです。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/4-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/4-3.jpg").open
end

Habit.seed do |s|
  s.id = 5
  s.name = 'DRAWING'
  s.sub_title = 'I dream my painting and then I paint my dream.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/5-1.jpg").open
  s.subheading_a = '表現することは自分を知ること'
  s.subheading_b = 'プロの技を盗む'
  s.instruction_a = '創作活動は自己表現の役割を担っており、何にも縛られることなく自分を自由に表現することができます。また、絵を描くことに集中することで瞑想状態を生み出すことができ、無駄な雑念にとらわれることがなくなり、無意識のうちに自分の抱える問題を提示・分析・解決していくという自己治癒「セルフセラピー」につながります。描く作業を通して心の中を整理整頓し、自分を見つめ直しましょう。'
  s.instruction_b = '人間や動物、風景を描くためには表現に関する知識が必要です。人物像であれば体の比率や骨格の理解、風景画であれば物の重なり合いや遠近法など、様々な表現方法が求められます。最初は模写を重ねて、プロの絵師の描き方を意識しながら吸収し、自分の作品へ昇華させていきましょう。また、自分の作品には必ず日付を書いてください。過去の自分の作品と比較しやすくなり、自分の成長を感じることができます。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/5-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/5-3.jpg").open
end

Habit.seed do |s|
  s.id = 6
  s.name = 'STUDY'
  s.sub_title = 'Knowledge is power.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/6-1.jpg").open
  s.subheading_a = 'なりたい自分を目指して'
  s.subheading_b = '優先順位を決める'
  s.instruction_a = '勤務先でのスキルアップのための勉強、資格試験のための勉強、自分の趣味に関する勉強など、社会人になってから勉強する人たちは、自身のさらなる成長を目指しているという共通点があります。勉強を通して知識をつけることで仕事のレベルも上がり、大きなプロジェクトを任せられたり、収入が上がればプライベートもさらに充実したものへと変えられます。自分の目標を実現するための手段の一つとして勉強が必要ならば今すぐ取りかかりましょう。'
  s.instruction_b = '学習にはお金と時間と労力がかかります。まずは現在の仕事に役立つもの、収入アップに繋がるものなど、自分にとってリターンが期待できるものから優先的に勉強しましょう。また、人間の脳は1日の中で覚醒状態とそれ以外を繰り返します。自分の脳の状態をよく観察し、自分が効率よく集中して作業できる時間帯を見つけ出しましょう。多くの方は朝が適しているという調査結果も出ています。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/6-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/6-3.jpg").open
end

Habit.seed do |s|
  s.id = 7
  s.name = 'PROGRAMMING'
  s.sub_title = 'while(!(succeed = try()));'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/7-1.jpg").open
  s.subheading_a = '『プログラミング的思考』'
  s.subheading_b = '作りたいものを作ろう'
  s.instruction_a = 'プログラミングには「トライアンドエラー」がつきものです。この「トライアンドエラー」を繰り返すことによって、物事を論理的に考えたり、目的を達成するための手順を明確に描いたり、知識や情報を整理したりする力が身に付きます。こうした『プログラミング的思考』（＝論理的に考える力）を身につけることで、次第に物事全体を見渡せるようになり、課題の発見および解決能力、分析能力、創造力も鍛えられます。'
  s.instruction_b = 'プログラミング学習では、自分が実際に作りたいサービスを勉強しながら作ってみるのが一番です。最初のうちは「基礎学習 → サンプルサイト制作」の流れを繰り返してください。制作物は簡単なもので大丈夫です。自分が書いたコードが実際に動くと小さな達成感を得られ、こうした成功体験が積み重なることで学習を続ける上にあたっての大きなモチベーションとなっていきます。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/7-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/7-3.jpg").open
end

Habit.seed do |s|
  s.id = 8
  s.name = 'MUSCLE TRAINING'
  s.sub_title = 'NO PAIN. NO GAIN.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/8-1.jpg").open
  s.subheading_a = '加齢に負けない体をつくる'
  s.subheading_b = '負荷と休息をバランスよく'
  s.instruction_a = '筋トレを継続することで、筋肉量とともに基礎代謝量（生命活動で消費されるエネルギー量）が増加するだけでなく、体内の代謝を促す成長ホルモンも分泌されます。これにより体の細胞が合成促進して骨や筋肉が作られるだけでなく、脳の疲労回復や病気への抵抗力をつけることにも役立ちます。また、トレーニング量とその効果には個人差がありますが、筋トレを継続することでサルコペニア（加齢に伴う筋委縮）の進行を約3分の1程度に抑えることができると言われています。'
  s.instruction_b = '筋肉を強化するには、トレーニングはもちろん休息も非常に重要です。トレーニング後は48時間～72時間休息し、プロテインや食事でエネルギー補給をして、しっかり身体を休ませてあげましょう。きちんと回復していない状態でトレーニングに取り組んでも筋肥大はしないので注意してください。また、毎回同じトレーニングメニューでは徐々に身体が順応して筋肉は成長をストップしてしまうため、日頃から新しいトレーニングを加えていきましょう。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/8-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/8-3.jpg").open
end

Habit.seed do |s|
  s.id = 9
  s.name = 'DIET'
  s.sub_title = 'Dear stomach,your bored,not hungry. So shut up.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/9-1.jpg").open
  s.subheading_a = '太る原因はさまざま'
  s.subheading_b = '基礎代謝を上げよう'
  s.instruction_a = '偏った栄養素しか摂らない食生活、食欲を増大させてしまう睡眠不足、エネルギーの消費量が減少する運動不足、誤ったダイエット方法など、太ってしまう原因はさまざまなものが考えられます。「太りやすい体質」を理由とする方も多いですが、生活習慣のほうが重要です。無理なダイエットをするよりも生活習慣や食習慣の改善に取り組みましょう。結果的に痩せやすくなります。'
  s.instruction_b = '痩せるためには摂取エネルギーよりも消費エネルギーを多くして、基礎代謝を上げることがポイントです。消費エネルギーが多くなると、身体は脂肪を分解してエネルギーを作り出すため痩せやすくなります。寝起きのストレッチで基礎代謝を上げる、１駅分歩くことで消費エネルギーを増やす、代謝を下げてしまう冷たい飲み物を控える、満腹中枢を働かせるためによく噛んで食べるようにするなど、できることから少しずつ自分の生活に取り入れていき、美しく健康的な身体を目指しましょう。（この習慣では、「痩せるために努力した時間」を記録していきましょう。）'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/9-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/9-3.jpg").open
end

Habit.seed do |s|
  s.id = 10
  s.name = 'COOKING'
  s.sub_title = 'Cooking is love made visible.'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/10-1.jpg").open
  s.subheading_a = '体と心に栄養を'
  s.subheading_b = '「手抜き」を心がける'
  s.instruction_a = '料理は栄養のバランスを調整できるだけでなく、調理後は自分の料理を見て達成感を得ることができるため、体の栄養だけでなく心の栄養にもつながります。また複数の料理を同時進行で進めるため、脳の概念を扱う部分が活性化し、計画性や時間管理能力を得られると言われています。ちなみにアメリカではうつ病の治療として「クッキングセラピー」という手法が注目を集めており、料理にはセラピー効果や瞑想効果をもたらすことが医学的に認められています。'
  s.instruction_b = 'これから料理を始める方は、「一汁三菜でバランスの良い献立」や「SNS栄えの良い料理を作る」といった考えを捨てて、「そこそこ手軽でシンプルなものを作る」という気持ちで取り組んだ方が継続できます。作り置きや冷凍庫を駆使して「手抜き」を心がけるようにしましょう。凝った料理を作りたい場合は時間のある週末にチャレンジしてみましょう。'
  s.image_a = Rails.root.join("db/fixtures/image/habit_show/10-2.jpg").open
  s.image_b = Rails.root.join("db/fixtures/image/habit_show/10-3.jpg").open
end