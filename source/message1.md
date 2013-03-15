## 法律短訊-創作共用授權間的相容性問題與疑惑

### 相容性問題

在前幾期的程式人雜誌中，我們都有引用並修改了維基百科的文章，然後採用 [姓名標示、非商業性、相同方式分享] 的 CC 授權方式分享整本雜誌，後來我收到 jserv 兄的 email 之後，才知道原來維基百科是採用 [姓名標示、相同方式分享] 的授權，而且更慘的是，這兩個授權互不相容，不能修改後以另一個授權釋出。

在 [Remixing OER: A Guide to License Compatibility] 這篇文章中，Creative Commons 組織說明了 CC 授權的相容性，並且畫出了一個相容矩陣，如下圖所示。

![圖、CC 授權的相容性矩陣](../img/cc_matrix.jpg)

其中 BY-NC-SA 就是 [姓名標示、非商業性、相同方式分享] 授權，而 BY-SA 就是 [姓名標示、相同方式分享] 授權，而文章中對 BY-SA 授權的說明如下。

> This license lets others copy, share, modify and build upon your work even for commercial purposes, as long as they credit you and license new creations derived from your work under the same conditions.

由這段文字看來，SA (Share-Alike) 屬性的授權就必須用同樣授權進行分享，因此就不能將 BY-SA 改為 BY-NC-SA 授權分享了，雖然 BY-NC-SA 的分享條件事實上比 BY-SA 更嚴格。

### 前幾期授權錯誤的更正方式

由於 BY-SA 與 BY-NC-SA 兩者完全不能相容，因此本雜誌前兩期的做法，有些文章乃是修改自維基百科，然後整本雜誌標示 [姓名標示、非商業性、相同方式分享] 的方式就有錯誤了，因此筆者會將前兩期有修正自維基百科的文章改標示為 [姓名標示、相同方式分享] 授權，以更正此一錯誤。

這種方式我們目前認為應該可以符合 BY-SA 的授權規定，因為 BY-SA 的授權當中有下列描述：

> 「彙編」指文學或藝術創作的合集，例如百科全書及詩文選集，表演、錄音物或廣播，或除列舉於後述第1條第(h)項所列之著作以外的其他著作或保護標的。由於其內容之選擇與編排具有智慧創作性，且本著作於其中是以未經修改的完整形式，與一個或更多的作品，彼此間成為分離且獨立之著作，而共同彙集成的完整合集。為本授權條款之目的，構成彙編的著作，不會被視為改用作品（定義如上）。

而本雜誌基本上是一堆文章的彙編，因此我們將藉由此一方式修正前兩期的授權錯誤！

本期開始，「程式人雜誌」將採用與維基百科相容的 [姓名標示、相同方式分享] 授權，然後請投稿者盡可能用此一授權進行投稿，如果投稿者仍然覺得「非商業性」是必要條件的話，那我們將在該篇文章中單獨標示授權，以便盡可能的符合維基百科的授權規定。

### 筆者的疑惑

不過，筆者百思不解的一個問題是，為何 Lawrence Lessig 要用 Share-Alike 這個條件，將相容性鎖死，而不改用像 Share-Publicly (公開分享, SP) 這樣的條件呢？因為如果用 SP 取代 SA 的話，整個授權矩陣不就可以變成如下形式，授權間的相容性就會提高不少了阿！

原作＼改作       BY        BY-NC       BY-NC-ND  BY-NC-SP    BY-ND       BY-SP
-----------     -------   ---------   --------- ---------   -------     -------                    
BY              ○         ○           ○         ○           ○           ○   
BY-NC                     ○           ○         ○           
BY-NC-ND                          
BY-NC-SP                              ○         ○
BY-ND                                                  
BY-SP                                 ○         ○           ○           ○

由於筆者並非法律專家，也很難對「著作權法」目前的「合理使用」之範圍有明確的判斷力，但我們非常努力的想遵守「著作權法」與「創作共用」的規定，如果本雜誌在授權上仍有侵權問題的話，請來信告知，我們會盡可能符合法律規定。

另外、筆者希望知道這個問題答案的人，可以來信或留言告知上述問題的答案，以解筆者之惑阿！【本文由陳鍾誠撰寫】

[Remixing OER: A Guide to License Compatibility]:http://learn.creativecommons.org/wp-content/uploads/2009/10/cclearn-explanations-cc-license-compatability.pdf
