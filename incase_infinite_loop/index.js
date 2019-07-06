const killWorker = msg => {
  document.write(`<h1>${msg}</h1>`);
  w.terminate();
  w = undefined;
  clearTimeout(timer);
};

const timer = setTimeout(() => {
  // 防止死循环
  killWorker("*** 运行超时😵");
}, 3000);

let w = new Worker("./code.js");
document.write(`<h1>运行中...🕙</h1>`);

// =========== test =========
const wrongMsg = (ans, target, index) => {
  console.log("*** wrong:", index);
  console.log("* target: ", target);
  console.log("* ans: ", ans);
};

/**
 *
 * @param {ListNode} ans：输入的answer
 * @param {ListNode} target：答案
 * @param {number} index：报错标记符
 * @returns {boolean}
 */
const ensure = (ans, target, index) => {
  if (ans === target) {
    return true;
  } else {
    wrongMsg(ans, target, index);
    return false;
  }
};

const TEST_DATA = [
  {
    inputs: [2, 2],
    target: 4
  },
  {
    inputs: [1, 2],
    target: 3
  }
];

// ========== test ===========
const test = () => {
  for (let index = 0; index < TEST_DATA.length; index++) {
    const test = TEST_DATA[index];
    const l1 = test.inputs[0];
    const l2 = test.inputs[1];

    w.postMessage({ method: "start", data: [l1, l2] });
  }
};

let testIndex = 0;
// w.onmessage = function(event) {
//   const ans = event.data;
//   const test = TEST_DATA[testIndex];
//   const result = ensure(ans, test.target, testIndex);
//   if (!result) {
//     killWorker("*** 不对哦😶");
//   }
//   testIndex++;
//   if (testIndex === TEST_DATA.length) {
//     killWorker("✅你超棒的！！✅");
//   }
// };

// ========== main ===========
const __main__ = () => {
  test();
};
__main__();
