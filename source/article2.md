## JavaScript (3) – Closure 與匿名函數 (作者：陳鍾誠)

在以下的程式中，我們同時展示了 JavaScript 當中的全域變數、區域變數與匿名函數、Closure 等機制。在本文中，我們會用這個程式逐步解釋一些 JavaScript 語言中重要但詭異的概念。

很多語言都有全域變數與區域變數之分，在 JavaScript 當中看來也是如此，但事實上 JavaScript 的全域變數其實只是最外層領域的區域變數而已，在瀏覽器當中，這個最外層領域就是 window，所以以下程式中最後一部分的 sum 與 windows.sum 都同樣是 8。

程式：closure.htm

```Html
<html>
<body>

<script type="text/javascript">
var sum = 0;
function add(x) {
  sum += x;
  document.write("typeof:x="+typeof x+" y="+typeof y+" z="+typeof z+" sum="+typeof sum+"<br/>");
  var y = 2;
  return function() {
    var z = x+y;
    document.write("value :x="+x+" y="+y+" z="+z+" sum="+sum+"<br/>");
    document.write("typeof:x="+typeof x+" y="+typeof y+" z="+typeof z+" sum="+typeof sum+"<br/><br/>");
  }
}

f = add(3);
f();

add(5)();

document.write("typeof:x="+typeof x+" y="+typeof y+" z="+typeof z+" sum="+typeof sum+"<br/><br/>");

</script>

<script type="text/javascript">
document.write("sum="+sum+" window.sum="+window.sum);
</script>

</body>
</html>
```

因此、JavaScript 可以說沒有全域變數的概念，全域變數的只不過是最外層物件的區域變數罷了。

在 JavaScript 每一層領域當中，都可以定義區域變數，例如在上述範例中，sum 是最外層變數，因此所有的程式區段都可以存取這個變數。

參數也是一種區域變數，像是 add(x) 當中的 x，也有領域慨念，其作用範圍僅適用於 add 裏面。而 add 當中所定義的區域變數 y，則只有在定義之後才會生效，因此其領域範圍是從 `var y=2;` 這行程式開始，一直到 add 函數結束為止。

JavaScript 當中的函數，可以沒有名稱，這種函數稱為匿名函數，像是上述範例的函數 add 中，就傳回了一個匿名函數，如下所示：

```JavaScript
function add(x) {
  sum += x;
  document.write("typeof:x="+typeof x+" y="+typeof y+" z="+typeof z+" sum="+typeof sum+"<br/>");
  var y = 2;
  return function() {
    var z = sum+x+y;
    document.write("value :x="+x+" y="+y+" z="+z+" sum="+sum+"<br/>");
    document.write("typeof:x="+typeof x+" y="+typeof y+" z="+typeof z+" sum="+typeof sum+"<br/><br/>");
  }
}
```

變數 z 是該匿名函數的區域變數，由於設定為 sum+x+y，因此存取了外層的 y、x 與更外層的 sum，領域的存取規則是內層可以存取外層的變數，但是外層卻不能存取內層的變數。

筆者認為，JavaScript 中的一個最特別且強大的特性，莫過於函數既可以塞給一般變數，也可以當參數傳遞。例如以下程式區段就是用 f 去接收 add(x) 函數所傳回來的匿名函數，然後再用 f() 函數去執行這個匿名函數而已。

```JavaScript
f = add(3);
f();

add(5)();
```

上列程式碼的最後一行 `add(5)()`，只不過是將這兩個動作合起來一起作，也就是呼叫 add(5) 後，傳回值是個匿名函數，然後再用「匿名函數()」這樣的方法呼叫函數，去執行該匿名函數而已。(這個功能有點像 C 當中的函數指標)

在上述的 closure.htm 程式中，還有個很特別的地方，就是這些匿名函數被傳回來後，就已經回到了最外層的領域範圍了 (window)，那麼當該匿名函數執行時，照理說由於 x, y 屬於內層 add 函數的區域變數，應該會存取不到才對，但為何程式執行結果卻都還是正常，沒有發生錯誤呢？

這牽涉到 JavaScript 當中一個非常特別的機制，稱為 Closure (閉包)。

閉包與 JavaScript 的領域 (Scope) 特性有關，因為 JavaScript 採用 Lexical Scope，也就是變數作用範圍依照程式定義時的上下文 (Context) 所決定，而不是根據執行時期的上下文所決定的。

因此，上述匿名函數所服從的領域規則，仍然是定義時的領域，也就是 add 函數的子領域，而不是執行時期 window 的子領域，因此仍然可以正確存取 x,y,z 等變數，不會發生錯誤。

(JavaScript 的語法到此已經大致說明完畢，在下一期當中，筆者會將焦點轉移到 JavaScript 在瀏覽器中的運用上，看看 JavaScript 的實際用途，我們下期見！)

### 參考文獻
* Node.js 中文電子書 » JavaScript 與 NodeJS -- <http://book.nodejs.tw/zh-tw/node_javascript.html#scope-closure>

