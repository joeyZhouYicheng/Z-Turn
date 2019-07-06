/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var testFunc = function(l1, l2) {
  // return l1 + l2;
  while (true) {
    console.log("=test=>", "死循环在此");
  }
};

// ======= worker ===========
onmessage = function(event) {
  const data = event.data;
  if (data.method === "start") {
    const ans = testFunc(data[0], data[1]);
    // postMessage(ans);
  } else if (data.method === "stop") {
    console.log("=test=>", "stop");
    this.close();
  }
};

// 在这里面异步调用close()
