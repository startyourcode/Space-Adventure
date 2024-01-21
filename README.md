# Space-Adventure

# Step 1

* 新しいXcodeプロジェクトを作成する
* `print()`関数を使って、文字列リテラルを出力する
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

プロジェクトを作成しましょう。

1. Xcodeを起動してください。

2. 新しいプロジェクトを作成するために、「Create a new Xcode project」を選択してください。

3. 作成するアプリケーションの種類を選択します。
macOSのApplicationテンプレートから「Command Line Tool」を選択して、「Next」をクリックしてください。

4. 作成するプロジェクトの設定を行います。
「Product Name」にプロジェクト名を入力してください。
「Language」がSwiftになっていることを確認して「Next」をクリックしてください。

5. Xcode上で行った作業は、自動的に保存されます。
プロジェクトの保存場所を選択して、「Create」をクリックしてください。
ナビゲータエリアとエントリーポイントを見てみましょう。

6. ナビゲータエリアに注目して、プロジェクトナビゲータが選択されていることを確認してください。

7. *main.swift* は、このプログラムのエントリーポイント（開始点）です。
*main.swift* ファイルを選択してください。

8. プログラムを実行するために、メニューバーの「Run」ボタンをクリックしてください。

9. プログラムの実行結果は、コンソールエリアに表示されます。
`"Hello world!"`と出力されることを観察してください。

    ```console
    Hello, World!
    ```

コードを書いてみましょう。

10. 文字列リテラル`"Hello World!"`を、以下のように変更してください。

    ```swift
    print("Here is the solar system!")
    ```

11. 「太陽系に存在する惑星の数」と「地球の直径」を示す2つの定数を宣言してください。

    ```swift
    print("Here is the solar system!")

    let numberOfPlanets: Int = 8
    let diameterOfEarth: Double = 12756.274
    ```
    
12. 宣言した定数を使って、文字列を補間してください。

    ```swift
    print("There are \(numberOfPlanets) planets to explore.")
    print("Diameter of The Earth is \(diameterOfEarth) km.")
    ```
    
13. プログラムを実行しください。（ ⌘+R ）

14. コンソールに「3行の文字列」が出力されることを観察してください。（ ⌘+C ）

    ```console
    Here is the solar system!
    There are 8 planets to explore.
    Diameter of The Earth is 12756.274 km.
    ```
    
コードをより簡潔に記述しましょう。

15. 定数宣言の型アノテーションを省略してください。

    ```swift
    let numberOfPlanets = 8
    let diameterOfEarth = 12756.274
    ```

16. プログラムを実行してください。

17. 以前と同じように、プログラムが正しく動作することを観察してください。

# Step 2

### このレッスンで学ぶこと

ユーザーが入力した名前に対して、挨拶します。
ユーザーの選択に応じたコードを実行して、適切な結果を表示します。

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

1. プログラムを実行中のユーザーに氏名を入力するように促します。
ユーザがコンソールで入力した値を取得するために、`readLine()`関数を使用してください。

    ```swift
    print("What is your name?")
    let yourName = readLine()!
    print("Hi, \(yourName).")
    ```

2. プログラムを実行してください。

3. コンソール上で対話して、「入力された名前に対する挨拶」が出力されることを観察してください。

    ```console
    What is your name?
    Charlie
    Hi, Charlie.
    ``

ユーザーの意思に基づいて、探索する方法を決定しましょう。

4. ユーザーに「惑星をランダムに探索するかどうか」を確認するために、`readLine()`関数を使用してください。

    ```swift
    print("Choose a planet to explore, randomly? (Y or N)")
    let decision = readLine()!
    ```

5. `decision`定数に基づいて、「どのようなタスクを実行するか」を判断するIf-else構文を実装してください。

    ```swift
    if decision == "Y" {
        print("Ok! Exploring planet randomly...")
    } else {
        print("Ok, please select a planet to explore...")
    }
    ```

6. プログラムを実行してください。

7. コンソール上で対話し、「YまたはN」を入力してそれぞれの出力を観察してください。
    
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

8. 具体的なコードを後から実装することを示すために、TODOアノテーションを挿入してください。

    ```swift
    if decision == "Y" {
    print("Ok! Exploring planet randomly...")
    // TODO: explore to random planet
    } else {
    print("Ok, please select a planet to explore...")
    // TODO: let the user select a planet to explore
    }
    ```

9. コーディングを整理するためのTODOが、ジャンプバーに追加されました。
ジャンプバーのリストをクリックすると、該当コードがハイライトされます。

# Step 3

### このレッスンで学ぶこと

入力値を検証するWhileループを実装して、ユーザ入力が「YまたはN」になるまで「回答の入力」を求めます。

* ランループ構造の制御フロー
* Whileループ構文
* 論理否定演算子`!`
* 括弧を使って、式をグループ化する
* 論理和演算子`||`と論理積演算子`&&`
* If-ElseIf-Else構文
* Switch構文

### プロジェクトの手順

ユーザーが正しく入力するまで、対話を繰り返しましょう。

1. 実行ループ中に、ユーザーが異なる値を入力できるようにします。
`decision`の定義を「既定値が空文字の変数」に変更してください。

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

5. 「YまたはN」が入力されるまで、プログラムがプロンプトを表示し続けることを観察してください。
Switch構文で記述してみましょう。

6. 条件が多岐にわたる場合は、Switch構文の方が読みやすくなることがあります。
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

7. プログラムを実行してください。

8. コンソールと対話して、機能が維持されていることを観察してください。

# Step 4

### このレッスンで学ぶこと

宇宙船をモデル化するために、新しいクラスを追加する
宇宙船クラスを初期化して、インスタンスを作成する

* プロジェクトにSwiftクラスの新規ファイルを追加する
* コンパイル時のエラーに対処する
* アプリケーションが複数のソースコードファイルで構成されること
* クラスを定義して、概念をモデル化する方法
* オブジェクト指向言語
* クラスの命名規則（Upper Camel Case）
* クラスのインスタンスを作成する初期化構文
* インスタンスのプロパティにアクセスする方法（ドットシンタックス）

### プロジェクトの手順

新しいクラスファイルを作成しましょう。

1. プロジェクトに、新しいSwiftクラスのファイルを追加します。
メニューバーから「File > New > File…」を選択してください。

2. 追加するファイルの種別を選択します。
macOSのSourceから「Swift File」を選択して、「Next」をクリックしてください。

3. ファイル名に「Spaceship.swift」と入力してください。

4. グループが「Spaceship」であること、ターゲットの「Spaceship」にチェックされていることを確認して、「Create」をクリックしてください。

5. ナビゲータエリアの *Spaceship.swift* に注目します。
エディタで編集するために、*Spaceship.swift* ファイルをクリックしてください。

6. *Spaceship.swift* ファイルには「フレームワークの導入以外に、何も記述がない」ことを確認してください。

宇宙船スペースエクスプローラーをモデル化しましょう。

7. *main.swift* ファイルを選択してください。

8. Spaceshipクラスのインスタンスを作成してみてください。

    ```swift
    let mySpaceship = Spaceship()
    ```

9. Spaceship型を定義していないので、そのインスタンスを作成できません。
Xcodeはコンパイル時にエラー「Cannot find ’Spaceship’ in Scope」を報告します。

10. 宇宙船をモデル化します。
*Spaceship.swift* ファイルを選択してください。

11. `Spaceship`型をクラスとして定義してください。
「パイロットの氏名」を示すプロパティも定義してください。

    ```swift
    import Foundation

    class Spaceship {
        let pilotName: String? = nil
    }
    ```

12. `Spaceship`型が定義されたので、*main.swift* ファイルのエラーは解消します。
プログラムをコンパイルするために、メニューバーから「Build」を選択してください。（ ⌘+B ）

13. さらに、宇宙船の名前を示すプロパティを定数として定義してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
    }
    ```

14. Xcodeはコンパイル時にエラー「Class ’Spaceship’ has no initializers」を報告します。

15. パラメータとして「宇宙船の名前」を受け取るイニシャライザを実装してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
        
        init(name: String) {
            self.name = name
        }
    }
    ```

16. *main.swift* を選択してください。

17. 宇宙船のイニシャライザ呼び出しを修正してください。

    ```swift
    let mySpaceship = Spaceship(name: "Millennium Falcon")
    ```

# Step 5

### このレッスンで学ぶこと

* 未定義のメソッドを呼び出して、エラーを引き起こす
* `Spaceship`クラスに`activate()`メソッドを実装する
* 読みやすさと表現力によって、コードは適切に抽象化される
* `Foundation`フレームワーク
* インスタンスからメソッドを呼び出す
* `func`キーワード、メソッド名、空のパラメータリストを含むメソッド実装構文
* クラスのインスタンスは、「自身のインターフェイス」に定義されたメソッドの呼び出しに応答できる
* コンパイルエラー

### プロジェクトの手順

インスタンスのメソッドを呼び出しましょう。

1. 宇宙船を起動します。
`Spaceship`インスタンスに対して、`activate()`メソッドを呼び出してみてください。

    ```swift
    mySpaceship.activate()
    ```

2. `activate()`メソッドは定義されていないので、呼び出すことはできません。
Xcodeはコンパイル時にエラー「Value of type ’Spaceship’ has no member ’activate’」を報告します。

3. `Spaceship`クラスに`start()`メソッドを定義してください。

    ```swift
    class Spaceship {
        ...
        func activate() {
            // implementation to go for space.
        }
    }
    ```

4. プログラムをビルドして、*main.swift* ファイルのエラーは解消することを確認してください。
宇宙船を発進しましょう。

5. *main.swift* の既存のコードを、`activate()`メソッドの実装に移動してください。

    ```swift
    func activate() {
        print("Here is the solar system!")
        ...
        while !(decision == "Y" || decision == "N") {...}
    }
    ```

6. プログラムを実行してください。

7. コンソールと対話して、既存の機能が失われていないことを確認してください。

8. *main.swift* のコードに注目します。
以前と比較して、より簡潔で読みやすくなったことを理解してください。

9. *main.swift* の役割は、「`Spaceship`インスタンスを作成して、発進を指示する」ことだけになりました。

    ```swift
    import Foundation

    let mySpaceship = Spaceship(name: "Millennium Falcon")
    mySpaceship.activate()
    ```
    
# Step 6

### このレッスンで学ぶこと

`activate()`メソッドで行われるタスク（導入の出力、挨拶、探索する惑星の決定）を分割して、3つのメソッドに抽出します。
関連するコードや反復的なコードを適切な名前のメソッドに再編成し、その結果として得られるコードの表現力と可読性を分析します。
メソッドが、同じクラス定義内で定義された他のメソッドを呼び出す方法を発見します。

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
    private func displayIntroduction() {
        let numberOfPlanets = 8
        let diameterOfEarth = 12756.274 // In km
        print("Here is the solar system!")
        print("There are \(numberOfPlanets) planets to explore.")
        print("Diameter of The Earth is \(diameterOfEarth) km.")
    }
    ```

3. `activate()`メソッドの「コードが抽出された部分」を、`displayIntroduction()`メソッドの呼び出しに置き換えてください。

    ```swift
    class Spaceship {
        ...
        func activate() {
            displayIntroduction()
            ...
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
    func activate() {
        displayIntroduction()
        pilotName = responseToPrompt("What is your name?")
        print("Hi, \(pilotName!).")
        
        var decision = ""
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt("Choose a planet to visit, randomly? (Y or N)")
            if decision == "Y" {
                ...
            }
        }
    }
    ```

6. `activate()`メソッドにある「挨拶する部分」のコードを抽出して、プライベートな`greeting`メソッドを定義してください。

    ```swift
    private func assignPilot() {
        pilotName = responseToPrompt("What is your name?")
        print("Hi, \(pilotName!).")
    }
    ```

7. `activate()`メソッドに残っているコードを抽出して、プライベートな`determineDestination()`メソッドを定義してください。

    ```swift
    private func determineDestination() {
        var decision = "" // Activate with empty String
        
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt("Choose a planet to visit, randomly? (Y or N)")
            if decision == "Y" {
                ...
            }
        }
    }
    ```

8. `activate()`メソッドを更新して、`greeting()`メソッドと`determineDestination()`メソッドを呼び出します。

    ```swift
    func activate() {
        displayIntroduction()
        assignPilot()
        determineDestination()
    }
    ```

9. プログラムを実行してください。

10. コンソールと対話して、機能が失われていないことを確認してください。

# Step 7

### このレッスンで学ぶこと

新しいファイルをプロジェクトに追加して、太陽系をモデル化する`PlanetarySystem`型を定義します。

* 太陽系をモデル化する`PlanetarySystem`型に「惑星のコレクション」を定義する
* 導入スクリプトにおいて、`PlanetarySystem`のインスタンスを作成する
* 構造体を実装する
* プロパティを宣言する
* インスタンス化の際に、オブジェクトのプロパティに既定値を代入するイニシャライザ
* インライン代入によるプロパティの初期化
* インスタンス化
* プロパティへのアクセス
* プロパティの宣言構文、型のアノテーション
* 初期化されたオブジェクトの名前が変更されないことを示す`let`キーワード
* 構造体を定義すると、自動的に標準イニシャライザが提供される
* イニシャライザはインスタンスの作成が完了するまでに、すべてのプロパティに既定値を割り当てる
* イニシャライザと初期化の概念

### プロジェクトの手順

星系をモデル化する構造体を定義しましょう。

1. プロジェクトに新しいSwiftファイルを追加します。
ファイル名には「PlanetarySystem.swift」と入力してください。

2. 追加した *PlanetarySystem.swift* に、`PlanetarySystem`型を構造体として定義してください。

    ```swift
    struct PlanetarySystem {
        // collection of planets
    }
    ```

3. 「惑星系の名前」を示す`name`プロパティを定数として定義してください。

    ```swift
    struct PlanetarySystem {
        let name: String
    }
    ```

4. クラスとは異なり、定義した構造体にイニシャライザが実装されていなくてもエラーになりません。
Swiftはデフォルト・イニシャライザを自動的に提供します。

5. `Spaceship`クラスの定義に、太陽系を示す`PlanetarySystem`プロパティを追加してください。

    ```swift
    class Spaceship {
        var pilotName: String? = nil
        let name: String
        let availablePlanetarySystem = PlanetarySystem(name: "Solar system")
        ...
    }
    ```

6. `displayIntroduction()`メソッドにある「数行のデモコード」を削除して、`availablePlanetarySystem`インスタンスの`name`プロパティを使用してください。

    ```swift
    private func displayIntroduction() {
        let numberOfPlanets = 8
        print("Here is the \(availablePlanetarySystem.name)!")
        print("There are \(numberOfPlanets) planets to explore.")
    }
    ```

7. プログラムを実行してください。

8. コンソールと対話して、「星系の名前」が正しく出力されていることを観察してください。

    ```console
    Here is the Solar system!
    There are 8 planets to explore.
    What is your name?
    ```

# Step 8

### このレッスンで学ぶこと

* `PlanetarySystem`型に「惑星のコレクション」を示すプロパティを追加する
* 惑星をモデル化する`Planet`クラスを定義する
* Xcodeドキュメント
* コードのクイックリファレンス
* 順序付きコレクションの配列
* コレクションの概念
* 配列を表現するシンタックスシュガー
* 配列を表現する型パラメータ
* 太陽系は「惑星のコレクション」

### プロジェクトの手順

惑星をモデル化します。

1. `PlanetarySystem`型に、「惑星のコレクション」を示す`planets`プロパティを追加します。

    ```swift
    struct PlanetarySystem {
        let name: String
        let planets: [Planet]
        ...
    ```

2. `[Planet]`型の配列を宣言しましたが、このプロジェクトに`Planet`型は定義されていません。
そのため、Xcodeはコンパイル時にエラー「Can not find type ’Planet’ in scope」を報告します。

3. プロジェクトに新しいSwiftファイルとして「Planet.swift」を追加してください。

4. *Planet.swift* に、「惑星」をモデル化する構造体として`Planet`型を定義してください。

    ```swift
    struct Planet {
        // some information of planet
    }
    ```

5. *Spaceship.swift* を選択してください。

6. 今度は、`PlanetarySystem`のイニシャライザ呼び出しが、「初期化手続きに期待されるパラメータ」と一致していないので、Xcodeはコンパイル時にエラー「Missing argument for parameter 'planets' in call」を報告します。

7. `planetarySystem`プロパティの値となるイニシャライザ呼び出しを変更してください。

    ```swift
    var availablePlanetarySystem = PlanetarySystem(name: "Solar System", planets: [Planet]())
    ```

8. この宇宙船が「探索できる惑星の数」は太陽系にある惑星だけです。
したがって、`PlanetarySystem`型に定義されている`planets`配列の`count`プロパティから取得できます。
`Array`型の`count`プロパティに関して、「Help > Developer Documentation」のSwift Standard Libraryドキュメントを調べてください。

9. `displayIntroduction()`メソッドの実装を更新します。
`PlanetarySystem.planets`プロパティから「探索可能な惑星の数」を取得してください。

    ```swift
    private func displayIntroduction() {
        print("Here is the \(availablePlanetarySystem.name)!")
        print("There are \(availablePlanetarySystem.planets.count) planets to explore.")
    }
    ```

10. プログラムを実行してください。

11. コンソールに「探索できる惑星」が正しく出力されることを観察してください。

    ```console
    There are 0 planets to explore.
    ```
    
# Step 9

### このレッスンで学ぶこと

* `Planet`クラスにプロパティとイニシャライザを定義する
* 配列に「惑星のオブジェクト」を追加する
* クラスにプロパティを宣言する
* 既存のコードを拡張して、新しい機能に対応する
* 引数があるイニシャライザを実装する
* 変数と定数を使い分ける
* インスタンスを配列に追加する
* Swiftの`Array.isEmpty`プロパティ
* プロパティの宣言、`let`の使用、型のアノテーションについて
* Swiftの配列が`mutable`と`immutable`をサポートしていること
* `var`と`let`がどのように`mutability`と`immutability`を示しているか
* `self`を使用して、オブジェクト自体を参照する

### プロジェクトの手順

太陽系に水星を追加します。

1. *Planet.swift* ファイルを選択してください。

2. `Planet`型に「惑星の名前」と「惑星の直径」を示す定数プロパティを追加してください。

    ```swift
    struct Planet {
        let name: String
        let diameter: Int
    }
    ```

3. *Spaceship.swift* ファイルを選択してください。

4. `Spaceship`に「探索できる惑星」を追加します。
イニシャライザを定義して、「水星」のインスタンスを作成し、「太陽系」の配列に追加してください。

    ```swift
    init(name: String) {
        self.name = name
        let mercury = Planet(name: "Mercury", diameter: 4880)
        self.availablePlanetarySystem.planets.append(mercury)
    }
    ```

5. `planets`配列は定数なので、惑星インスタンスを追加できません。
Xcodeはコンパイルエラー「Cannot use mutating member on immutable value: 'planets' is a 'let' constant」を報告します。

6. *PlanetarySystem.swift* を選択してください。

7. `planets`プロパティの宣言に使用するキーワードを、`let`から`var`に変更してください。

    ```swift
    struct PlanetarySystem {
        let name: String
        var planets: [Planet]
    ```

8. *Spaceship.swift* に戻って、エラー内容が「Mutating method 'append' may not be used on immutable value 'self.availablePlanetarySystem'」に変化していることに注目します。
これは、「宇宙船が探索できる星系は定数なので、`append()`メソッドは呼び出すことができない」ことを示しています。

9. 「宇宙船が探索できる星系」を示す`availablePlanetarySystem`プロパティの宣言を変数にしてください。

    ```swift
    class Spaceship {
        let name: String
        var availablePlanetarySystem = PlanetarySystem(...)
    ```

10. プログラムを実行してください。

11. コンソールに「探索する惑星が1つある」と、正しく出力されることを観察してください。

    ```swift
    Here is the Solar system!
    There are 1 planets to explore.
    ```

# Step 10

### このレッスンで学ぶこと

`PlanetarySystem`クラスの`Planets`プロパティに、さらに惑星オブジェクトを追加します。

* オブジェクトのインスタンス化
* 引数の受け渡し
* 反復的なタスクを改善する
* インスタンス名を変更するリファクタリング（リネーム機能）
* 数値リテラルの整形された書式
* コードの外観を整える
* リファクタリング（コードを改善すること）

### プロジェクトの手順

太陽系に金星、地球、火星、木製、土星、天王星、海王星を追加しましょう。

1. *Spaceship.swift* を開いてください。

2. イニシャライザで、7つの惑星インスタンスを作成して、`planets`配列に追加してください。

    ```swift
    init(name: String) {
        self.name = name
        
        let mercury = Planet(name: "Mercury", diameter: 4_880)
        let planet1 = Planet(name: "Venus", diameter: 12_104)
        let planet2 = Planet(name: "Earth", diameter: 12_756)
        let planet3 = Planet(name: "Mars", diameter: 6_788)
        let planet4 = Planet(name: "Jupiter", diameter: 142_984)
        let planet5 = Planet(name: "Saturn", diameter: 120_536)
        let planet6 = Planet(name: "Uranus", diameter: 51_118)
        let planet7 = Planet(name: "Neptune", diameter: 49_532)

        self.availablePlanetarySystem.planets.append(mercury)
        self.availablePlanetarySystem.planets.append(planet1)
        self.availablePlanetarySystem.planets.append(planet2)
        self.availablePlanetarySystem.planets.append(planet3)
        self.availablePlanetarySystem.planets.append(planet4)
        self.availablePlanetarySystem.planets.append(planet5)
        self.availablePlanetarySystem.planets.append(planet6)
        self.availablePlanetarySystem.planets.append(planet7)
    }
    ```

3. 反復タスクをリファクタリングする必要があることを示すため、TODOコメントを記してください。
    
    ```swift
    init(name: String) {
        self.name = name
        // TODO: These codes are iterative.
        let mercury = Planet(name: "Mercury", diameter: 4_880)
        let planet1 = Planet(name: "Venus", diameter: 12_104)
        ...
    ```

4. インスタンス名を変更する（コンテキストメニューから *Refactor* → *Rename* ）
    
    ```swift
        // TODO: These codes are iterative.
        let mercury = Planet(name: "Mercury", diameter: 4_880)
        let venus = Planet(name: "Venus", diameter: 12_104)
        let earth = Planet(name: "Earth", diameter: 12_756)
        let mars = Planet(name: "Mars", diameter: 6_788)
        let jupiter = Planet(name: "Jupiter", diameter: 142_984)
        let saturn = Planet(name: "Saturn", diameter: 120_536)
        let uranus = Planet(name: "Uranus", diameter: 51_118)
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

# Step 11

### このレッスンで学ぶこと

探索する惑星の指定をユーザーに要求して、その惑星に関する情報を出力します。
クラスにパラメータ付きメソッドを定義します。

* SwiftのFor-inループ構文
* 添え字構文で、配列の要素にアクセスする
* Ifステートメントのフロー制御構文
* メソッド宣言におけるラベルとパラメータ名、型アノテーションの構文
* For-inループが暗黙的な定数オブジェクトを作成して、タスクを反復する

# プロジェクトの手順

探索する惑星に出発する。

1. *Spaceship.swift* ファイルを開いてください。

2. `departure(to:)`メソッドを定義してください。
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

3. `determineDestination()`メソッドの「ユーザーが"N"を入力した場合のコード」に注目します。
「入力された惑星名」を`departure(to:)`メソッドに渡すように変更してください。

    ```swift
    case "N":
        let planetName = responseToPrompt("OK, please select a planet to explore...")
        departure(to: planetName)
    ```

4. プログラムを実行してください。

5. 名前を入力して、Nを選択して、惑星名を指定します。

6. コンソールに「惑星の情報」が表示されることを観察してください。

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

# Step 12

### このレッスンで学ぶこと

惑星をランダムに探索する方法を実装します。
ランタイム（実行時）エラーを解決します。
コンピュータプログラムの微妙な欠陥について議論し、問題と解決策を言い換えます。

* ランダムな整数を作成する
* 範囲をモデル化する`Range`型
* 配列の添え字
* `Int`型の`random(in:)`メソッド

### プロジェクトの手順

惑星をランダムに探索しましょう。

1. Xcode Documentationを使って、`random(in:)`メソッドを調べてください。（ ⌘+shift+0 ）

2. *Spaceship.swift* を開いてください。

3. `determineDestination()`メソッドにあるif文の「最初のブランチ」に注目します。
太陽系のコレクションに対して、ランダムなインデックスを参照するように変更してください。

```swift
case "Y":
let upperBound = availablePlanetarySystem.planets.count
let randomIndex = Int.random(in: 0..<upperBound)
departure(to: availablePlanetarySystem.planets[randomIndex].name)
```

4. プログラムを実行します。
名前を入力し、「Y」を選択してください。

5. コンソールに「惑星の情報」がランダムに表示されることを観察してください。
「太陽系に惑星がひとつもなかったらどうなるか」を検証しましょう。

6. `Spaceship`クラスのイニシャライザに注目します。
惑星インスタンスを「太陽系のコレクション」に追加するコードをコメントアウトしてください。（ ⌘+/ ）

```swift
// availablePlanetarySystem.planets.append(mercury)
// availablePlanetarySystem.planets.append(venus)
// availablePlanetarySystem.planets.append(earth)
...
```

7. プログラムを実行して、「任意の惑星」の名前を入力してください。

8. 「Y」を選択すると、プログラムは実行時（ランタイム）にエラーを引き起こします。

```console
Fatal error: Can't get random value with an empty range: file Swift/Integers.swift, line
2667
```

9. Xcodeツールバーの停止ボタンを押してプログラムを停止してください（ ⌘+ ）。
ランタイムエラーの原因を特定しましょう。

10. ランタイムエラーが発生した直前の行に、ブレークポイントを設定してください。

```swift
let upperBound = availablePlanetarySystem.planets.count
```

11. 再び、プログラムを実行してください。

12. 「Step into」ボタンをクリックして、1行ずつコードを実行する。

13. 「upperBoudがゼロであるため、範囲を正しく作成できない」ことが、ランタイムエラーの原因です。

# Step 13

### このレッスンで学ぶこと

惑星をランダムに探索するための「3つの安全な方法」を実装します。

* `PlanetarySystem`クラスに「ランダムな惑星」を提供させる（カプセル化を改善）
* 無効な配列インデックスを防止する（ランタイムの安全性を改善）
* 「惑星の配列」が空でない場合にのみ、探索を続行する（UXを改善）
* プログラム設計、ランタイムの安全性、ユーザーエクスペリエンスをソフトウェア品質に関連付ける。
* 計算プロパティを格納プロパティを使い分ける
* 計算プロパティの構文
* Swiftのオプショナル型
* If-Letオプショナル・バインディング構文
* 計算プロパティの構文と、そのプロパティがどのようにオプションの型を返し、その値がラップされていないときは、具体的なオブジェクトか`nil`になるか
* Swiftのオプショナル
* 列挙型をネストする

### プロジェクトの手順

ランタイムエラーを解決します。

1. プロジェクト・ナビゲータから *PlanetarySystem.swift* ファイルを開いてください。

2. 「ランダムな惑星」を取得するための計算プロパティを定義してください。

```swift
var randomPlanet: Planet? {
    guard !(planets.isEmpty) else { return nil }
    let randomIndex = Int.random(in: 0..<planets.count)
    return planets[randomIndex]
}
```
3. *Spaceship.swift* ファイルを開いて、`determineDestination()`メソッドに注目します。

4. 「ランダムな惑星」を取得できた場合にだけ探索を続行するように、「Yのケース」を修正します。

```swift
case "Y":
    if let randomPlanet = availablePlanetarySystem.randomPlanet {
        departure(to: randomPlanet.name)
    } else {
        print("No planet in this system...")
    }
```

5. プログラムを実行してください。

6. 先ほどと同じように、名前を入力してから「Y」を選択してください。

7. ランタイムエラーは発生せずに、「この星系に惑星はありません」と出力されることを観察してください。

```console
No planet in this system...
```

プログラムのユーザー体験を改善しましょう。

8. 「探索可能な星系」に惑星が存在する場合にだけ、宇宙船を起動します。
`Spaceship`クラスにネストする形式で、宇宙船の状況を示す列挙型を定義してください。

```swift
enum Status {
    case notReady
    case standby
    case ready
}
```

9. `Spaceship`クラスに、状況を返す計算プロパティを定義してください。

```swift
var availablePlanetarySystem = PlanetarySystem(...)
var status: Status {
    if availablePlanetarySystem.planets.isEmpty {
        return .notReady
    } else {
        return .ready
    }
}
```

10. `activate()`メソッドの実装を更新してください。

```swift
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
```

11. プログラムを実行してください。

12. 今度は、名前を入力すると、即座にプログラムが終了することを確認してください。

```console
    Here is the Solar system!
    There are 0 planets to explore.
    What is your name?
    Charlie
    Hi, Charlie.
    Program ended with exit code: 0
```

13. イニシャライザのコードをコメント解除（ ⌘+/ ）して、元の状態に戻してください。

14. プログラムを実行してください。

15. ランダムに惑星を探索できるようになったことを確認してください。

# Step 14

### このレッスンで学ぶこと

`Spaceship`と`PlanetarySystem`の結合レベルを小さくするために、*main.swift* で`PlanetarySystem`を作成します。
`Spaceship`クラスのイニシャライザに「探索する星系」を提供します。
`Spaceship`クラスのイニシャライザから「惑星に関するコード」を抽出します。
既存コードの潜在的な設計上の制約を認識します。
既存のコードを改善するためのリファクタリングします。

* プロパティ宣言
* イニシャライザ
* オブジェクトのインスタンス化
* 参照型データと値型データ

### プロジェクトの手順

探索の開始を改善して、よりシンプルにします。

1. *Spaceship.swift* ファイルを開いてください。

2. 宇宙船のイニシャライザにある反復コードを、*main.swift* ファイルのトップレベルに抽出してください。

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

3. *main.swift* ファイルでは、エラー「Cannot find ’availablePlanetarySystem’ in scope」が報告されます。

4. 「惑星の配列」を作成して、「惑星インスタンス」を追加してください。

```swift
let mercury = Planet(name: "Mercury", description: "The closest planet to the sun.")
let venus = Planet(name: "Venus", description: "Similar in size and mass to Earth.")
...
var planets = [Planet]()
planets.append(mercury)
planets.append(venus)
```

5. *Spaceship.swift* ファイルを開いて、`planetarySystem`プロパティ宣言を変更します。
`PlanetarySystem`インスタンスの割り当てを削除して、型アノテーションを明示してください。

```swift
class Spaceship {
    var pilotName: String? = nil
    let name: String
    var availablePlanetarySystem: PlanetarySystem
    ...
}
```

6. `Spaceship`クラスのイニシャライザに「`PlanetarySystem`型のパラメータ」を追加してください。

```swift
init(name: String, availablePlanetarySystem: PlanetarySystem) {
    self.name = name
    self.availablePlanetarySystem = availablePlanetarySystem
}
```

7. *main.swift* ファイルを開いてください。

8. `PlanetarySystem`インスタンスを作成して、`SpaceAdventure`のイニシャライザに渡してください。

```swift
var planets = [Planet]()
planets.append(mercury)
planets.append(venus)
…
let planetarySystem = PlanetarySystem(name: "Solar system", planets: planets)
let mySpaceship = Spaceship(name: "Millennium Falcon", availablePlanetarySystem: planetarySystem)
mySpaceship.activate()
```

9. プログラムを実行してください。

10. 機能が同じであることを確認してください。

11. *PlanetarySystem.swift* を開いてください。
`planets`プロパティは初期化手続きで既定値が設定されると、以降は変更されないので定数にしてください。

```swift
struct PlanetarySystem {
let name: String
let planets: [Planet]
var randomPlanet: Planet? {...}
```

# Step 15

### このレッスンで学ぶこと

惑星インスタンスを初期化する際の「反復コード」をリファクタリングします。
データ構造を使って、コード内の繰り返しパターンを削減します。

* Swiftの辞書型、キー・値のデータ構造
* 既存のコレクション内の値に基づいたコレクションの新たに作成する`map`関数
* クロージャ記法
* クロージャの省略記法
* 末尾クロージャ

### プロジェクトの手順

冗長なコードを削減します。

1. Xcode Documentationで、`Dictionary`型の Swift Standard Library ドキュメントを調べてください。

2. *main.swift* を開いてください。

3. TODOコメントと惑星インスタンスを作成するコードを削除して、代わりに「惑星情報の辞書」を定義してください。

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

4. 惑星インスタンスを「惑星のコレクション」に追加する反復コードをFor-inループに置き換えてください。

```swift
var planets = [Planet]()

for (key, value) in planetData {
    let newPlanet = Planet(name: key, diameter: value)
    planets.append(newPlanet)
}

let planetarySystem = PlanetarySystem(name: "Solar system", planets: planets)
```

5. プログラムを実行して、機能が失われていないことを確認してください。

6. 配列のインスタンス化とFor-inループを`map`クロージャに置き換えてください。

```swift
let planets = planetData.map { (key: String, value: Int) -> Planet in
    return Planet(name: key, diameter: value)
}
```

7. クロージャの記述は、より簡潔に最適化できます。
パラメータと返り値の宣言、キーワードを省略してください。

```swift
let planets = planetData.map { Planet(name: $0, diameter: $1) }
```

8. プログラムを実行して、機能が失われていないことを観察してください。

# Extra

* `Int`と`Double`のパラメータを受け付ける関数に`print()`関数を抽出して、画面上にメッセージを出力する。

* クラスと構造体の違いを調べ、`SpaceAdventure`クラスを構造体に置き換える。
* `SpaceAdventure`クラスをSwiftの構造体として再定義し、構造体がメソッドも実装できるかどうかを判断する。

* `PlanetarySystem`クラスに`numberOfPlanets`プロパティと簡易イニシャライザを追加する。
* `planetarySystem`プロパティの初期化を削除し、`planetarySystem`プロパティを初期化する`SpaceAdventure`イニシャライザを実装する。
* `planetarySystem`プロパティをオプショナルな`PlanetarySystem`として宣言し、値を持たない場合に対処する。

* `Planet`型オブジェクトが作成され、それを最初に定数に代入せずに`append`に渡されるように`SpaceAdventure`型イニシャライザを修正する。

* 惑星モデルを改善して、惑星が複数の衛星（月など）を持つことができるようにする。
* `displayIntroduction`メソッドを改善して、`planetarySystem.planets.count`の値に基づいて`"planet"`を正しく複数形（`"planets"`）で出力できるようにする。
* `visit`メソッドを改善して、無効な惑星名を入力した場合に処理する。

* 惑星系名と惑星データを外部プロパティリスト（.plistファイル）に保存する方法を検討する。
* コード内にリテラルの`String`値として存在するのではなく、データが外部から読み込まれるように修正する。
* ファイル、データベース、外部のウェブサービスから「惑星系の名前と惑星データ」を読み込むように *main.swift* を修正する。
* 惑星と隣接惑星間の関連付けを追加し、惑星から惑星へホップできるようにする。
* 宇宙船クラスを導入する
