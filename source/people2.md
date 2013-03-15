## LLVM編譯器基礎架構的靈魂人物-Chris Lattner

前一篇文章中，我們介紹了開放原始碼之父 Richard Stallman ，他所創造的 GNU 組織，設計出了 gcc 的整套編譯器與工具鏈，對開放原始碼世界造成非常深遠的影響。現在、我們將介紹 Apple 所採用新一代編譯器 LLVM 的重要靈魂人物：Chris Lattner。

2000年，Chris Lattner 自奧勒岡州波特蘭大學（University of Portland）計算機科學系畢業後，進入伊利諾伊大學厄巴納-香檳分校 (University of Illinois at Urbana-Champaign ) 就讀。在此期間，他與維克拉姆·艾夫（Vikram Adve）發起 LLVM 專案，並於2003年發表。

LLVM 的全名是 Low Level Virtual Machine，因為 LLVM 的設計的初始目標是為所有靜態及動態語言創造出動態的編譯技術，但後來 LLVM 不斷的擴大之後，專案範圍已經不再侷限於虛擬機，成為以編譯器為核心的一個基礎架構，包含編譯、連結、除錯等等相關工具，其原始碼採用 BSD 的授權協定。

現在 LLVM 已經單純成為一個縮寫標記，適用於 LLVM 底下的所有專案，包含 LLVM 中介碼(LLVM IR)、LLDB 除錯工具、LLVM C++ 標準函式庫等等。

2005年，蘋果公司僱用了 Chris Lattner 及他的團隊，目的是將 LLVM 帶入蘋果公司，創立編譯器團隊並改進蘋果系統的速度與品質，並且同時啟動了 Clang 這個子計畫，負責改進蘋果系統的主要開發語言 Objective-C (同時支援 C/C++)、將 LLVM 納入到蘋果開發工具 Xcode 中，並且開始孕育並培養 LLVM 的開放原始碼社群。

2010 年，ACM 組織的 SIGPLAN 團體頒贈了「程式語言軟體獎」(Programming Languages Software Award) 給 Chris Lattner，以表彰他在 LLVM 上的貢獻，

LLVM 目前支援 Ada、C、C++、D、Fortran 及 Objective-C 等語言，也有人寫了 Haskell 的 LLVM 編譯器。現在、LLVM 已經成為 GNU 編譯器工具鏈 gcc 的一個競爭方案。而且、由於 gcc 已經是個歷史悠久的專案了，相對的很多程式碼也會比較陳舊而難以維護，因此 LLVM 或許能取代 gcc 而成為未來開放原始碼領域的主要編譯工具也說不定，因為 LLVM 的架構感覺上比 gcc 更清楚，更容易維護。

LLVM 編譯器基本上屬於彈性的三層式編譯器架構，基本上可分為 Frontend (前端)、IR 與最佳化、Backend (後端) 等幾部分，這種方式可以有效的將「高階語言」與「目標語言」兩者分離開來，形成一個多對多的架構，會比較容易就可以加入新的高階語言，或者產生新的目標語言，此種架構如下圖所示。

![圖、典型的三層式編譯器架構](../img/RetargetableCompiler.png)

在編譯器領域，已經有不少人開始高度注意 LLVM 這個專案，並且實際在各個領域，您可以在 <http://llvm.org/docs/> 當中找到 LLVM 的相關技術資訊。

特別值得一提的是，筆者正在進行的「開放電腦計畫」這個企圖自行建立 「CPU、Assembler、Compiler、OS、虛擬機」的計畫中，原本進度稍嫌緩慢，但是在我大哥決定為此計畫的處理器 CPU0 寫一個 LLVM Backend 程式，並寫出了 [Tutorial: Creating an LLVM Backend for the Cpu0 Architecture] 這本書籍之後，就往前邁進了很多。有了 LLVM Backend 的技術，就讓我們有機會可以用標準的 C 語言將現成的小型作業系統，像是 UNIXv6、MINIX 或 RTThread 等作業系統，移植到 CPU0 上，以便完成整個計畫了。

### 參考文獻
* Chris Lattner's Homepage -- <http://www.nondot.org/sabre/>
* Chris Lattner -- <http://www.techcn.com.cn/index.php?doc-view-148143.html>
* LLVM 2.0 -- <http://www.youtube.com/watch?v=029YXzHtRy0>
* Mac OS X 背后的故事（八）三好学生Chris Lattner的LLVM编译工具链 -- <http://www.programmer.com.cn/9436/>
* <http://zh.wikipedia.org/wiki/LLVM>
* <http://en.wikipedia.org/wiki/Chris_Lattner>
* LLVM, Chris Lattner -- <http://www.aosabook.org/en/llvm.html>

[Tutorial: Creating an LLVM Backend for the Cpu0 Architecture]:http://jonathan2251.github.com/lbd/

【本文由陳鍾誠取材並修改自維基百科】

