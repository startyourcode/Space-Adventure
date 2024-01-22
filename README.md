# Space-Adventure

全15のステップを通して、ひとつのアプリケーションを完成させます。
作成するアプリケーションにGUIはありません。
アプリケーションのGUI（グラフィカル・ユーザー・インターフェイス）はボタンや画像、あるいはスライダーのような操作系を指します。
ここで作成するのはCLIアプリケーションと呼ばれるもので、コマンドライン・インターフェイス上のテキストによって操作を行います。
アプリケーションから外観を排除することで、より純粋にプログラムの仕組みを学ぶことができます。

### Xcodeのワークスペース

Xcodeでアプリケーションを作成するために最初にすることは、プロジェクトの準備です。
プロジェクトの準備が完了すると、Xcodeのワークスペース上で様々な作業を行うことができます。
Xcodeのワークスペースは、いくつかのエリアによって構成されています。
ワークスペースでの作業に必要でなければ、ツールバー、ナビゲータ、インスペクタは隠すこともできます。

### Xcodeプロジェクト

Xcodeプロジェクトには、様々なファイルやフォルダが含まれます。
プロジェクトナビゲータで、それらの拡張子に注目すると、それぞれの目的を知ることができます。
いくつかのファイルおよびフォルダは、プロジェクトを作成すると自動的に構成されます。

* .swiftファイル

    アプリケーションのソースコードがSwiftで記述されたファイルです。
    Xcodeでアプリケーションを作成するには、主にこの形式のファイルを編集することになります。

* .plistファイル

    アプリケーションの設定情報です。
    この拡張子は、属性の一覧（Property List）を意味します。

* .xcassetsフォルダ

    アプリケーションで使用するあらゆる画像が含まれます。
    アセットカタログと呼ぶこともあります。
    なお、プロジェクトナビゲータの最上部にあるプロジェクト名をクリックすると、エディタ領域にプロジェクトファイルが表示されます。
    プロジェクトファイルでは、iPhoneのホーム画面で表示される「アイコン下の名前」や、アプリケーションが対応するデバイス方向などを設定できます。

# Step 1. プロジェクトを作成する

新しいXcodeプロジェクトを作成します。
そして、プログラムをアプリケーションとして実行する前に、ビルドを行います。
ビルドは、それらの情報を正しく組み合わせる（アセンブル）ことによって、アプリケーションの実行ファイルを生成します。
Xcodeはプログラムを実行するとき、自動的にビルドも行います。

Macのデベロッパーモードを有効にしておくと、Xcodeのデバッグ機能を使用する際にパスワード入力をスキップできます。

### このレッスンで学ぶこと

* `print()`関数
* プログラムのビルドと実行
* プログラムのエントリーポイント
* `let`キーワードによる定数の宣言
* 型アノテーション
* `var`キーワードによる変数の宣言
* `var`ではなく、`let`で宣言するベストプラクティス
* 関数の呼び出し構文と引数
* 文字列を補間する方法
* 既定値に基づいて、Swiftがデータ型を推論すること
* Swiftコードでは、型アノテーションが必須ではないこと
* 初期化

### プロジェクトの手順

まずは、プロジェクトを作成します。

1. Xcodeを起動して、「Create a new Xcode project」を選択してください。

2. 作成するアプリケーションの種類を選択します。
macOSのApplicationテンプレートから「Command Line Tool」を選択して、「Next」をクリックしてください。

3. 作成するプロジェクトの設定を行います。
「Product Name」にプロジェクト名を入力してください。
そして、「Language」が「Swift」になっていることを確認してから、「Next」をクリックしてください。

4. プロジェクトの保存場所を選択して、「Create」をクリックしてください。

ナビゲータエリアとエントリーポイントを見てみましょう。

5. ワークスペースが表示されたら、ナビゲータエリアに注目します。
プロジェクトナビゲータが選択されていることを確認してください。

6. *main.swift* は、このプログラムのエントリーポイント（開始点）です。
*main.swift* ファイルを選択してください。

7. 文字列リテラル`"Hello World!"`を、以下のように変更してください。
さらに、説明文を追加します。

    ```swift
    print("Here is the solar system!")
    print("There are 8 planets to explore.")
    print("Diameter of The Earth is 12756.274 km.")
    ```

8. プログラムを実行するには、メニューバーの「Run」ボタンをクリックします。（または、⌘+R）
プログラムの実行結果は、コンソールエリアに表示されます。

    ```console
    Here is the solar system!
    There are 8 planets to explore.
    Diameter of The Earth is 12756.274 km.
    ```

9. 「太陽系に存在する惑星の数」と「地球の直径」を示す2つの定数を定義します。

    ```swift
    let numberOfPlanets: Int = 8
    let diameterOfEarth: Double = 12756.274

    print("Here is the solar system!")
    print("There are 8 planets to explore.")
    print("Diameter of The Earth is 12756.274 km.")
    ```
    
10. これらの定数を使って、文字列を補間してください。

    ```swift
    print("Here is the solar system!")
    print("There are \(numberOfPlanets) planets to explore.")
    print("Diameter of The Earth is \(diameterOfEarth) km.")
    ```
    
11. プログラムを実行（ ⌘+R ）して、コンソールに「補間された説明文」が出力されることを観察してください。

    ```console
    Here is the solar system!
    There are 8 planets to explore.
    Diameter of The Earth is 12756.274 km.
    ```
    
コードをより簡潔に記述しましょう。

12. 定数宣言の型アノテーションを省略してください。

    ```swift
    let numberOfPlanets = 8
    let diameterOfEarth = 12756.274
    ```

13. プログラムを実行（ ⌘+R ）してください。
以前と同じように、プログラムが正しく動作することを観察してください。

# Step 2. プログラムと対話する

ユーザーが入力した名前に対して、挨拶します。
ユーザーの選択に応じたコードを実行して、適切な結果を表示します。

### このレッスンで学ぶこと

* `readLine()`関数によるコンソール対話
* コードアノテーションでジャンプバーにTODOを登録する
* 代入演算子`=`
* 関数を定義する`func`キーワード
* 値を返す関数
* `Bool`型の真偽値
* 等価演算子`==`
* フロー制御構文（If-Else条件分岐構文）
* オプショナル値のアンラップするために感嘆符`!`を使用する

### プロジェクトの手順

ユーザーがプログラムと対話できるようにしましょう。

1. プログラムを実行中のユーザーに、氏名を入力するように促します。
「ユーザがコンソールで入力した値」を取得するために、`readLine()`関数を使用してください。

    ```swift
    print("What is your name?")
    let yourName = readLine()!
    print("Hi, \(yourName).")
    ```

2. プログラムを実行してください。
コンソール上で対話して、「入力された名前に対する挨拶」が出力されることを観察してください。

    ```console
    What is your name?
    Charlie

    Hi, Charlie.
    ```

ユーザーの意思に基づいて、探索する方法を決定しましょう。

3. ユーザーに「惑星をランダムに探索するかどうか」を質問するために、`readLine()`関数を使用してください。

    ```swift
    print("Choose a planet to explore, randomly? (Y or N)")
    let decision = readLine()!
    ```

4. `decision`定数に基づいて、「どのようなタスクを実行するか」を判断するIf-Else構文を実装してください。

    ```swift
    if decision == "Y" {
        print("Ok! Exploring planet randomly...")
    } else {
        print("Ok, please select a planet to explore...")
    }
    ```

5. プログラムを実行してください。
コンソール上で対話し、「YまたはN」を入力してそれぞれの出力を観察してください。
    
    「Y」を入力した場合

    ```console
    Choose a planet to visit, randomly? (Y or N)
    Y

    Ok! Exploring planet randomly...
    ```

    「N」を入力した場合

    ```console
    Choose a planet to visit, randomly? (Y or N)
    N

    Ok, please select a planet to explore...
    ```
    
Xcodeのジャンプバーを使ってみましょう。

6. 具体的なコードを後から実装することを示すために、TODOアノテーションを挿入してください。

    ```swift
    if decision == "Y" {
        print("OK! Exploring planet randomly...")
        // TODO: explore to random planet
    } else {
        print("OK, Please select a planet to explore...")
        // TODO: let the user select a planet to explore
    }
    ```

7. コーディングを整理するためのTODOが、ジャンプバーに追加されました。
ジャンプバーのリストをクリックすると、該当コードがハイライトされます。

# Step 3. ランループ

ユーザーが正しく入力するまで、対話を繰り返します。
そのためには、入力値を検証するWhileループを実装して、ユーザ入力が「YまたはN」になるまで「回答の入力」を求めます。

### このレッスンで学ぶこと

* ランループ構造の制御フロー
* Whileループ構文
* 論理否定演算子`!`
* 括弧`()`を使って、式をグループ化する
* 論理和演算子`||`と論理積演算子`&&`
* If-ElseIf-Else構文
* Switch構文

### プロジェクトの手順

実行ループ中に、ユーザーが異なる値を入力できるようにします。

1. `decision`の定義を「既定値が空文字の変数」に変更してください。

    ```swift
    var decision = ""
    decision = readLine()!

    if decision == "Y" {
        ...
    } else {
        ...
    }
    ```

2. ユーザーが「YまたはN」を入力するまでタスクを繰り返すWhileループを構築してください。

    ```swift
    while !(decision == "Y" || decision == "N") {
        decision = readLine()!
        if decision == "Y" {
            ...
        } else {
            ...
        }
    }
    ```

3. 「YでもNでもない入力」に対応できるように、条件分岐を改善してください。

    ```swift
    while !(decision == "Y" || decision == "N") {
        decision = readLine()!

        if decision == "Y" {
            print("OK! Exploring planet randomly...")
            // TOOD: travel to random planet
        } else if decision == "N" {
            print("OK, please select a planet to explore...")
            // TODO: let the user select a planet to visit
        } else {
            print("Sorry, I didn't get that.")
        }
    }
    ```

4. プログラムを実行してください。
「Y」または「N」が入力されるまで、プログラムがプロンプトを表示し続けることを観察してください。

It条件分岐構文と同じロジックを、Switch構文で記述します。

5. 条件が多岐にわたる場合は、Switch構文の方が読みやすくなることがあります。
If文をSwitch文に変更してください。

    ```swift
    while !(decision == "Y" || decision == "N") {
        decision = readLine()!

        switch decision {
        case "Y":
            print("Ok! Exploring planet randomly...")
            // TODO: explore to random planet
        case "N":
            print("Ok, please select a planet to explore...")
            // TODO: let the user select a planet to explore
        default:
            print("Sorry, I didn't get that.")
        }
    }
    ```

6. プログラムを実行してください。
コンソールと対話して、機能が維持されていることを観察してください。

# Step 4. 宇宙船のインスタンスを作成する

宇宙船をモデル化するために、新しいクラスを追加します。
そして、宇宙船クラスを初期化して、インスタンスを作成します。

### このレッスンで学ぶこと

* Swiftクラスの新規ファイルを追加
* クラスを定義して、概念をモデル化する
* オブジェクト指向言語
* クラスの命名規則（Upper Camel Case）
* クラスのインスタンスを作成する初期化構文
* インスタンスのプロパティにアクセスする方法（ドットシンタックス）

### プロジェクトの手順

新しいクラスファイルを作成して、プロジェクトに追加します。

1. メニューバーから「File > New > File…」を選択してください。

2. 追加するファイルの種別を選択します。
macOSのSourceから「Swift File」を選択して、「Next」をクリックしてください。

3. ファイル名に「Spaceship.swift」と入力してください。

4. グループが「Spaceship」であること、ターゲットの「Spaceship」にチェックされていることを確認して、「Create」をクリックしてください。

5. エディタで編集するために、*Spaceship.swift* ファイルを開きます。
ファイルには「フレームワークの導入以外に、何も記述がない」ことを確認してください。

宇宙船をモデル化するクラスを定義します。

6. *Spaceship.swift* ファイルを選択してください。

7. `Spaceship`クラスを定義してください。
「パイロットの氏名」を示す定数プロパティも定義してください。

    ```swift
    import Foundation

    class Spaceship {
        let pilotName: String? = nil
    }
    ```

8. さらに、宇宙船の名前を示すプロパティを定数として定義してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
    }
    ```
    
9. パラメータとして「宇宙船の名前」を受け取るイニシャライザを実装してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
        
        init(name: String) {
            self.name = name
        }
    }
    ```

10. *main.swift* ファイルを選択してください。
`Spaceship`クラスのインスタンスを作成してください。

    ```swift
    let mySpaceship = Spaceship(name: "Millennium Falcon")
    ```

11. プログラムをコンパイルします。
そのためには、メニューバーから「Build」を選択してください。（ ⌘+B ）

# Step 5. インスタンスメソッド

インスタンスのメソッドを呼び出します。
コードを適切に抽象化すると、読みやすさと表現力が改善されます。

### このレッスンで学ぶこと

* `Foundation`フレームワーク
* インスタンスからメソッドを呼び出す
* `func`キーワード、メソッド名、空のパラメータリストを含むメソッド実装構文

### プロジェクトの手順

`Spaceship`クラスに`activate()`メソッドを実装します。

1. `Spaceship`クラスに`start()`メソッドを定義してください。

    ```swift
    class Spaceship {
        ...

        func activate() {
            // implementation to go for space.
        }
    }
    ```

2. *main.swift* にある既存のコードを、`activate()`メソッドの実装に移動してください。

    ```swift
    class Spaceship {
        ...

        func activate() {
            let numberOfPlanets = 8
            let diameterOfEarth = 12756.274

            print("Here is the solar system!")
            print("There are \(numberOfPlanets) planets to explore.")
            print("Diameter of The Earth is \(diameterOfEarth) km.")

            print("What is your name?")
            let yourName = readLine()!
            print("Hi, \(yourName).")

            print("Choose a planet to explore, randomly? (Y or N)")
            var decision = ""

            while !(decision == "Y" || decision == "N") {
                decision = readLine()!
    
                switch decision {
                case "Y":
                    print("Ok! Exploring planet randomly...")
                    // TODO: explore to random planet
                case "N":
                    print("Ok, please select a planet to explore...")
                    // TODO: let the user select a planet to explore
                default:
                    print("Sorry, I didn't get that.")
                }
            }
        }
    }
    ```

宇宙船を起動します。

3. `main.swift`ファイルを開いてください。
`Spaceship`インスタンスに対して、`activate()`メソッドを呼び出してください。

    ```swift
    import Foundation

    let mySpaceship = Spaceship(name: "Millennium Falcon")
    mySpaceship.activate()
    ```

    *main.swift* の役割は、「`Spaceship`インスタンスを作成して、宇宙船を起動する」だけになりました。
    *main.swift* のコードは以前よりも簡潔で、読みやすくなったことを理解してください。
    
4. プログラムを実行してください。
コンソールと対話して、既存の機能が失われていないことを確認してください。
    
# Step 6. コードの抽象化

`activate()`メソッドで行われるタスク（導入の出力、挨拶、探索する惑星の決定）を分割して、3つのメソッドに抽出します。
関連するコードや反復的なコードを適切な名前のメソッドに再編成し、その結果として得られるコードの表現力と可読性を分析します。
メソッドが、同じクラス定義内で定義された他のメソッドを呼び出す方法を発見します。

### このレッスンで学ぶこと

* `return`キーワードを発見し、呼び出し元に値を返すメソッドに適用する
* Swiftのメソッドパラメータがどのように宣言され、渡されるかを認識する
* Swiftコードのアクセスレベル（`public`、`internal`、`private`）
* メソッドの構文におけるパラメータの名前、型アノテーション、およびメソッドの返り値の型

### プロジェクトの手順

冗長なタスクを分割して、メソッドに抽出しましょう。

1. *Spaceship.swift* ファイルを選択してください。

2. `activate()`メソッドにある「最初の数行」を抽出して、新しいプライベートな`displayIntroduction()`メソッドを定義してください。
このメソッドの役割は「導入文を出力する」ことです。

    ```swift
    class Spaceship {
        ...
        
        func activate() {
            ...
        }

        private func displayIntroduction() {
            let numberOfPlanets = 8
            let diameterOfEarth = 12756.274

            print("Here is the solar system!")
            print("There are \(numberOfPlanets) planets to explore.")
            print("Diameter of The Earth is \(diameterOfEarth) km.")
        }    
    }
    ```

3. `activate()`メソッドの「コードが抽出された部分」を、`displayIntroduction()`メソッドの呼び出しに置き換えてください。

    ```swift
    class Spaceship {
        ...
        func activate() {
            displayIntroduction()
            ...
        }
    }
    ```

4. `activate()`メソッドでは`print()`関数と`readLine()`関数を使用して、「ユーザーに入力を促し、回答させる」ことが何度かあります。
「ユーザー入力を促し、回答した値を取得する」ためのプライベートな`responseToPrompt(_:)`メソッドを定義してください。

    ```swift
    private func responseToPrompt(_ prompt: String) -> String {
        print(prompt)
        return readLine()!
    }
    ```

5. `activate()`メソッドの「ユーザに入力を促し、回答した値を取得する」するコードを、`responseToPrompt(_:)`メソッドの呼び出しに置き換えてください。

    ```swift
    class Spaceship {
        ...
        
        func activate() {
            displayIntroduction()

            let yourName = responseToPrompt("What is your name?")
            print("Hi, \(yourName).")
            
            var decision = ""
            while !(decision == "Y" || decision == "N") {
                decision = responseToPrompt("Choose a planet to visit, randomly? (Y or N)")
                if decision == "Y" {
                    ...
                }
            }
        }
    }
    ```

6. `activate()`メソッドにある「挨拶する部分」のコードを抽出して、プライベートな`greeting`メソッドを定義してください。

    ```swift
    class Spaceship {
        ...
        
        func activate() {
            ...
        }

        private func greeting() {
            let yourName = responseToPrompt("What is your name?")
            print("Hi, \(yourName).")
        }
    }
    ```

7. `activate()`メソッドに残っているコードを抽出して、プライベートな`determineDestination()`メソッドを定義してください。

    ```swift
    class Spaceship {
        ...
        
        func activate() {
            ...
        }

        private func greeting() {
            ...
        }
        
        private func determineDestination() {
            var decision = "" // Activate with empty String
            
            while !(decision == "Y" || decision == "N") {
                decision = responseToPrompt("Choose a planet to visit, randomly? (Y or N)")
                if decision == "Y" {
                    ...
                }
            }
        }
    }
    ```

8. `activate()`メソッドを更新して、`greeting()`メソッドと`determineDestination()`メソッドを呼び出します。

    ```swift
    class Spaceship {
        ...

        func activate() {
            displayIntroduction()
            greeting()
            determineDestination()
        }
        ...
    }
    ```

9. プログラムを実行してください。
コンソールと対話して、機能が失われていないことを確認してください。

# Step 7. 太陽系のオブジェクト

星系をモデル化する構造体を定義します。

### このレッスンで学ぶこと

* 構造体を定義する
* プロパティを宣言する
* プロパティへのアクセス
* 初期化されたオブジェクトが変更されないことを示す`let`キーワード
* 構造体に自動的に提供される標準イニシャライザ
* イニシャライザと初期化の概念

### プロジェクトの手順

新しいファイルをプロジェクトに追加して、太陽系をモデル化する`PlanetarySystem`型を定義します。
そして、導入スクリプトで`PlanetarySystem`型インスタンスを作成します。

1. プロジェクトに新しいSwiftファイルを追加します。
ファイル名には「PlanetarySystem.swift」と入力してください。

2. *PlanetarySystem.swift* を開きます。
そこに、構造体として`PlanetarySystem`型を定義してください。

    ```swift
    struct PlanetarySystem {
        // collection of planets
    }
    ```

3. 「惑星系の名前」を示す`name`プロパティを、定数として定義してください。

    ```swift
    struct PlanetarySystem {
        let name: String
    }
    ```

    Swiftは自動的に、構造体にデフォルト・イニシャライザを提供します。
    そのため、クラスとは異なり、構造体にイニシャライザがなくてもエラーになりません。

4. `Spaceship`クラスに、太陽系を示す`PlanetarySystem`プロパティを追加してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
        let availablePlanetarySystem = PlanetarySystem(name: "Solar system")
        ...
    }
    ```

5. `displayIntroduction()`メソッドにある「数行のデモコード」を削除して、`availablePlanetarySystem`インスタンスの`name`プロパティを使用してください。

    ```swift
    private func displayIntroduction() {
        let numberOfPlanets = 8
        print("Here is the \(availablePlanetarySystem.name)!")
        print("There are \(numberOfPlanets) planets to explore.")
    }
    ```

6. プログラムを実行してください。
コンソールと対話して、「星系の名前」が正しく出力されていることを観察してください。

    ```console
    Here is the Solar system!
    There are 8 planets to explore.
    What is your name?
    ```

# Step 8. 惑星のオブジェクト

太陽系はいくつかの惑星が並ぶ「惑星のコレクション」です。
惑星をモデル化する`Planet`クラスを定義します。

### このレッスンで学ぶこと

* Xcodeドキュメント
* コードのクイックリファレンス
* 順序付きコレクションの配列
* 配列を表現するシンタックスシュガー
* 配列を表現する型パラメータ

`Array`型の`count`プロパティについて詳しくは、Swift Standard Libraryドキュメントを調べてください。（ XcodeメニューバーからHelp > Developer Documentation ）

### プロジェクトの手順

惑星をモデル化します。
`PlanetarySystem`型に「惑星のコレクション」を示す`planets`プロパティを追加します。

1. 新しいSwiftファイルとして「Planet.swift」を作成してください。

2. *Planet.swift* に、「惑星」をモデル化する構造体として`Planet`型を定義してください。

    ```swift
    struct Planet {
        // some information of planet
    }
    ```

3. *PlanetarySystem.swift* を開いてください。
`PlanetarySystem`型に「惑星のコレクション」を示す`planets`プロパティを追加します。

    ```swift
    struct PlanetarySystem {
        let name: String
        let planets: [Planet]
        ...
    }
    ```

    すると、`PlanetarySystem`のイニシャライザ呼び出しが「初期化手続きに期待されるパラメータ」と一致していないので、Xcodeはコンパイルエラー「Missing argument for parameter 'planets' in call」を報告します。

4. *Spaceship.swift* ファイルを開いてください。
`planetarySystem`イニシャライザの呼び出し方を、以下のように修正します。

    ```swift
    var availablePlanetarySystem = PlanetarySystem(name: "Solar System", planets: [Planet]())
    ```

今のところ、宇宙船が「探索できる惑星の数」は太陽系にある惑星だけです。
したがって、`PlanetarySystem`型に定義されている`planets`配列の`count`プロパティから取得できます。

5. `displayIntroduction()`メソッドの実装を更新します。
`PlanetarySystem.planets`の`count`プロパティから「探索可能な惑星の数」を取得してください。
さらに、`numberOfPlanets`定数は不要になったので、削除します。

    ```swift
    private func displayIntroduction() {
        let diameterOfEarth = 12756.274
        
        print("Here is the \(availablePlanetarySystem.name)!")
        print("There are \(availablePlanetarySystem.planets.count) planets to explore.")
        print("Diameter of The Earth is \(diameterOfEarth) km.")
    }
    ```

6. プログラムを実行します。
コンソールに「There are 0 planets to explore.（探索できる惑星がない）」と出力されることを観察してください。

    ```console
    Here is the Solar system!
    There are 0 planets to explore.
    Diameter of The Earth is 12756.274 km.
    What is your name?
    ```

# Step 9. 配列の可変性

太陽系に水星を追加します。
そのためには、惑星の配列に要素を追加します。

### このレッスンで学ぶこと

* クラスにプロパティを宣言する
* 引数があるイニシャライザを実装する
* 変数と定数を使い分ける
* インスタンスを配列に追加する
* Swiftの`Array.isEmpty`プロパティ
* プロパティの宣言、`let`の使用、型のアノテーションについて
* `var`と`let`がどのようにSwift配列の`mutability`と`immutability`をサポートするか

### プロジェクトの手順

`Planet`型にプロパティとイニシャライザを定義します。

1. *Planet.swift* ファイルを開きます。
`Planet`型に「惑星の名前」と「惑星の直径」を示す定数プロパティを追加してください。

    ```swift
    struct Planet {
        let name: String
        let diameter: Int
    }
    ```

2. *Spaceship.swift* ファイルを開きます。
`Spaceship`クラスに「探索できる惑星」を追加します。
イニシャライザを定義して、「水星」のインスタンスを作成し、「太陽系」の配列に追加してください。

    ```swift
    class Spaceship {
        ...

        init(name: String) {
            self.name = name
            let mercury = Planet(name: "Mercury", diameter: 4880)
            self.availablePlanetarySystem.planets.append(mercury)
        }
        ...
    }
    ```

    すると、`append()`メソッドは惑星インスタンスを追加できず、Xcodeはコンパイルエラー(Cannot use mutating member on immutable value: 'planets' is a 'let' constant)
    を報告します。
    これは、`PlanetarySystem`型において`planets`配列は定数として宣言されていることが原因です。

3. *PlanetarySystem.swift* を開きます。
`planets`プロパティの宣言に使用するキーワードを、`let`から`var`に修正してください。

    ```swift
    struct PlanetarySystem {
        let name: String
        var planets: [Planet]
        ...
    }
    ```

4. *Spaceship.swift* に戻ってください。
そして、エラー内容が「Mutating method 'append' may not be used on immutable value 'self.availablePlanetarySystem'」に変化していることに注目します。
これは、「`availablePlanetarySystem`プロパティが定数として宣言されている」ことが原因です。

5. *Spaceship.swift* を開きます。
そして、「宇宙船が探索できる星系」を示す`availablePlanetarySystem`プロパティの宣言を、変数に修正してください。

    ```swift
    class Spaceship {
        let name: String
        var availablePlanetarySystem = PlanetarySystem(...)
        ...
    }
    ```

6. プログラムを実行します。
コンソールの2行目が「There are 1 planets to explore.（探索する惑星が1つある）」になったことを観察してください。

    ```console
    Here is the Solar system!
    There are 1 planets to explore.
    Diameter of The Earth is 12756.274 km.
    What is your name?
    ```

# Step 10. 太陽系を作成する

太陽系に金星、地球、火星、木製、土星、天王星、海王星を追加します。

### このレッスンで学ぶこと

* オブジェクトのインスタンス化
* 引数の受け渡し
* 反復的なタスクを改善する
* 数値リテラルの整形された書式
* コードの外観を整える
* リファクタリング（コードを改善すること）

### プロジェクトの手順

`PlanetarySystem`型の`Planets`プロパティに、さらに惑星オブジェクトを追加します。

1. *Spaceship.swift* を開きます。
イニシャライザで、7つの惑星インスタンスを作成して、`planets`配列に追加してください。

    ```swift
    init(name: String) {
        self.name = name
        
        let mercury = Planet(name: "Mercury", diameter: 4_880)
        let venus   = Planet(name: "Venus",   diameter: 12_104)
        let earth   = Planet(name: "Earth",   diameter: 12_756)
        let mars    = Planet(name: "Mars",    diameter: 6_788)
        let jupiter = Planet(name: "Jupiter", diameter: 142_984)
        let saturn  = Planet(name: "Saturn",  diameter: 120_536)
        let uranus  = Planet(name: "Uranus",  diameter: 51_118)
        let neptune = Planet(name: "Neptune", diameter: 49_532)

        self.availablePlanetarySystem.planets.append(mercury)
        self.availablePlanetarySystem.planets.append(venus)
        self.availablePlanetarySystem.planets.append(earth)
        self.availablePlanetarySystem.planets.append(mars)
        self.availablePlanetarySystem.planets.append(jupiter)
        self.availablePlanetarySystem.planets.append(saturn)
        self.availablePlanetarySystem.planets.append(uranus)
        self.availablePlanetarySystem.planets.append(neptune)
    }
    ```

2. 「後で、反復タスクをリファクタリングする」ことを示すため、TODOコメントを記してください。
    
    ```swift
    init(name: String) {
        self.name = name

        // TODO: These codes are iterative.
        let mercury = Planet(name: "Mercury", diameter: 4_880)
        let planet1 = Planet(name: "Venus", diameter: 12_104)
        ...
    }
    ```

# Step 11. 探索を開始する

探索する惑星に出発します。
ユーザーが「探索する惑星」を指定できるようにして、その惑星に関する情報を出力します。

### このレッスンで学ぶこと

* SwiftのFor-Inループ構文
* 添え字構文で、配列の要素にアクセスする
* Ifステートメントのフロー制御構文
* メソッド宣言におけるラベルとパラメータ名、型アノテーションの構文
* For-Inループが暗黙的な定数オブジェクトを作成して、タスクを反復する

### プロジェクトの手順

`Spaceship`クラスにパラメータ付きメソッドを定義します。

1. *Spaceship.swift* ファイルを開いてください。
`Spaceship`クラスに`departure(to:)`メソッドを定義してください。
太陽系の惑星コレクションを反復して、「入力された惑星名」と一致する惑星を探し出します。

    ```swift
    private func departure(to planetName: String) {
        print("Arrived on \(planetName)!")
        for planet in availablePlanetarySystem.planets {
            if planetName == planet.name {
                print("The \(planet.name) has a diameter of \(planet.diameter) km.")
            }
        }
    }
    ```

2. `determineDestination()`メソッドの「ユーザーが"N"を入力した場合のコード」に注目します。
「入力された惑星名」を`departure(to:)`メソッドに渡すように変更してください。

    ```swift
    case "N":
        let planetName = responseToPrompt("OK, please select a planet to explore...")
        departure(to: planetName)
    ```

3. プログラムを実行してください。
名前を入力したら「N」を選択して、惑星名を入力します。
コンソールに「入力した惑星の情報」が表示されることを観察してください。

    ```console
    Here is the Solar system!
    There are 8 planets to explore.
    What is your name?
    Charlie
    Hi, Charlie.
    Let’s exploring the solar system!
    Choose a planet to visit, randomly? (Y or N)
    N
    OK, please select a planet to explore...
    Mercury
    Arrived on Mercury!
    The Mercury has a diameter of 4880 km.
    ```

# Step 12. ランダムに探索する

惑星をランダムに探索する方法を実装します。
ランタイム（実行時）エラーを解決します。
コンピュータプログラムの微妙な欠陥について議論し、問題と解決策を考察します。

### このレッスンで学ぶこと

* ランダムな整数を作成する
* 範囲をモデル化する`Range`型
* 配列の添え字
* `Int`型の`random(in:)`メソッド

`random(in:)`メソッドについて詳しくは、Xcode Documentationで調べてください。（ ⌘+shift+0 ）

### プロジェクトの手順

惑星をランダムに探索できるようにします。

1. *Spaceship.swift* を開いてください。
`determineDestination()`メソッドにあるIf文の「最初の分岐」に注目します。
太陽系コレクションの惑星をランダムに参照するように変更してください。

    ```swift
    case "Y":
        let upperBound = availablePlanetarySystem.planets.count
        let randomIndex = Int.random(in: 0..<upperBound)
        departure(to: availablePlanetarySystem.planets[randomIndex].name)
    ```

2. プログラムを実行します。
名前を入力し、「Y」を選択してください。
コンソールに「惑星の情報」がランダムに表示されることを観察してください。

3. 「太陽系に惑星がひとつもなかったらどうなるか」を検証します。
太陽系の惑星がゼロなのに「Y」を選択すると、「`upperBoud`がゼロになってしまい、範囲を正しく作成できない」ので、プログラムは実行時（ランタイム）にエラーを引き起こします。

    ```swift
    // Fatal error: Can't get random value with an empty range
    let upperBound = availablePlanetarySystem.planets.count
    let randomIndex = Int.random(in: 0..<upperBound)
    ```

# Step 13. ランタイムエラーを解決する

アプリケーション実行中に発生するエラーは、ランタイムエラーです。
実行時のランタイムエラーが発生すると、アプリケーションはクラッシュする恐れがあります。

ここでは、ランタイムエラーを解消するために、惑星をランダムに探索するための「3つの安全な方法」を実装します。
`PlanetarySystem`クラスに「ランダムな惑星」をカプセル化して、プログラムの設計を改善します。
無効な配列インデックスを防止することによって、ランタイムの安全性を改善します。
「惑星の配列」が空でない場合にのみ、探索を続行することによって、UX（User Experience）を改善します。

### このレッスンで学ぶこと

* プログラム設計
* ランタイムの安全性
* ユーザーエクスペリエンス
* 計算プロパティ
* オプショナル
* If-Letオプショナル・バインディング構文
* 列挙型のネスト

### プロジェクトの手順

ランタイムエラーを解決します。

1. *PlanetarySystem.swift* ファイルを開いてください。
「ランダムな惑星」を取得するための計算プロパティを定義してください。

    ```swift
    struct PlanetarySystem {
        let name: String
        var planets: [Planet]

        var randomPlanet: Planet? {
            guard !(planets.isEmpty) else { return nil }
            let randomIndex = Int.random(in: 0..<planets.count)
            return planets[randomIndex]
        }
    }
    ```

2. *Spaceship.swift* ファイルを開いて、`determineDestination()`メソッドに注目します。
「ランダムな惑星」を取得できた場合にだけ探索を続行するように、「Yのケース」を修正します。

    ```swift
    case "Y":
        if let randomPlanet = availablePlanetarySystem.randomPlanet {
            departure(to: randomPlanet.name)
        } else {
            print("No planet in this system...")
        }
    ```

「太陽系に惑星がひとつもなかったらどうなるか」を検証します。

3. 配列に惑星を追加するコードをコメントアウトします。

    ```swift
    class Spaceship {
        ...
        init(name: String) {
            self.name = name
            
            // TODO: These codes are iterative.
            let mercury = Planet(name: "Mercury", diameter: 4880)
            ...

            // self.availablePlanetarySystem.planets.append(mercury)
            // self.availablePlanetarySystem.planets.append(venus)
            // self.availablePlanetarySystem.planets.append(earth)
            // self.availablePlanetarySystem.planets.append(mars)
            // self.availablePlanetarySystem.planets.append(jupiter)
            // self.availablePlanetarySystem.planets.append(saturn)
            // self.availablePlanetarySystem.planets.append(uranus)
            // self.availablePlanetarySystem.planets.append(neptune)
        }
        ...
    }
    ```

4. プログラムを実行します。
名前を入力後、「Y」を選択してください。
ランタイムエラーは発生せずに、「この星系に惑星はありません」と出力されることを観察してください。

    ```console
    No planet in this system...
    ```

プログラムのユーザー体験を改善します。

5. 「探索可能な星系」に惑星が存在する場合にだけ、宇宙船を起動します。
`Spaceship`クラスにネストする形式で、宇宙船の状況を示す列挙型を定義してください。

    ```swift
    class Spaceship {
        ...

        enum Status {
            case notReady
            case standby
            case ready
        }
    }
    ```

6. `Spaceship`クラスに、状況を返す計算プロパティを定義してください。

    ```swift
    class Spaceship {
        var pilot: String? = nil
        let name: String
        var availablePlanetarySystem = PlanetarySystem(...)

        var status: Status {
            if availablePlanetarySystem.planets.isEmpty {
                return .notReady
            } else {
                return .ready
            }
        }
        ...
    }
    ```

7. `activate()`メソッドの実装を更新してください。

    ```swift
    class Spaceship {
        ...

        func activate() {
            displayIntroduction()
            assignPilot()
            if status == .ready {
                print("\(name) is ready!")
                determineDestination()
            } else {
                print("System is not ready...")
            }
        }
        ...
    }
    ```

8. プログラムを実行します。
今度は、名前を入力すると、即座にプログラムが終了することを確認してください。

    ```console
    Here is the Solar system!
    There are 0 planets to explore.
    What is your name?
    Charlie
    
    Hi, Charlie.
    System is not ready...    
    ```

9. イニシャライザのコードをコメント解除（ ⌘+/ ）して、元の状態に戻してください。
プログラムを実行してください。
ランダムに惑星を探索できるようになったことを確認してください。

# Step 14. オブジェクトの結合レベル

探索の開始を改善して、よりシンプルにします。
既存コードの潜在的な設計上の制約を認識します。

### このレッスンで学ぶこと

* プロパティ宣言
* イニシャライザ
* オブジェクトのインスタンス化
* 参照型データと値型データ

### プロジェクトの手順

`Spaceship`と`PlanetarySystem`の結合レベルを小さくするために、*main.swift* で`PlanetarySystem`を作成します。
`Spaceship`クラスのイニシャライザに「探索する星系」を提供します。
`Spaceship`クラスのイニシャライザから「惑星に関するコード」を抽出します。

1. *Spaceship.swift* ファイルを開いてください。
宇宙船のイニシャライザにある反復コードを、*main.swift* ファイルのトップレベルに抽出してください。

    ```swift
    import Foundation

    // TODO: These codes are iterative.
    let mercury = Planet(name: "Mercury", diameter: 4_880)
    let venus = Planet(name: "Venus", diameter: 12_104)
    ...
    availablePlanetarySystem.planets.append(mercury)
    availablePlanetarySystem.planets.append(venus)
    ...
    ```

    すると、*main.swift* ファイルで、エラー「Cannot find ’availablePlanetarySystem’ in scope」が報告されます。

2. 「惑星の配列」を作成して、「惑星インスタンス」を追加してください。

    ```swift
    // TODO: These codes are iterative.
    let mercury = Planet(name: "Mercury", diameter: 4880)
    let venus   = Planet(name: "Venus",   diameter: 12_104)
    let earth   = Planet(name: "Earth",   diameter: 12_756)
    let mars    = Planet(name: "Mars",    diameter: 6_788)
    let jupiter = Planet(name: "Jupiter", diameter: 142_984)
    let saturn  = Planet(name: "Saturn",  diameter: 120_536)
    let uranus  = Planet(name: "Uranus",  diameter: 51_118)
    let neptune = Planet(name: "Neptune", diameter: 49_532)

    var planets = [Planet]()
    planets.append(mercury)
    planets.append(venus)
    planets.append(earth)
    planets.append(mars)
    planets.append(jupiter)
    planets.append(saturn)
    planets.append(uranus)
    planets.append(neptune)
    ```

3. *Spaceship.swift* ファイルを開いてください。
そして、`availablePlanetarySystem`プロパティの宣言に注目します。
`PlanetarySystem`インスタンスの既定値を削除して、型アノテーションを明示してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
        var availablePlanetarySystem: PlanetarySystem
        ...
    }
    ```

4. `Spaceship`クラスのイニシャライザに「`PlanetarySystem`型のパラメータ」を追加してください。

    ```swift
    init(name: String, availablePlanetarySystem: PlanetarySystem) {
        self.name = name
        self.availablePlanetarySystem = availablePlanetarySystem
    }
    ```

5. *main.swift* ファイルを開いてください。
`PlanetarySystem`インスタンスを作成して、`SpaceAdventure`のイニシャライザに渡してください。

    ```swift
    ...

    var planets = [Planet]()
    planets.append(mercury)
    planets.append(venus)
    ...
    planets.append(neptune)

    let planetarySystem = PlanetarySystem(name: "Solar system", planets: planets)
    let mySpaceship = Spaceship(name: "Millennium Falcon", availablePlanetarySystem: planetarySystem)
    mySpaceship.activate()
    ```

6. *PlanetarySystem.swift* を開きます。
`planets`プロパティは初期化手続きで既定値が設定されると、以降は変更されないので定数にしてください。

    ```swift
    struct PlanetarySystem {
        let name: String
        let planets: [Planet]       // var -> let
        var randomPlanet: Planet? {...}
    }
    ```

7. プログラムを実行します。
機能が失われていないことを確認してください。

# Step 15. リファクタリング

惑星インスタンスを初期化する際の「反復コード」をリファクタリングします。
データ構造を使って、コード内の繰り返しパターンを削減します。

### このレッスンで学ぶこと

* Swiftの辞書型、キー・値のデータ構造
* 配列の`map`メソッド
* クロージャ記法
* クロージャの省略記法
* 末尾クロージャ

`Dictionary`型について詳しくは、Xcode DocumentationでSwift Standard Library ドキュメントを調べてください。

### プロジェクトの手順

冗長なコードを削減します。

1. *main.swift* を開いてください。
TODOコメントと惑星インスタンスを作成するコードを削除して、代わりに「惑星情報の辞書」を定義してください。

    ```swift
    let planetData = [ "Mercury" : 4_880,
                       "Venus"   : 12_104,
                       "Earth"   : 12_756,
                       "Mars"    : 6_788,
                       "Jupiter" : 142_984,
                       "Saturn"  : 120_536,
                       "Uranus"  : 51_118,
                       "Neptune" : 49_532 ]
    ```

2. 惑星インスタンスを「惑星のコレクション」に追加する反復コードをFor-inループに置き換えてください。

    ```swift
    ...

    var planets = [Planet]()
    for (key, value) in planetData {
        let newPlanet = Planet(name: key, diameter: value)
        planets.append(newPlanet)
    }

    let planetarySystem = PlanetarySystem(name: "Solar system", planets: planets)
    ...
    ```

3. プログラムを実行して、機能が失われていないことを確認してください。

配列の`map`メソッドを使って、コレクション内の値に基づいたコレクションを新たに作成します。

4. 配列のインスタンス化とFor-inループのコードを、`map`クロージャに置き換えてください。

    ```swift
    let planets = planetData.map { (key: String, value: Int) -> Planet in
        return Planet(name: key, diameter: value)
    }
    ```

5. クロージャの記述は、より簡潔に最適化できます。
パラメータと返り値の宣言、キーワードを省略してください。

    ```swift
    let planets = planetData.map { Planet(name: $0, diameter: $1) }
    ```

6. プログラムを実行して、機能が失われていないことを観察してください。
